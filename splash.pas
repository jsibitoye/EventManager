unit splash;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, StdCtrls;

type
  TsplashForm = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Image4: TImage;
    Label5: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  splashForm: TsplashForm;

implementation

uses appUnit;

{$R *.dfm}

procedure TsplashForm.Timer1Timer(Sender: TObject);
begin
   Timer1.Enabled:=false;
   close;
end;

end.
