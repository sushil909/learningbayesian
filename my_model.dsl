net my_modal
{
 HEADER = 
  {
   ID = my_modal;
   NAME = "My model";
   COMMENT = "";
  };
 CREATION = 
  {
  };
 NUMSAMPLES = 1000;
 SCREEN = 
  {
   POSITION = 
    {
     CENTER_X = 0;
     CENTER_Y = 0;
     WIDTH = 76;
     HEIGHT = 36;
    };
   COLOR = 16250597;
   SELCOLOR = 12303291;
   FONT = 1;
   FONTCOLOR = 0;
   BORDERTHICKNESS = 3;
   BORDERCOLOR = 12255232;
  };
 WINDOWPOSITION = 
  {
   CENTER_X = 0;
   CENTER_Y = 0;
   WIDTH = 0;
   HEIGHT = 0;
  };
 BKCOLOR = 16777215;
 USER_PROPERTIES = 
  {
  };
 DOCUMENTATION = 
  {
  };
 SHOWAS = 3;

 node sk_root
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = sk_root;
     NAME = "overall student knowledge";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 529;
       CENTER_Y = 605;
       WIDTH = 96;
       HEIGHT = 60;
      };
     COLOR = 16711680;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = ();
   DEFINITION = 
    {
     NAMESTATES = (good, bad);
     PROBABILITIES = (0.50000000, 0.50000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node sk1
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = sk1;
     NAME = "student knowledge 1";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 737;
       CENTER_Y = 544;
       WIDTH = 77;
       HEIGHT = 36;
      };
     COLOR = 65535;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sk_root);
   DEFINITION = 
    {
     NAMESTATES = (good, bad);
     PROBABILITIES = (0.80000000, 0.20000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node kcl
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = kcl;
     NAME = "KCL";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 686;
       CENTER_Y = 455;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 16777215;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sk1);
   DEFINITION = 
    {
     NAMESTATES = (good, bad);
     PROBABILITIES = (0.50000000, 0.50000000, 0.50000000, 0.50000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node cl
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = cl;
     NAME = "cancelling out";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 698;
       CENTER_Y = 383;
       WIDTH = 52;
       HEIGHT = 43;
      };
     COLOR = 65280;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (kcl);
   DEFINITION = 
    {
     NAMESTATES = (knows, doesnt_know);
     PROBABILITIES = (0.80000000, 0.20000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node kcd
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = kcd;
     NAME = "KCD";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 509;
       CENTER_Y = 454;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 16777215;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sk1);
   DEFINITION = 
    {
     NAMESTATES = (good, bad);
     PROBABILITIES = (0.50000000, 0.50000000, 0.50000000, 0.50000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node cd
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = cd;
     NAME = "common denominator";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 618;
       CENTER_Y = 381;
       WIDTH = 52;
       HEIGHT = 43;
      };
     COLOR = 65280;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (kcd);
   DEFINITION = 
    {
     NAMESTATES = (knows, doesnt_know);
     PROBABILITIES = (0.80000000, 0.20000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node sk2
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = sk2;
     NAME = "student knowledge 2";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 259;
       CENTER_Y = 536;
       WIDTH = 70;
       HEIGHT = 38;
      };
     COLOR = 65535;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sk_root);
   DEFINITION = 
    {
     NAMESTATES = (good, bad);
     PROBABILITIES = (0.80000000, 0.20000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node cp
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = cp;
     NAME = "Comparison";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 202;
       CENTER_Y = 386;
       WIDTH = 52;
       HEIGHT = 43;
      };
     COLOR = 39423;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sk2);
   DEFINITION = 
    {
     NAMESTATES = (knows, doesnt_know);
     PROBABILITIES = (0.80000000, 0.20000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x1
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x1;
     NAME = "question 1";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 114;
       CENTER_Y = 165;
       WIDTH = 72;
       HEIGHT = 28;
      };
     COLOR = 13434828;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
     Question = "This is question no 1";
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (cp);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (0.65000000, 0.35000000, 0.30000000, 0.70000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x2
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x2;
     NAME = "question 2";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 213;
       CENTER_Y = 130;
       WIDTH = 62;
       HEIGHT = 32;
      };
     COLOR = 16250597;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
     question = "this is question 2";
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (cl);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (0.90000000, 0.10000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node sub
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = sub;
     NAME = "subtraction";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 542;
       CENTER_Y = 381;
       WIDTH = 52;
       HEIGHT = 43;
      };
     COLOR = 39423;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (kcd);
   DEFINITION = 
    {
     NAMESTATES = (knows, doesnt_know);
     PROBABILITIES = (0.80000000, 0.20000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x3
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x3;
     NAME = "question 3";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 305;
       CENTER_Y = 104;
       WIDTH = 72;
       HEIGHT = 32;
      };
     COLOR = 16250597;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
     question = "this is question no 3";
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sub, cl);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (0.70000000, 0.30000000, 0.65000000, 0.35000000, 
     0.25000000, 0.75000000, 0.10000000, 0.90000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node add
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = add;
     NAME = "Addition";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 463;
       CENTER_Y = 379;
       WIDTH = 52;
       HEIGHT = 43;
      };
     COLOR = 39423;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (kcd);
   DEFINITION = 
    {
     NAMESTATES = (knows, doesnt_know);
     PROBABILITIES = (0.80000000, 0.20000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node mt
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = mt;
     NAME = "multiplication";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 303;
       CENTER_Y = 388;
       WIDTH = 51;
       HEIGHT = 45;
      };
     COLOR = 39423;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sk2);
   DEFINITION = 
    {
     NAMESTATES = (knows, doesnt_know);
     PROBABILITIES = (0.80000000, 0.20000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x4
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x4;
     NAME = "question 4";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 407;
       CENTER_Y = 84;
       WIDTH = 72;
       HEIGHT = 32;
      };
     COLOR = 16250597;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
     question = "this is question no 4";
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sub, add, cl, mt);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (0.90000000, 0.10000000, 0.85000000, 0.15000000, 
     0.88000000, 0.12000000, 0.52000000, 0.48000000, 0.64000000, 
     0.36000000, 0.41000000, 0.59000000, 0.47000000, 0.53000000, 
     0.28000000, 0.72000000, 0.17000000, 0.83000000, 0.26000000, 
     0.74000000, 0.18000000, 0.82000000, 0.08000000, 0.92000000, 
     0.14000000, 0.86000000, 0.11000000, 0.89000000, 0.19000000, 
     0.81000000, 0.04000000, 0.96000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node kcif
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = kcif;
     NAME = "KCIF";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 784;
       CENTER_Y = 460;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 16777215;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sk1);
   DEFINITION = 
    {
     NAMESTATES = (good, bad);
     PROBABILITIES = (0.50000000, 0.50000000, 0.50000000, 0.50000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node kcmn
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = kcmn;
     NAME = "KCMN";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 915;
       CENTER_Y = 460;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 16777215;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sk1, kcif);
   DEFINITION = 
    {
     NAMESTATES = (good, bad);
     PROBABILITIES = (0.50000000, 0.50000000, 0.50000000, 0.50000000, 
     0.50000000, 0.50000000, 0.50000000, 0.50000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node cif
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = cif;
     NAME = "conv Improper Fraction";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 784;
       CENTER_Y = 383;
       WIDTH = 74;
       HEIGHT = 43;
      };
     COLOR = 65280;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (kcif);
   DEFINITION = 
    {
     NAMESTATES = (knows, doesnt_know);
     PROBABILITIES = (0.80000000, 0.20000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node cmn
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = cmn;
     NAME = "conv Mixed Numbers";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 915;
       CENTER_Y = 383;
       WIDTH = 85;
       HEIGHT = 43;
      };
     COLOR = 65280;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (kcmn, cif);
   DEFINITION = 
    {
     NAMESTATES = (knows, doesnt_know);
     PROBABILITIES = (0.50000000, 0.50000000, 0.50000000, 0.50000000, 
     0.50000000, 0.50000000, 0.50000000, 0.50000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node mcv
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = mcv;
     NAME = "MCV";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 784;
       CENTER_Y = 293;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 255;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (cif);
   DEFINITION = 
    {
     NAMESTATES = (has, doesnt_have);
     PROBABILITIES = (0.50000000, 0.50000000, 0.50000000, 0.50000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x5
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x5;
     NAME = "question 5";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 516;
       CENTER_Y = 73;
       WIDTH = 72;
       HEIGHT = 32;
      };
     COLOR = 16250597;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
     question = "this is question no 5";
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (cmn, mcv);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (0.90000000, 0.10000000, 0.88000000, 0.12000000, 
     0.56000000, 0.44000000, 0.37000000, 0.63000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x6
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x6;
     NAME = "question 6";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 630;
       CENTER_Y = 73;
       WIDTH = 72;
       HEIGHT = 32;
      };
     COLOR = 16250597;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
     question = "this is question no 6";
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (cl, mt);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (0.99000000, 0.01000000, 0.54000000, 0.46000000, 
     0.95000000, 0.05000000, 0.20000000, 0.80000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x7
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x7;
     NAME = "question 7";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 731;
       CENTER_Y = 88;
       WIDTH = 72;
       HEIGHT = 32;
      };
     COLOR = 16250597;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
     question = "this is question no 7";
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (cl, sub, mt, add);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (1.00000000, 0.00000000, 0.97000000, 0.03000000, 
     0.92000000, 0.08000000, 0.82000000, 0.18000000, 0.91000000, 
     0.09000000, 0.73000000, 0.27000000, 0.63000000, 0.37000000, 
     0.42000000, 0.58000000, 0.78000000, 0.22000000, 0.72000000, 
     0.28000000, 0.67000000, 0.33000000, 0.39000000, 0.61000000, 
     0.53000000, 0.47000000, 0.31000000, 0.69000000, 0.28000000, 
     0.72000000, 0.12000000, 0.88000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node mad
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = mad;
     NAME = "MAD";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 463;
       CENTER_Y = 293;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 255;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (add);
   DEFINITION = 
    {
     NAMESTATES = (has, doesnt_have);
     PROBABILITIES = (0.12000000, 0.88000000, 0.60000000, 0.40000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x8
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x8;
     NAME = "question 8";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 835;
       CENTER_Y = 109;
       WIDTH = 72;
       HEIGHT = 32;
      };
     COLOR = 16250597;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
     question = "this is question no 8";
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (cl, mt, cp);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (0.98000000, 0.02000000, 0.70000000, 0.30000000, 
     0.90000000, 0.10000000, 0.40000000, 0.60000000, 0.57000000, 
     0.43000000, 0.38000000, 0.62000000, 0.45000000, 0.55000000, 
     0.22000000, 0.78000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node mmt1
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = mmt1;
     NAME = "MMT1";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 173;
       CENTER_Y = 292;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 255;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (mt);
   DEFINITION = 
    {
     NAMESTATES = (has, doesnt_have);
     PROBABILITIES = (0.25000000, 0.75000000, 0.60000000, 0.40000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node mmt4
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = mmt4;
     NAME = "MMT4";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 370;
       CENTER_Y = 293;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 255;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (mt);
   DEFINITION = 
    {
     NAMESTATES = (has, doesnt_have);
     PROBABILITIES = (0.17000000, 0.83000000, 0.60000000, 0.40000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node mmt3
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = mmt3;
     NAME = "MMT3";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 305;
       CENTER_Y = 292;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 255;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (mt);
   DEFINITION = 
    {
     NAMESTATES = (has, doesnt_have);
     PROBABILITIES = (0.20000000, 0.80000000, 0.68000000, 0.32000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node mmt2
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = mmt2;
     NAME = "MMT2";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 241;
       CENTER_Y = 291;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 255;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (mt);
   DEFINITION = 
    {
     NAMESTATES = (has, doesnt_have);
     PROBABILITIES = (0.25000000, 0.75000000, 0.55000000, 0.45000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node msb
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = msb;
     NAME = "MSB";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 542;
       CENTER_Y = 293;
       WIDTH = 52;
       HEIGHT = 32;
      };
     COLOR = 255;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (sub, mad);
   DEFINITION = 
    {
     NAMESTATES = (has, doesnt_have);
     PROBABILITIES = (0.42000000, 0.58000000, 0.08000000, 0.92000000, 
     0.77000000, 0.23000000, 0.55000000, 0.45000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x9
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x9;
     NAME = "Question 9";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 934;
       CENTER_Y = 139;
       WIDTH = 66;
       HEIGHT = 41;
      };
     COLOR = 16250597;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (mcv, cmn);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (0.92000000, 0.08000000, 0.35000000, 0.65000000, 
     0.88000000, 0.12000000, 0.36000000, 0.64000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };

 node x10
  {
   TYPE = CPT;
   HEADER = 
    {
     ID = x10;
     NAME = "Question 10";
    };
   SCREEN = 
    {
     POSITION = 
      {
       CENTER_X = 1028;
       CENTER_Y = 190;
       WIDTH = 71;
       HEIGHT = 44;
      };
     COLOR = 16250597;
     SELCOLOR = 12303291;
     FONT = 1;
     FONTCOLOR = 0;
     BORDERTHICKNESS = 1;
     BORDERCOLOR = 8388608;
    };
   USER_PROPERTIES = 
    {
    };
   DOCUMENTATION = 
    {
    };
   PARENTS = (cl);
   DEFINITION = 
    {
     NAMESTATES = (correct, incorrect);
     PROBABILITIES = (0.98000000, 0.02000000, 0.25000000, 0.75000000);
    };
   EXTRA_DEFINITION = 
    {
     DIAGNOSIS_TYPE = AUXILIARY;
     RANKED = FALSE;
     MANDATORY = FALSE;
     SETASDEFAULT = FALSE;
     SHOWAS = 4;
     FAULT_STATES = (0, 0);
     FAULT_NAMES = ("", "");
     FAULT_LABELS = ("", "");
     DEFAULT_STATE = 0;
     DOCUMENTATION = 
      {
      };
     DOCUMENTATION = 
      {
      };
     STATECOMMENTS = ("", "");
     STATEREPAIRINFO = ("", "");
     QUESTION = "";
    };
  };
 OBSERVATION_COST = 
  {

   node sk_root
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node sk1
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node kcl
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node cl
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node kcd
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node cd
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node sk2
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node cp
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x1
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x2
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node sub
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x3
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node add
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node mt
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x4
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node kcif
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node kcmn
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node cif
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node cmn
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node mcv
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x5
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x6
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x7
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node mad
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x8
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node mmt1
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node mmt4
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node mmt3
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node mmt2
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node msb
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x9
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };

   node x10
    {
     PARENTS = ();
     COSTS = (0.00000000);
    };
  };
};
