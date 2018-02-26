
#include <cstdlib>
#include <stdio.h>

using namespace std;

struct state{
    int goalbank[3];
    int startbank[3];
    struct state *parent;

    state(int Mg=0,int Cg=0,int Bg=0,int Ms=0,int Cs=0,int Bs=0)
    {   goalbank[0]=Mg;goalbank[1]=Cg;goalbank[2]=Bg;startbank[0]=Ms;startbank[1]=Cs;startbank[2]=Bs;
        parent=NULL;
    }

    bool operator==(struct state state2)
    {   bool equal=true;
        for(int i=0;i<3;i++)
        {   if(goalbank[i]!=state2.goalbank[i] || startbank[i]!=state2.startbank[i])
            {   equal=false;break;  }
        }
    return equal;
    }

};
typedef struct state state;

state *startState;
state *goalState;
bool visited[4][4][2][4][4][2]={false};


state * findNewState(state *st,int rule);
void propagate(state *st);

bool isValid(int Mg,int Cg,int Bg,int Ms,int Cs,int Bs);


int main(int argc, char** argv)
{

    startState=new state(0,0,0,3,3,1);
    startState->parent=NULL;
    visited[0][0][0][3][3][1]=true;

    propagate(startState);

    //print the order
    state *ss;
    ss=goalState;
    while(ss!=NULL)
    {   printf(" %d %d %d --",ss->goalbank[0],ss->goalbank[1],ss->goalbank[2]);
        printf(" %d %d %d \n",ss->startbank[0],ss->startbank[1],ss->startbank[2]);
        ss=ss->parent;
    }

    return 0;
}


void propagate(state *st)
{
    int rule=0;
    while(rule<5)
    {   state *newState=findNewState(st,rule);
        if(newState!=NULL)
        {   newState->parent=st;
            if(newState->goalbank[0]==3 && newState->goalbank[1]==3 && newState->goalbank[2]==1)//THE PROBLEM HAS BEEN SOLVEd
            {   goalState=newState;
                return;
            }
            else
            {       propagate(newState);    }
        }
        rule++;
    }
}

state * findNewState(state *st,int rule)
{
    int Mg=st->goalbank[0],Cg=st->goalbank[1],Bg=st->goalbank[2];
    int Ms=st->startbank[0],Cs=st->startbank[1],Bs=st->startbank[2];

    bool valid=false;
    switch(rule)
    {
        case 0 : //one cannibal moves
            if(Bg==0){Cg+=1;Cs-=1;}else{Cg-=1;Cs+=1;}
            break;
        case 1://one missionart moves
            if(Bg==0){Mg+=1;Ms-=1;}else{Mg-=1;Ms+=1;}
            break;
        case 2://1 missionary and 1 cannibal
            if(Bg==0){Cg+=1;Cs-=1;Mg+=1;Ms-=1;}
            else{Cg-=1;Cs+=1;Mg-=1;Ms+=1;}
            break;
        case 3://2 missionary
            if(Bg==0){Mg+=2;Ms-=2;}else{Mg-=2;Ms+=2;}
            break;
        case 4://2 cannibal
            if(Bg==0){Cg+=2;Cs-=2;}else{Cg-=2;Cs+=2;}
            break;
    }
    Bg=(Bg+1)%2;Bs=(Bs+1)%2;

    if(isValid(Mg,Cg,Bg,Ms,Cs,Bs))
    {   state *newState=new state(Mg,Cg,Bg,Ms,Cs,Bs);
        return newState;
    }

    return NULL;
}

bool isValid(int Mg,int Cg,int Bg,int Ms,int Cs,int Bs)
{
    if(Mg<0 || Cg <0 ||Ms<0 || Cs<0)return false;
    if(Mg>3 || Cg >3 ||Ms>3 || Cs>3)return false;
    if((Mg+Ms)!=3 || (Cg+Cs)!=3)return false;

    if(!visited[Mg][Cg][Bg][Ms][Cs][Bs])
    {   visited[Mg][Cg][Bg][Ms][Cs][Bs]=true;

        if((Mg<Cg && Mg>0) || (Ms<Cs && Ms>0))return false;
    }
    else
    {   return false;      }

    return true;
}

/*
     //methods

 */