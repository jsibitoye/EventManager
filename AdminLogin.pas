unit AdminLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TadminLog = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button4: TButton;
    Button5: TButton;
    Label1: TLabel;
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  adminLog: TadminLog;

implementation

uses appUnit, home, joshua;

{$R *.dfm}

procedure TadminLog.Button4Click(Sender: TObject);
var id,pw:string;
begin
      id:=edit1.Text;
       pw:=edit2.Text;
        if(id='admin')  then
          if (pw='admin') then
            begin
          HomeForm.show;
          Dashboard.hide;
          close;
          end
          else showMessage('Invalid UserId Or password')
          else showMessage('Invalid UserId Or Password');
end;

procedure TadminLog.Button5Click(Sender: TObject);
begin
close;
dashBoard.Enabled:=true;
end;

end.
