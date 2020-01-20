//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "zadanie_testowe.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
	: TForm(Owner)
{
	String SQLStmt="select * from dokumenty";
	//String SQLStmt = "select DOKUMENTY.ID_DOKUMENTU,  DOKUMENTY.DATA_KSIEGOWANIA, sum(POZYCJE.Kwota) from DOKUMENTY full outer join POZYCJE on DOKUMENTY.ID_DOKUMENTU=POZYCJE.ID_DOKUMENTU group by DOKUMENTY.ID_DOKUMENTU,  DOKUMENTY.DATA_KSIEGOWANIA order by DOKUMENTY.ID_DOKUMENTU;" ;
	//String SQLStmt = "select DOKUMENTY.ID_DOKUMENTU,  DOKUMENTY.DATA_KSIEGOWANIA, sum(POZYCJE.Kwota) from DOKUMENTY, POZYCJE where DOKUMENTY.ID_DOKUMENTU=POZYCJE.ID_DOKUMENTU group by DOKUMENTY.ID_DOKUMENTU,  DOKUMENTY.DATA_KSIEGOWANIA;" ;
	String SQLStmt2="select * from POZYCJE";


	SQLDataSet1->CommandText = SQLStmt;
	SQLDataSet2->CommandText = SQLStmt2;
	ClientDataSet1->Open();
	ClientDataSet2->Open();
}
//---------------------------------------------------------------------------





void __fastcall TForm1::CheckBox1Click(TObject *Sender)
{
	String SQLStmt;

	if(CheckBox1->Checked){
	   SQLStmt = "select DOKUMENTY.ID_DOKUMENTU,  DOKUMENTY.DATA_KSIEGOWANIA, sum(POZYCJE.Kwota) AS WARTOSC_DOKUMENTU from DOKUMENTY full outer join POZYCJE on DOKUMENTY.ID_DOKUMENTU=POZYCJE.ID_DOKUMENTU group by DOKUMENTY.ID_DOKUMENTU,  DOKUMENTY.DATA_KSIEGOWANIA order by DOKUMENTY.ID_DOKUMENTU;" ;
	   SQLDataSet1->CommandText = SQLStmt;
	   //ClientDataSet1->Open();
	   //DBGrid1->Refresh();
	   if (ClientDataSet1->Active)
			ClientDataSet1->Close();
	   ClientDataSet1->Open();
	}
	else{
		SQLStmt="select * from DOKUMENTY;";
		SQLDataSet1->CommandText = SQLStmt;
		if (ClientDataSet1->Active)
			ClientDataSet1->Close();
		ClientDataSet1->Open();

        SQLStmt="select * from POZYCJE;";
		SQLDataSet2->CommandText = SQLStmt;
		if (ClientDataSet2->Active)
			ClientDataSet2->Close();
		ClientDataSet2->Open();
	}



}
//---------------------------------------------------------------------------

void __fastcall TForm1::DBGrid1CellClick(TColumn *Column)
{
	String SQLStmt;

	if(CheckBox1->Checked and DBGrid1->Fields[0]->AsString!=""){

		SQLStmt="select * from POZYCJE where ID_DOKUMENTU="+DBGrid1->Fields[0]->AsString;
		SQLDataSet2->CommandText = SQLStmt;
		if (ClientDataSet2->Active)
			ClientDataSet2->Close();
		ClientDataSet2->Open();
	}


}
//---------------------------------------------------------------------------

