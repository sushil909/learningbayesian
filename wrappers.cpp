#include "wrappers.h"

double get_value(const char *node,const char *outcome,DSL_network theNetwork)
{
	int thenode = theNetwork.FindNode(node);
	DSL_sysCoordinates theCoordinates(*theNetwork.GetNode(thenode)->Value());
	DSL_idArray *theNames;
	theNames = theNetwork.GetNode(thenode)->Definition()->GetOutcomesNames();  	
	theCoordinates[0] =theNames->FindPosition(outcome);
	theCoordinates.GoToCurrentPosition();
	double value= theCoordinates.UncheckedValue();
	return value;
}

double get_value(int theNode,int outcome_position,DSL_network theNetwork)
{	DSL_sysCoordinates theCoordinates(*theNetwork.GetNode(theNode)->Value());
	theCoordinates[0] =outcome_position;
	theCoordinates.GoToCurrentPosition();
	double value= theCoordinates.UncheckedValue();
	return value;
}
