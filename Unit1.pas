unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB, Grids, DBGrids, Mask, DBCtrls,
  Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    OpenDialog1: TOpenDialog;
    DBGrid1: TDBGrid;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    BitBtn8: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Button3: TButton;
    Button7: TButton;
    Button8: TButton;
    GroupBox3: TGroupBox;
    Edit1: TEdit;
    Label6: TLabel;
    Button6: TButton;
    Button9: TButton;
    Button5: TButton;
    Button10: TButton;
    Button1: TButton;
    Image1: TImage;
    Label7: TLabel;
    ADOTable1: TADOTable;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    ADOTable1Кодтура: TIntegerField;
    ADOTable1Страна: TWideStringField;
    ADOTable1ГородКурорт: TWideStringField;
    ADOTable1Продолжительность: TIntegerField;
    ADOTable1Проживание: TWideStringField;
    ADOTable1Питание: TBooleanField;
    ADOTable1Экскурсия: TBooleanField;
    ADOTable1Датаотправления: TDateTimeField;
    ADOTable1Датаприбытия: TDateTimeField;
    ADOTable1Стоимость: TBCDField;
    procedure BitBtn8Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4, Unit5, Unit6;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if MessageDlg('Действительно закрыть?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      Form1.Close;
  end;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
ADOtable1.Edit;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
GroupBox3.Visible:=false;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 Form6.show;
  Form1.close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 Form3.show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form5.show;
Form4.ADOTable1.Insert;
Form5.DBEdit1.Text:=ADOTable1.FieldByName('Код тура').Text;
 Form5.Label5.Visible:=False;
close;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Form4.show;

end;

procedure TForm1.Button5Click(Sender: TObject);
begin
GroupBox2.Visible:=false;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
 if MessageDlg('Удалить запись?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     Form1.ADOTable1.Delete;
  end;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
GroupBox2.Visible:=true;

end;

procedure TForm1.Button8Click(Sender: TObject);
begin
GroupBox3.Visible:=true;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
 if MessageDlg('Добавить запись?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     Form1.ADOTable1.Insert;
  end;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
if Edit1.Text='' then ADOTable1.Filtered:=false
else begin
ADOTable1.Filtered:=false;
ADOTable1.Filter:='Страна like '+ #39 + '%' +edit1.Text+'%'+#39;
ADOTable1.Filtered:=true;
end;

end;
procedure TForm1.FormCreate(Sender: TObject);
begin
GroupBox3.Visible:=false;
GroupBox2.Visible:=false;
end;

end.
