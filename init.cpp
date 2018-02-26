#include "global.h"
#include "init.h"

questionType questionSet[NO_OF_QUESTIONS];
DSL_network theNet;
DSL_intArray indexSkills;

void init()
{	theNet.ReadFile("my_model.dsl");
	theNet.UpdateBeliefs();
	theNet.SetDefaultBNAlgorithm(DSL_ALG_BN_LAURITZEN);
	
	//initialize skill indexes....note there are six skills
	indexSkills.Add(theNet.FindNode("add")); //knowledge of addition
	indexSkills.Add(theNet.FindNode("sub")); //knowledge of subtraction
	indexSkills.Add(theNet.FindNode("mt")); //knowledge of multiplication
	indexSkills.Add(theNet.FindNode("cp")); //knowledge of comparison
	indexSkills.Add(theNet.FindNode("cd")); //knowledge of common denominator	
	indexSkills.Add(theNet.FindNode("cl")); //knowledge of cancelling out
	indexSkills.Add(theNet.FindNode("cmn")); //knowledge of conversion to mixed numbers
	indexSkills.Add(theNet.FindNode("cif")); //knowledge of conversion to improper fractions
	
	init_questions();
	//initialize the question set
}

void init_questions()
{
	strcpy_s(questionSet[0].id,5,"x1");
	strcpy_s(questionSet[1].id,5,"x2");
	strcpy_s(questionSet[2].id,5,"x3");
	strcpy_s(questionSet[3].id,5,"x4");
	strcpy_s(questionSet[4].id,5,"x5");
	strcpy_s(questionSet[5].id,5,"x6");
	strcpy_s(questionSet[6].id,5,"x7");
	strcpy_s(questionSet[7].id,5,"x8");
	strcpy_s(questionSet[8].id,5,"x9");
	strcpy_s(questionSet[9].id,5,"x10");

	strcpy_s(questionSet[0].optionA,20,"True");
	strcpy_s(questionSet[0].optionB,20,"False");
	strcpy_s(questionSet[1].optionA,20," 1/7");
	strcpy_s(questionSet[1].optionB,20," 1/6");
	strcpy_s(questionSet[2].optionA,20,"17/38");
	strcpy_s(questionSet[2].optionB,20,"11/38");
	strcpy_s(questionSet[3].optionA,20,"7/17");
	strcpy_s(questionSet[3].optionB,20,"8/17");
	strcpy_s(questionSet[4].optionA,20,"7+10/11");
	strcpy_s(questionSet[4].optionB,20,"1+8/11");
	strcpy_s(questionSet[5].optionA,20,"72/225");
	strcpy_s(questionSet[5].optionB,20,"72/15");
	strcpy_s(questionSet[6].optionA,20,"-3/5");
	strcpy_s(questionSet[6].optionB,20,"3/5");
	strcpy_s(questionSet[7].optionA,20,"True");
	strcpy_s(questionSet[7].optionB,20,"False");
	strcpy_s(questionSet[8].optionA,20,"7+8/13");
	strcpy_s(questionSet[8].optionB,20,"8+3/12");
	strcpy_s(questionSet[9].optionA,20,"1/121");
	strcpy_s(questionSet[9].optionB,20,"1/11");
	
	strcpy_s(questionSet[0].statement,40,"(14/17)>(18/25)");
	strcpy_s(questionSet[1].statement,40,"18/108");
	strcpy_s(questionSet[2].statement,40,"(15/19)-(19/38)");
	strcpy_s(questionSet[3].statement,40,"((4/17)+(3/34)-(4/68))*(68/17)");
	strcpy_s(questionSet[4].statement,40,"87/11");
	strcpy_s(questionSet[5].statement,40,"8/15*9/15");
	strcpy_s(questionSet[6].statement,40,"((16/80)-((18/90)*(70/14))+(5/25))");
	strcpy_s(questionSet[7].statement,40,"((18/72)*(48/12))<(17/51)");
	strcpy_s(questionSet[8].statement,40,"99/13");
	strcpy_s(questionSet[9].statement,40,"11/1331");

	questionSet[0].correctAnswer=OPTION_A;
	questionSet[1].correctAnswer=OPTION_B;
	questionSet[2].correctAnswer=OPTION_B;
	questionSet[3].correctAnswer=OPTION_A;
	questionSet[4].correctAnswer=OPTION_A;
	questionSet[5].correctAnswer=OPTION_A;
	questionSet[6].correctAnswer=OPTION_A;
	questionSet[7].correctAnswer=OPTION_B;
	questionSet[8].correctAnswer=OPTION_A;
	questionSet[9].correctAnswer=OPTION_A;
}