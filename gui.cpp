#include "gui.h"
#include "global.h"
#include "heuristics.h"
#include "init.h"

extern questionType questionSet[NO_OF_QUESTIONS];

int current_question_index=0;

class MyApp : public wxApp
{
public:
	virtual bool OnInit();
};


IMPLEMENT_APP(MyApp)

bool MyApp::OnInit()
{	if ( !wxApp::OnInit() )return false;

	gui *frame = new gui();
    frame->Show(true);
    return true;
}


gui::gui( wxWindow* parent, wxWindowID id, const wxString& title, const wxPoint& pos, const wxSize& size, long style ) : wxFrame( parent, id, title, pos, size, style )
{
	this->SetSizeHints( wxDefaultSize, wxDefaultSize );
	this->SetBackgroundColour( wxSystemSettings::GetColour( wxSYS_COLOUR_HIGHLIGHTTEXT ) );
	
	wxBoxSizer* main;
	main = new wxBoxSizer( wxVERTICAL );
	
	wxGridSizer* gSizer3;
	gSizer3 = new wxGridSizer( 1, 1, 0, 0 );
	
	gSizer3->SetMinSize( wxSize( -1,70 ) ); 
	wxStaticBoxSizer* sbSizer17;
	sbSizer17 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Question") ), wxVERTICAL );
	
	_statement = new wxStaticText( this, wxID_ANY, wxT("Question"), wxDefaultPosition, wxDefaultSize, 0 );
	_statement->Wrap( -1 );
	sbSizer17->Add( _statement, 1, wxALL|wxEXPAND, 5 );
	
	gSizer3->Add( sbSizer17, 0, wxEXPAND, 5 );
	
	main->Add( gSizer3, 0, wxEXPAND|wxALL, 5 );
	
	wxGridSizer* gSizer5;
	gSizer5 = new wxGridSizer( 1, 2, 0, 0 );
	
	wxStaticBoxSizer* sbSizer19;
	sbSizer19 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Options") ), wxVERTICAL );
	
	sbSizer19->SetMinSize( wxSize( 0,-1 ) ); 
	wxGridSizer* gSizer32;
	gSizer32 = new wxGridSizer( 1, 2, 0, 0 );
	
	gSizer32->SetMinSize( wxSize( 200,-1 ) ); 
	wxGridSizer* gSizer7;
	gSizer7 = new wxGridSizer( 2, 2, 0, 0 );
	
	_optionA = new wxRadioButton( this, wxID_ANY, wxT("OptionA"), wxDefaultPosition, wxSize( 100,-1 ), 0 );
	gSizer7->Add( _optionA, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5 );
	
	gSizer32->Add( gSizer7, 0, 0, 5 );
	
	wxGridSizer* gSizer9;
	gSizer9 = new wxGridSizer( 2, 2, 0, 0 );
	
	_optionB = new wxRadioButton( this, wxID_ANY, wxT("optionB"), wxDefaultPosition, wxSize( 100,-1 ), 0 );
	gSizer9->Add( _optionB, 0, wxALL|wxALIGN_CENTER_VERTICAL, 5 );
	
	gSizer32->Add( gSizer9, 1, wxEXPAND, 5 );
	
	sbSizer19->Add( gSizer32, 0, 0, 5 );
	
	gSizer5->Add( sbSizer19, 0, 0, 5 );
	
	main->Add( gSizer5, 0, wxEXPAND|wxALL, 5 );
	
	wxGridSizer* gSizer6;
	gSizer6 = new wxGridSizer( 1, 2, 0, 0 );
	
	wxGridSizer* gSizer10;
	gSizer10 = new wxGridSizer( 2, 2, 0, 0 );
	
	gSizer6->Add( gSizer10, 1, wxEXPAND|wxALIGN_RIGHT, 5 );
	
	wxGridSizer* gSizer12;
	gSizer12 = new wxGridSizer( 2, 2, 0, 0 );
	
	Confirm = new wxButton( this, wxID_ANY, wxT("Confirm and Give me Next Question"), wxDefaultPosition, wxDefaultSize, 0 );
	Confirm->SetFont( wxFont( 10, 70, 90, 92, false, wxT("Calibri") ) );
	
	gSizer12->Add( Confirm, 0, wxALIGN_CENTER_VERTICAL, 5 );
	
	gSizer6->Add( gSizer12, 1, wxEXPAND|wxALL|wxALIGN_RIGHT, 5 );
	
	main->Add( gSizer6, 0, wxEXPAND|wxALIGN_RIGHT|wxALL, 5 );
	
	wxStaticBoxSizer* sbSizer4;
	sbSizer4 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("STUDENT'S KNOWLEDGE") ), wxVERTICAL );
	
	wxGridSizer* gSizer26;
	gSizer26 = new wxGridSizer( 2, 2, 0, 0 );
	
	wxStaticBoxSizer* sbSizer5;
	sbSizer5 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Addition") ), wxVERTICAL );
	
	_gadd = new wxGauge( this, wxID_ANY, 100, wxDefaultPosition, wxSize( -1,15 ), wxGA_HORIZONTAL );
	_gadd->SetValue( 50 ); 
	sbSizer5->Add( _gadd, 0, wxALL|wxEXPAND, 5 );
	
	gSizer26->Add( sbSizer5, 0, wxEXPAND, 5 );
	
	wxStaticBoxSizer* sbSizer7;
	sbSizer7 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Subtraction") ), wxVERTICAL );
	
	_gsub = new wxGauge( this, wxID_ANY, 100, wxDefaultPosition, wxSize( -1,15 ), wxGA_HORIZONTAL );
	sbSizer7->Add( _gsub, 0, wxALL|wxEXPAND, 5 );
	
	gSizer26->Add( sbSizer7, 0, wxEXPAND, 5 );
	
	sbSizer4->Add( gSizer26, 0, wxEXPAND, 5 );
	
	wxGridSizer* gSizer27;
	gSizer27 = new wxGridSizer( 2, 2, 0, 0 );
	
	wxStaticBoxSizer* sbSizer8;
	sbSizer8 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Multiplication") ), wxVERTICAL );
	
	_gmt = new wxGauge( this, wxID_ANY, 100, wxDefaultPosition, wxSize( -1,15 ), wxGA_HORIZONTAL );
	sbSizer8->Add( _gmt, 0, wxALL|wxEXPAND, 5 );
	
	gSizer27->Add( sbSizer8, 0, wxEXPAND, 5 );
	
	wxStaticBoxSizer* sbSizer9;
	sbSizer9 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Comparison") ), wxVERTICAL );
	
	_gcp = new wxGauge( this, wxID_ANY, 100, wxDefaultPosition, wxSize( -1,15 ), wxGA_HORIZONTAL );
	sbSizer9->Add( _gcp, 0, wxALL|wxEXPAND, 5 );
	
	gSizer27->Add( sbSizer9, 0, wxEXPAND, 5 );
	
	sbSizer4->Add( gSizer27, 0, wxEXPAND, 5 );
	
	wxGridSizer* gSizer28;
	gSizer28 = new wxGridSizer( 2, 2, 0, 0 );
	
	wxStaticBoxSizer* sbSizer10;
	sbSizer10 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Common Denominator") ), wxVERTICAL );
	
	_gcd = new wxGauge( this, wxID_ANY, 100, wxDefaultPosition, wxSize( -1,15 ), wxGA_HORIZONTAL );
	sbSizer10->Add( _gcd, 0, wxALL|wxEXPAND, 5 );
	
	gSizer28->Add( sbSizer10, 0, wxEXPAND, 5 );
	
	wxStaticBoxSizer* sbSizer11;
	sbSizer11 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Cancelling Out") ), wxVERTICAL );
	
	_gcl = new wxGauge( this, wxID_ANY, 100, wxDefaultPosition, wxSize( -1,15 ), wxGA_HORIZONTAL );
	sbSizer11->Add( _gcl, 0, wxALL|wxEXPAND, 5 );
	
	gSizer28->Add( sbSizer11, 0, wxEXPAND, 5 );
	
	sbSizer4->Add( gSizer28, 0, wxEXPAND, 5 );
	
	wxGridSizer* gSizer29;
	gSizer29 = new wxGridSizer( 2, 2, 0, 0 );
	
	wxStaticBoxSizer* sbSizer12;
	sbSizer12 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Conv Mixed Numbers") ), wxVERTICAL );
	
	_gcmn = new wxGauge( this, wxID_ANY, 100, wxDefaultPosition, wxSize( -1,15 ), wxGA_HORIZONTAL );
	sbSizer12->Add( _gcmn, 0, wxALL|wxEXPAND, 5 );
	
	gSizer29->Add( sbSizer12, 0, wxEXPAND, 5 );
	
	wxStaticBoxSizer* sbSizer13;
	sbSizer13 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Conv to Improper Fraction") ), wxVERTICAL );
	
	_gcif = new wxGauge( this, wxID_ANY, 100, wxDefaultPosition, wxSize( -1,15 ), wxGA_HORIZONTAL );
	sbSizer13->Add( _gcif, 0, wxALL|wxEXPAND, 5 );
	
	gSizer29->Add( sbSizer13, 0, wxEXPAND, 5 );
	
	sbSizer4->Add( gSizer29, 0, wxEXPAND, 5 );
	
	wxGridSizer* gSizer31;
	gSizer31 = new wxGridSizer( 1, 1, 0, 0 );
	
	wxStaticBoxSizer* sbsizer334;
	sbsizer334 = new wxStaticBoxSizer( new wxStaticBox( this, wxID_ANY, wxT("Overall Knowledge") ), wxVERTICAL );
	
	_goverall = new wxGauge( this, wxID_ANY, 100, wxDefaultPosition, wxSize( -1,15 ), wxGA_HORIZONTAL );
	sbsizer334->Add( _goverall, 0, wxALL|wxEXPAND, 5 );
	
	gSizer31->Add( sbsizer334, 0, wxEXPAND, 5 );
	
	sbSizer4->Add( gSizer31, 0, wxEXPAND, 5 );
	
	main->Add( sbSizer4, 1, wxEXPAND, 5 );
	
	wxGridSizer* gSizer13;
	gSizer13 = new wxGridSizer( 1, 1, 0, 0 );
	
	bottom_Text = new wxStaticText( this, wxID_ANY, wxT("Created By Sushil Pangeni and Amanpreet Singh"), wxDefaultPosition, wxDefaultSize, 0 );
	bottom_Text->Wrap( -1 );
	bottom_Text->SetFont( wxFont( 8, 70, 94, 91, false, wxT("Calibri") ) );
	
	gSizer13->Add( bottom_Text, 0, wxALIGN_BOTTOM|wxALL, 5 );
	
	main->Add( gSizer13, 0, wxEXPAND|wxTOP, 5 );
	
	this->SetSizer( main );
	this->Layout();
	
	this->Centre( wxBOTH );
	

	// Connect Events
	Confirm->Connect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( gui::confirmed_clicked ), NULL, this );

	start_questions();
}

