unit Register;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, pngimage, StdCtrls, GIFImg, ExtDlgs, Grids, DBGrids, DB,
  DBClient, SimpleDS, SqlExpr, DBXMySQL, DBTables;

  procedure getImageName;
  var image_Name,validator:string;
      m_status:integer;
  function RandomPassword(Plen:integer):string;
  function generate_id():string;
type
  TRegisterForm = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit7: TEdit;
    Button1: TButton;
    Button2: TButton;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    OpenPictureDialog1: TOpenPictureDialog;
    Panel1: TPanel;
    Image7: TImage;
    Button3: TButton;
    ComboBox1: TComboBox;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label8: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RegisterForm: TRegisterForm;

implementation

uses home, joshua;

{$R *.dfm}

procedure TRegisterForm.Button1Click(Sender: TObject);
var
  data: array [1 .. 10] of String;   //create array to take all field values
  index_At ,
  i,d_count :integer;
begin
  d_count:=0;
  if not ( edit1.Text='') then
   data[1]:=edit1.Text;     //name

   if not ( edit7.Text='') then
   data[2]:=edit7.Text;       //surename
  if (m_status=1) then
     data[3]:='Married'
  else if (m_status=2)then
      data[3]:='Single';  //marital status

  if not (Edit4.text='') then  //mail address
      begin
       index_At:=pos('@',Edit4.Text);
       if Not(index_At=0) then
        data[4]:=edit4.Text;
       end;
  if not(combobox1.text='') then //department
      data[5]:=combobox1.Text;

  if not(edit2.Text='') then //phone number
      data[6]:=edit2.Text;
      showmessage(data[5]);

  data[9]:=label8.Caption; //date label value

  if not (openpictureDialog1.FileName='') then   //picture
    begin
        getImageName;
        data[8]:=image_name;
    end;
    for i := 1 to 10 do
      begin
        if not ( data[i]='') then
          d_count:=d_count+1;
      end;
    if(d_count=8) then
    begin
      data[10]:=randompassword(12);//generating password
      data[7]:=generate_id;   //generating staff id

       try
         RegisterForm.image7.Picture.SaveToFile('C:\Users\JReeD1\Documents\RAD Studio\Projects\EventManager\StaffImg'+image_name); //send the image to this dir on this machine
        except
        end;

         try
          joshuaform.query.Close;
          joshuaform.query.SQL.Text:='insert into staff(name,surename,maritalstatus,email, '+
                'department,phone,staff_id,picture,reg_date,password) '+
                'values("'+data[1]+'","'+data[2]+'","'+data[3]+'","'+data[4]+'","'+data[5]+'","'+
                data[6]+'","'+data[7]+'","'+data[8]+'","'+data[9]+'","'+data[10]+'")';
          joshuaform.query.Open;
          joshuaform.query.Active:=true;
          joshuaform.query.Close;
          showmessage('working now');
          except
          end;
       end
    else showmessage('Data not correctly given '#13#10' please review the fields');
end;

procedure TRegisterForm.Button2Click(Sender: TObject);
begin
    HomeForm.enabled:=true;
    close;

end;

procedure TRegisterForm.Button3Click(Sender: TObject);
begin
  if(openpicturedialog1.Execute())then//excecut an open dialog
  if FileExists(openPictureDialog1.FileName) then
  image7.Picture.LoadFromFile(openPictureDialog1.FileName)
  else
  raise Exception.Create('File does not exist');
end;

procedure TRegisterForm.Edit2Change(Sender: TObject);

 var
 val,a,con_c: String;
    i:integer;
 begin
    // val:=trim(edit2.Text);
    // if( length(val)>0 )then
  //   begin
    //     for i := 1 to length(val) do
      //    begin
        //    a:='';
          //  a:= copy(val,i,i);
            //try
             //   strtoint(a);
              //  con_c:=con_c+a;
           // except
          //  end;
         // end;
        //  edit2.Text:=con_c;
    // end;
  end;

procedure TRegisterForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  HomeForm.enabled:=true;
end;

procedure TRegisterForm.FormShow(Sender: TObject);
begin
  label8.Caption:=DateToStr(now);
end;

procedure TRegisterForm.RadioButton1Click(Sender: TObject);
begin
  m_status:=1;
end;

procedure TRegisterForm.RadioButton2Click(Sender: TObject);
begin
   m_status:=2;
end;

procedure getImageName;
  var str:String;
     po,i:integer;
begin
 str:= registerForm.OpenPictureDialog1.FileName;
 for i :=1 to length(str) do
     begin
       if str[i]='\' then
        po:=i;
     end;
   image_Name:=copy(str,po,length(str));
end;


function randomPassword(plen:integer):string;
    var str:string;
begin
  Randomize;
  str:='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
  result:='';
  repeat
    result:=result+str[Random(length(str))+1];
  until (length(result)=plen);
end;

function generate_id():string;
    var str:string;
begin
  Randomize;
  str:='0123456789';
  result:='STAFF';
  repeat
    result:=result+str[Random(length(str))+1];
  until (length(result)=10);
end;
end.
