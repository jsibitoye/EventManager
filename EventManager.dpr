program EventManager;

uses
  Forms,
  sysutils,
  appUnit in 'appUnit.pas' {DashBoard},
  splash in 'splash.pas' {splashForm},
  Register in 'Register.pas' {RegisterForm},
  AdminLogin in 'AdminLogin.pas' {adminLog},
  home in 'home.pas' {HmeForm},
  newHome in 'newHome.pas' {stf},
  dbcon in 'dbcon.pas' {Form1},
  db in 'db.pas' {dbe},
  joshua in 'joshua.pas' {joshuaform},
  staff in 'staff.pas' {StaffHome},
  cnnn in 'cnnn.pas' {db_data};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDashBoard, DashBoard);
  Application.CreateForm(TsplashForm, splashForm);
  Application.CreateForm(TRegisterForm, RegisterForm);
  Application.CreateForm(TadminLog, adminLog);
  Application.CreateForm(THomeForm, HomeForm);
  Application.CreateForm(Tstf, stf);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tjoshuaform, joshuaform);
  Application.CreateForm(TStaffHome, StaffHome);
  Application.CreateForm(Tdb_data, db_data);
  Application.Run;
end.