gui::~gui()
{
	// Disconnect Events
	Confirm->Disconnect( wxEVT_COMMAND_BUTTON_CLICKED, wxCommandEventHandler( gui::confirmed_clicked ), NULL, this );
	
}

void gui::confirmed_clicked( wxCommandEvent& event )
{
	if(_optionA->GetValue())
	{	questionSet[current_question_index].userAnswer=OPTION_A;	
		if(questionSet[current_question_index].correctAnswer==OPTION_A)
		{	questionSet[current_question_index].result=CORRECT;		}
		else
		{	questionSet[current_question_index].result=INCORRECT;	}
	}
	else if(_optionB->GetValue())
	{	questionSet[current_question_index].userAnswer=OPTION_B;	
		if(questionSet[current_question_index].correctAnswer==OPTION_B)
		{	questionSet[current_question_index].result=CORRECT;		}
		else
		{	questionSet[current_question_index].result=INCORRECT;	}
	}

	process_new_evidence(current_question_index);

	int next_ques=get_next_question();
	if(next_ques!=-1)
	{
		setQuestion(next_ques);
	}
	else
	{	update_gauges();
		_optionA->Disable();
		_optionB->Disable();
		Confirm->Disable();
		_statement->SetLabel("TEST COMPLETE \nThis was an Experimental Project To Model Students Knowledge On Fraction and Decimals \nUsing Bayesian Network");
	}
	
}

