#include <wx/wx.h>
#include <wx/sizer.h>
#include <wx/gdicmn.h>
#include <wx/string.h>
#include <wx/stattext.h>
#include <wx/font.h>
#include <wx/colour.h>
#include <wx/settings.h>
#include <wx/radiobut.h>
#include <wx/button.h>
#include <wx/frame.h>
#include <wx/menu.h>
#include <wx/panel.h>

#include <wx/statusbr.h>
#include <wx/textctrl.h>
#include <wx/timer.h>
#include <wx/intl.h>
#include <wx/bitmap.h>
#include <wx/icon.h>
#include <wx/image.h>
#include <wx/artprov.h>
#include <wx/choicdlg.h>

class gui : public wxFrame 
{
	private:
	
	protected:
		wxStaticText* _statement;
		wxRadioButton* _optionA;
		wxRadioButton* _optionB;
		wxButton* Confirm;
		wxGauge* _gadd;
		wxGauge* _gsub;
		wxGauge* _gmt;
		wxGauge* _gcp;
		wxGauge* _gcd;
		wxGauge* _gcl;
		wxGauge* _gcmn;
		wxGauge* _gcif;
		wxGauge* _goverall;
		wxStaticText* bottom_Text;
		
		// Virtual event handlers, overide them in your derived class

		void confirmed_clicked( wxCommandEvent& event );
		void setQuestion(int);
		void start_questions();
		void update_gauges();

	
	public:
		
		gui( wxWindow* parent=NULL, wxWindowID id = wxID_ANY, const wxString& title = wxT("Adaptive Test"), const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxSize( 522,500 ), long style = wxDEFAULT_FRAME_STYLE|wxTAB_TRAVERSAL );
		~gui();
	
};

