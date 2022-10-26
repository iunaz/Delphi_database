unit Unit7;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.OleCtnrs, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Menus, Vcl.ComCtrls,
  Vcl.Imaging.pngimage;

type
  TForm7 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable3: TADOTable;
    ADOTable1���������: TIntegerField;
    ADOTable1�������: TWideStringField;
    ADOTable1���: TWideStringField;
    ADOTable1��������: TWideStringField;
    ADOTable1�������������: TWideStringField;
    ADOTable2�������: TIntegerField;
    ADOTable2������: TWideStringField;
    ADOTable2�����������: TWideStringField;
    ADOTable2�����������������: TIntegerField;
    ADOTable2����������: TWideStringField;
    ADOTable2�������: TBooleanField;
    ADOTable2���������: TBooleanField;
    ADOTable2���������������: TDateTimeField;
    ADOTable2������������: TDateTimeField;
    ADOTable2���������: TBCDField;
    ADOTable4: TADOTable;
    Edit14: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label23: TLabel;

  //  procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Unit1, Unit4, Unit2, Unit3, Unit5, Unit6;


procedure TForm7.FormShow(Sender: TObject);
begin
//�������� � ������� ������
ADOTable1.Filtered:=false;
ADOTable1.Filter:='[��� ������] = '+Form4.DBEdit2.Text;
ADOTable1.Filtered:=True;
Edit8.Text:= ADOTable1.FieldByName('�������').AsString;
ADOTable1.Filtered:=false;
ADOTable1.Filter:='[��� ������] = '+Form4.DBEdit2.Text;
ADOTable1.Filtered:=True;
Edit16.Text:= ADOTable1.FieldByName('���').AsString;
//�������� � ������� ������
ADOTable2.Filtered:=false;
ADOTable2.Filter:='[��� ����] = '+Form4.DBEdit4.Text;
ADOTable2.Filtered:=True;
Edit1.Text:= ADOTable2.FieldByName('������').AsString;
//�������� � ������� ������
ADOTable2.Filtered:=false;
ADOTable2.Filter:='[��� ����] = '+Form4.DBEdit4.Text;
ADOTable2.Filtered:=True;
Edit14.Text:= ADOTable2.FieldByName('�����/������').AsString;
//�������� � ������� ������
ADOTable1.Filtered:=false;
ADOTable1.Filter:='[��� ������] = '+Form4.DBEdit2.Text;
ADOTable1.Filtered:=True;
Edit9.Text:= ADOTable1.FieldByName('����� ��������').AsString;
//�������� � ������� ����������
ADOTable2.Filtered:=false;
ADOTable2.Filter:='[��� ����] = '+Form4.DBEdit4.Text;
ADOTable2.Filtered:=True;
Edit2.Text:= ADOTable2.FieldByName('����������').AsString;
//�������� � ������� �����������������
ADOTable2.Filtered:=false;
ADOTable2.Filter:='[��� ����] = '+Form4.DBEdit4.Text;
ADOTable2.Filtered:=True;
Edit3.Text:= ADOTable2.FieldByName('�����������������').AsString;
//�������� � ������� �������
ADOTable2.Filtered:=false;
ADOTable2.Filter:='[��� ����] = '+Form4.DBEdit4.Text;
ADOTable2.Filtered:=True;
Edit4.Text:= ADOTable2.FieldByName('�������').AsString;
//�������� � ������� ���������
ADOTable2.Filtered:=false;
ADOTable2.Filter:='[��� ����] = '+Form4.DBEdit4.Text;
ADOTable2.Filtered:=True;
Edit5.Text:= ADOTable2.FieldByName('���������').AsString;
//�������� � ������� �����������
ADOTable2.Filtered:=false;
ADOTable2.Filter:='[��� ����] = '+Form4.DBEdit4.Text;
ADOTable2.Filtered:=True;
Edit6.Text:= ADOTable2.FieldByName('���� �����������').AsString;
//�������� � ������� ��������
ADOTable2.Filtered:=false;
ADOTable2.Filter:='[��� ����] = '+Form4.DBEdit4.Text;
ADOTable2.Filtered:=True;
Edit7.Text:= ADOTable2.FieldByName('���� ��������').AsString;
//�������� � ������� �������
ADOTable3.Filtered:=false;
ADOTable3.Filter:='[��� �������] = '+Form4.DBEdit3.Text;
ADOTable3.Filtered:=True;
Edit10.Text:= ADOTable3.FieldByName('�������').AsString;
ADOTable3.Filtered:=false;
ADOTable3.Filter:='[��� �������] = '+Form4.DBEdit3.Text;
ADOTable3.Filtered:=True;
Edit17.Text:= ADOTable3.FieldByName('���').AsString;
//�������� � ������� ��������
ADOTable3.Filtered:=false;
ADOTable3.Filter:='[��� �������] = '+Form4.DBEdit3.Text;
ADOTable3.Filtered:=True;
Edit11.Text:= ADOTable3.FieldByName('���� ��������').AsString;
//�������� � ������� �����
Form4.DBEdit1.Text:=Edit12.Text;
//�������� � ������� ����
ADOTable2.Filtered:=false;
ADOTable2.Filter:='[��� ����] = '+Form4.DBEdit4.Text;
ADOTable2.Filtered:=True;
Edit13.Text:= ADOTable2.FieldByName('���������').AsString;
end;

procedure TForm7.N1Click(Sender: TObject);
begin
if MessageDlg('������� �� ������?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
       Form7.Print;
  end;
end;

end.
