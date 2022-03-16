unit appUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, pngimage, StdCtrls;

type
  TDashBoard = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    Image3: TImage;
    Image4: TImage;
    Button2: TButton;
    Button3: TButton;
    Image5: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    Button5: TButton;
    Image6: TImage;
    Image7: TImage;
    Label4: TLabel;
    Image8: TImage;
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DashBoard: TDashBoard;

implementation

uses splash, AdminLogin, Register, dbcon, db, joshua,
  Data_fetching, newHome, staff, cnnn;

{$R *.dfm}

procedure TDashBoard.Button4Click(Sender: TObject);
  var id, pw :String;
begin
  id:= edit1.Text;
  pw:= edit2.Text;

 stf.Show;
end;

procedure TDashBoard.FormShow(Sender: TObject);
begin
 splashForm.showModal;
end;

procedure TDashBoard.Label1Click(Sender: TObject);
begin
  adminLog.Show;
  dashBoard.Enabled:=false;
end;

end.
