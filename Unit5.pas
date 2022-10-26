unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Mask, Vcl.Imaging.jpeg;

type
  TForm5 = class(TForm)
    Button1: TButton;
    PrintDialog1: TPrintDialog;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    DataSource1: TDataSource;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Button3: TButton;
    Label4: TLabel;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    Button4: TButton;
    Label5: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  kod,x: integer;
implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit6;

procedure TForm5.Button1Click(Sender: TObject);
begin
Form4.ADOTable1.Post;
label5.Visible:=true;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
form2.ShowModal;
form2.Button5.Visible:= true;

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
 Form6.show;
  combobox1.Text := '' ;
  Edit1.Text:='' ;
  Form5.close;
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
 Form4.show;
 combobox1.Text:='' ;
  Edit1.Text:='' ;
 close;
end;

procedure TForm5.ComboBox1Change(Sender: TObject);
begin
if combobox1.Text='' then Form3.ADOTable1.Filtered:=false
else begin
Form3.ADOTable1.Filtered:=false;
Form3.ADOTable1.Filter:='Фамилия like '+ #39 + '%' +ComboBox1.Text+'%'+#39;
Form3.ADOTable1.Filtered:=true;
kod:=Form3.ADOTable1.FieldByName('Код агента').Value;
form4.ADOTable1.FieldByName('Код агента').Value:=kod;
end;
end;

procedure TForm5.Edit1Change(Sender: TObject);
begin
if Edit1.Text='' then Form2.ADOTable1.Filtered:=false
else begin
Form2.ADOTable1.Filtered:=false;
Form2.ADOTable1.Filter:='Фамилия like '+ #39 + '%' +Edit1.Text+'%'+#39;
Form2.ADOTable1.Filtered:=true;
x:=Form2.ADOTable1.FieldByName('Код клиента').Value;
form4.ADOTable1.FieldByName('Код клиента').Value:=x;
end;
end;

procedure TForm5.FormCreate(Sender: TObject);
var i:integer;
begin
Form3.ADOTable1.First;
for i:=1 to Form3.ADOTable1.RecordCount do
begin
ComboBox1.Items.Add(Form3.ADOTable1.FieldByName('Фамилия').Value);
Form3.ADOTable1.Next;
end;
end;

end.
