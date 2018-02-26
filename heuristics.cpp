#include "global.h"
#include "heuristics.h"

extern questionType questionSet[NO_OF_QUESTIONS];

void process_new_evidence(int index)
{
	int node=theNet.FindNode(questionSet[index].id);
	if(questionSet[index].result==CORRECT)
	{		theNet.GetNode(node)->Value()->SetEvidence(0);	}
	else if(questionSet[index].result==INCORRECT)
	{		theNet.GetNode(node)->Value()->SetEvidence(1);	}
	
	theNet.UpdateBeliefs();
}
double find_entropy()
{	//note that we are only calculating the entropy of the probabilty of Knowing the skills
	//the know state's index is 0
	double P_x; //this is the p(x='knows')
	double H_p_x=0; //H(p(x='knows') 
	for(int i=0;i<indexSkills.NumItems();i++)
	{	P_x=get_value(indexSkills[i],0,theNet);
		H_p_x+=(P_x * log(P_x));
	}
	return H_p_x;
}

double get_Heuristic_Value(int questionIndex)
{	double val1,val2,entropy,heuristic;
	int no_parents=0;

	//the parameter is the index of the question in the questionSet
	int node=theNet.FindNode(questionSet[questionIndex].id);

	//first set the evidence for the question if answered as Correct
	theNet.GetNode(node)->Value()->ClearEvidence();
	theNet.GetNode(node)->Value()->SetEvidence(0);
	theNet.UpdateBeliefs();
	val1=find_entropy();
	
	//second find the evidence for the question if answered as incorrect
	theNet.GetNode(node)->Value()->ClearEvidence();
	theNet.GetNode(node)->Value()->SetEvidence(1);
	theNet.UpdateBeliefs();
	val2=find_entropy();

	//revert the network to what it was before
	theNet.GetNode(node)->Value()->ClearEvidence();
	theNet.UpdateBeliefs();

	//find the number of links for the question node
	no_parents=theNet.NumParents(node);
	
	entropy=(val1+val2)/2;
	heuristic=(entropy * ( (log (no_parents+1 + MAX_ENTROPY))/MAX_ENTROPY)); 
	
	return heuristic;
}

int get_next_question()
{	//finds the heuristic for all the unattempted questions
	//and returns the question with the maximum entropy
	//returns -1 if there is unattempted question

	double max_val=0;
	int max_index=-1;
	double val;
	for(int i =0;i<NO_OF_QUESTIONS;i++)
	{	if(questionSet[i].result==NOT_ATTEMPTED)
		{	val=get_Heuristic_Value(i);
			if(val>=max_val)
			{	max_val=val;
				max_index=i;
			}
		}
	}
	return max_index;
}