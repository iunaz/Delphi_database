unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm4 = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DataSource1: TDataSource;
    Button7: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Unit5, Unit1, Unit2, Unit3, Unit6, Unit7;

procedure TForm4.BitBtn5Click(Sender: TObject);
begin
if MessageDlg('Добавить запись?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     Form4.ADOTable1.Insert;
  end;
end;

procedure TForm4.BitBtn8Click(Sender: TObject);
begin
ADOtable1.Edit;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
if MessageDlg('Удалить запись?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     Form4.ADOTable1.Delete;
  end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
GroupBox2.Visible:=false;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
 Form6.show;
  Form4.close;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
Form7.Show;
Form7.Edit12.Text:=ADOTable1.FieldByName('Номер заказа').Text;
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
GroupBox2.Visible:=true;
end;

end.
