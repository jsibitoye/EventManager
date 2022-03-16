unit home;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, jpeg, ExtCtrls, StdCtrls;

type
  THomeForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image7: TImage;
    Panel1: TPanel;
    staffRegBut: TButton;
    ViewStaffBut: TButton;
    CreatEventBut: TButton;
    DeleteEventBut: TButton;
    Button4: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure staffRegButClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  HomeForm: THomeForm;

implementation

uses appUnit, Register;

{$R *.dfm}

procedure THomeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Dashboard.close;
end;

procedure THomeForm.staffRegButClick(Sender: TObject);
begin
      RegisterForm.show;
      HomeForm.Enabled:=false;
end;

end.
