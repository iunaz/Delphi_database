unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls,ShellAPI, Vcl.Menus;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3, Unit4, Unit5;

procedure TForm6.Button1Click(Sender: TObject);
begin
  Form1.show;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
 Form2.show;
 form2.Button5.Visible:= False;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
 Form3.show;
 Form3.ADOTable1.Filtered:=false;
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
 Form5.show;
 Form5.Label5.Visible:=False;
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
 Form4.show;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
if MessageDlg('Выйти?',
    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
      Form6.Close;
  end;
end;

procedure TForm6.N1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', 'Справка.chm', 0, 0, SW_SHOWNORMAL);
end;

end.
