unit mainform;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TfrmMain = class(TForm)
    grpCityName: TGroupBox;
    edtCityName: TEdit;
    btnGenerateCityName: TButton;
    grpMayorName: TGroupBox;
    edtMayorName: TEdit;
    btnGenerateMayorName: TButton;
    rdobtnMale: TRadioButton;
    rdobtnFemale: TRadioButton;
    lstMayorName: TListBox;
    lstNames: TListBox;
    lstSurname: TListBox;
    chkPrefix: TCheckBox;
    lstPrefix: TListBox;
    lstMidfix: TListBox;
    lstSuffix: TListBox;
    chkMidfix: TCheckBox;
    lblAbout: TLabel;
    lblInfo: TLabel;
    edtTypeCityName: TEdit;
    rdoUseNames: TRadioButton;
    rdoUseText: TRadioButton;
    procedure btnGenerateMayorNameClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rdobtnMaleClick(Sender: TObject);
    procedure rdobtnFemaleClick(Sender: TObject);
    procedure chkPrefixClick(Sender: TObject);
    procedure chkMidfixClick(Sender: TObject);
    procedure btnGenerateCityNameClick(Sender: TObject);
    procedure lblAboutDblClick(Sender: TObject);
    procedure rdoUseNamesClick(Sender: TObject);
    procedure rdoUseTextClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  strPrefix, strMidfix: string;

implementation

{$R *.dfm}

procedure TfrmMain.btnGenerateMayorNameClick(Sender: TObject);
var
   SelectedName1, SelectedName2: Integer;
begin
     Randomize;
     SelectedName1 := Random(lstMayorName.Count);
     SelectedName2 := Random(lstSurname.Count);
     edtMayorName.Text := lstMayorName.Items[SelectedName1]
                          + ' ' +
                          lstSurname.Items[SelectedName2];
end;

procedure TfrmMain.FormCreate(Sender: TObject);
var
   MayorFile, SurnameFile, NameFile, PrefixFile, SuffixFile, MidfixFile: string;
   // storage for file names

begin
     MayorFile := 'mayormale.txt';	{ set the file name }
     with lstMayorName.items do     LoadFromFile(MayorFile);	{ load from file }     SurnameFile := 'surname.txt';
     with lstSurname.items do
     LoadFromFile(SurnameFile);

     NameFile := 'names.txt';
     with lstNames.items do
     LoadFromFile(NameFile);

     PrefixFile := 'prefix.txt';
     with lstPrefix.items do
     LoadFromFile(PrefixFile);

     SuffixFile := 'suffix.txt';
     with lstSuffix.items do
     LoadFromFile(SuffixFile);

     MidfixFile := 'midfix.txt';
     with lstMidfix.items do
     LoadFromFile(MidfixFile);

     lblInfo.Caption := 'Names: ' + IntToStr(lstNames.items.count)
                      + ', '
                      + 'Prefixes: ' + IntToStr(lstPrefix.items.count)
                      + ', '
                      + 'Midfixes: ' + IntToStr(lstMidfix.items.count)
                      + ', '
                      + 'Suffixes: ' + IntToStr(lstSuffix.items.count)
                      ;
end;

procedure TfrmMain.rdobtnMaleClick(Sender: TObject);
var
   MayorFile: string;	{ storage for file name }
begin
     MayorFile := 'mayormale.txt';	{ set the file name }
     with lstMayorName.items do     begin
          LoadFromFile(MayorFile);	{ load from file }
     end;
end;

procedure TfrmMain.rdobtnFemaleClick(Sender: TObject);
var
   MayorFile: string;	{ storage for file name }
begin
     MayorFile := 'mayorfemale.txt';	{ set the file name }
     with lstMayorName.items do     begin
          LoadFromFile(MayorFile);	{ load from file }
     end;
end;

procedure TfrmMain.chkPrefixClick(Sender: TObject);
begin
     if chkPrefix.checked = false then
     strPrefix := '';
     // this will not generate a suffix when user deselects checkbox
end;

procedure TfrmMain.chkMidfixClick(Sender: TObject);
begin
     if chkMidfix.checked = false then
     strMidfix := '';
     // this will not generate a middle name when user deselects checkbox
end;

procedure TfrmMain.btnGenerateCityNameClick(Sender: TObject);
var
   SelectedPrefix, SelectedMidfix, SelectedNames, SelectedSuffix: Integer;
   TrimmedSuffix, WhichName: string;
begin
     Randomize;

     if rdoUseNames.checked = true then //check if user wants to select names
        begin                           // from file
          SelectedNames := Random(lstNames.Count); //load random city name
          WhichName := lstNames.Items[SelectedNames];
        end
     else
         WhichName := edtTypeCityName.Text;  //if not take the name the user typed

     SelectedSuffix := Random(lstSuffix.Count); //load random city suffix

     TrimmedSuffix := lstSuffix.Items[SelectedSuffix];
     // we will use this string to trim the suffix later

     if chkPrefix.checked then
        begin
           SelectedPrefix := Random(lstPrefix.Count);
           strPrefix := lstPrefix.Items[SelectedPrefix];
           //load random prefix if user selected the checkbox
        end;
     if chkMidfix.checked then
        begin
           SelectedMidfix := Random(lstMidfix.Count);
           strMidfix := lstMidfix.Items[SelectedMidfix];
           //load random middle name if user selected the checkbox
           TrimmedSuffix := TrimLeft(TrimmedSuffix);
           //trim the suffix in case it has a space in front
        end;

     edtCityName.Text := strPrefix
                       + WhichName
                       + strMidfix
                       + TrimmedSuffix;
     //now join all the strings together to form a nicely generated city name ^_^
end;

procedure TfrmMain.lblAboutDblClick(Sender: TObject);
begin
     if lblInfo.visible then
        lblInfo.visible := false
     else lblInfo.visible := true;
end;

procedure TfrmMain.rdoUseNamesClick(Sender: TObject);
begin
     edtTypeCityName.enabled := false;
end;

procedure TfrmMain.rdoUseTextClick(Sender: TObject);
begin
     edtTypeCityName.enabled := true;
end;

end.
