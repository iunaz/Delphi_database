unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg;

type
  TForm3 = class(TForm)
    DataSource2: TDataSource;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn5: TBitBtn;
    BitBtn8: TBitBtn;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button7: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    Label8: TLabel;
    Image1: TImage;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    ADOTable1Кодагента: TIntegerField;
    ADOTable1Фамилия: TWideStringField;
    ADOTable1Имя: TWideStringField;
    ADOTable1Отчество: TWideStringField;
    ADOTable1Номертелефона: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit5, Unit1, Unit2, Unit4, Unit6;

procedure TForm3.BitBtn5Click(Sender: TObject);
begin
if MessageDlg('Добавить запись?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     Form3.ADOTable1.Insert;
  end;
end;

procedure TForm3.BitBtn8Click(Sender: TObject);
begin
                       ADOtable1.Edit;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
GroupBox3.Visible:=true;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
if MessageDlg('Удалить запись?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
     Form3.ADOTable1.Delete;
  end;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
GroupBox2.Visible:=false;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
GroupBox3.Visible:=false;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
 Form6.show;
  Form3.close;
end;

procedure TForm3.Button7Click(Sender: TObject);
begin
GroupBox2.Visible:=true;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
if Edit1.Text='' then ADOTable1.Filtered:=false
else begin
ADOTable1.Filtered:=false;
ADOTable1.Filter:='Фамилия like '+ #39 + '%' +edit1.Text+'%'+#39;
ADOTable1.Filtered:=true;
end;
end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
if Edit2.Text='' then ADOTable1.Filtered:=false
else begin
ADOTable1.Filtered:=false;
ADOTable1.Filter:='Код агента like '+ #39 + '%' +edit2.Text+'%'+#39;
ADOTable1.Filtered:=true;
end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
GroupBox3.Visible:=false;
GroupBox2.Visible:=false;
end;



end.
