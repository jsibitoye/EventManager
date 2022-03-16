unit pictureTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ExtDlgs;

type
  TImgTest = class(TForm)
    OpenPictureDialog1: TOpenPictureDialog;
    SavePictureDialog1: TSavePictureDialog;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    ComboBox1: TComboBox;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImgTest: TImgTest;

implementation

{$R *.dfm}

procedure TImgTest.Button1Click(Sender: TObject);
begin
  if(openpicturedialog1.Execute())then//excecut an open dialog
  if FileExists(openPictureDialog1.FileName) then
  image1.Picture.LoadFromFile(openPictureDialog1.FileName)
  else
  raise Exception.Create('File does not exist');
end;

procedure TImgTest.Button2Click(Sender: TObject);
var str:String;
   po, i:integer;
begin
if FileExists(SavePictureDialog1.FileName) then
 raise Exception.Create('File already exist')
 else begin
 str:=openPictureDialog1.FileName;
 for i :=1 to length(str) do begin
   if str[i]='\' then
    po:=i;
 end;
   str:=copy(str,po,length(str));
   try
   image1.Picture.SaveToFile('C:\Users\JReeD1\Documents\RAD Studio\Projects\EventManager\StaffImg'+str);
   showMessage('working');
   except
    showmessage('no work')
   end;
   // showmessage(copy(str,po,length(str)));

 end;
//if SavePictureDialog1.Execute then

end;

procedure TImgTest.Button3Click(Sender: TObject);
var Adate: TDateTime;
begin
  //     showmessage(combobox1.Text);
  //showmessage(DateToStr(now));
   //Adate:=encodeDate
end;

procedure TImgTest.FormCreate(Sender: TObject);
begin
  image1.Canvas.Refresh;
end;

end.
