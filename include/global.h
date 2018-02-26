#include "wrappers.h"
#include "math.h"

#define NOT_ATTEMPTED 2
#define CORRECT 1
#define INCORRECT 0

#define OPTION_A 0
#define OPTION_B 1

#define NO_OF_QUESTIONS 10

#define MAX_ENTROPY -0.150514998 //this is E(0.5)=0.5 * log(0.5)

struct questionType
{	char id[6];
	char statement[42];
	char optionA[22];
	char optionB[22];

	int correctAnswer;
	int userAnswer;
	int result;

	questionType()
	{	result=NOT_ATTEMPTED;
	}

};
typedef struct questionType questionType;

extern DSL_network theNet;
extern DSL_intArray indexSkills;