void gui::setQuestion(int questionIndex)
{	
	current_question_index=questionIndex;

	char *st=questionSet[questionIndex].statement;
	char *optA=questionSet[questionIndex].optionA;
	char *optB=questionSet[questionIndex].optionB;

	_statement->SetLabel(wxT(st));
	_optionA->SetLabel(wxT(optA));
	_optionB->SetLabel(wxT(optB));
	update_gauges();
}

void gui::start_questions()
{
	init();
	current_question_index=get_next_question();
	setQuestion(current_question_index);
	
}

void gui::update_gauges()
{	
	double val=get_value(indexSkills[0],0,theNet);
	_gadd->SetValue(int(val*100));

	val=get_value(indexSkills[1],0,theNet);
	_gsub->SetValue(int(val*100));

	val=get_value(indexSkills[2],0,theNet);
	_gmt->SetValue(int(val*100));

	val=get_value(indexSkills[3],0,theNet);
	_gcp->SetValue(int(val*100));

	val=get_value(indexSkills[4],0,theNet);
	_gcd->SetValue(int(val*100));

	val=get_value(indexSkills[5],0,theNet);
	_gcl->SetValue(int(val*100));

	val=get_value(indexSkills[6],0,theNet);
	_gcmn->SetValue(int(val*100));

	val=get_value(indexSkills[7],0,theNet);
	_gcif->SetValue(int(val*100));

	int n=theNet.FindNode("sk_root");
	val=get_value(n,0,theNet);
	_goverall->SetValue(int(val*100));
}