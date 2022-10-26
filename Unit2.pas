unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    DataSource1: TDataSource;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Edit1: TEdit;
    Label7: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button7: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Label9: TLabel;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1Кодклиента: TIntegerField;
    ADOTable1Фамилия: TWideStringField;
    ADOTable1Имя: TWideStringField;
    ADOTable1Отчество: TWideStringField;
    ADOTable1Датарождения: TDateTimeField;
    ADOTable1Номертелефона: TWideStringField;
    ADOTable1Паспортныеданные: TWideStringField;
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit5, Unit1, Unit3, Unit4, Unit6;

procedure TForm2.BitBtn5Click(Sender: TObject);
begin
if MessageDlg('Добавить запись?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     Form2.ADOTable1.Insert;
  end;
end;

procedure TForm2.BitBtn8Click(Sender: TObject);
begin
  ADOtable1.Edit;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
GroupBox3.Visible:=true;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
if MessageDlg('Удалить запись?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     Form2.ADOTable1.Delete;
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
GroupBox2.Visible:=false;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
GroupBox3.Visible:=false;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Form5.Edit1.Text:=ADOTable1.FieldByName('Фамилия').AsString;
ADOTable1.Filtered:=false;
Form2.Close;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
 Form6.show;
  Form2.close;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
GroupBox2.Visible:=true;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin
if Edit1.Text='' then ADOTable1.Filtered:=false
else begin
ADOTable1.Filtered:=false;
ADOTable1.Filter:='Фамилия like '+ #39 + '%' +edit1.Text+'%'+#39;
ADOTable1.Filtered:=true;
end;

end;

procedure TForm2.Edit2Change(Sender: TObject);

begin
if Edit2.Text='' then ADOTable1.Filtered:=false
else begin
ADOTable1.Filtered:=false;
ADOTable1.Filter:='Код клиента like '+ #39 + '%' +edit2.Text+'%'+#39;
ADOTable1.Filtered:=true;
end;

end;


procedure TForm2.FormCreate(Sender: TObject);
begin
GroupBox3.Visible:=false;
GroupBox2.Visible:=false;

end;

end.
