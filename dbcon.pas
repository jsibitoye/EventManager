unit dbcon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXMySQL, FMTBcd, SqlExpr, DB, DBClient, SimpleDS, StdCtrls, Grids,
  DBGrids;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    SQLConnection1: TSQLConnection;
    SimpleDataSet1: TSimpleDataSet;
    SimpleDataSet1first_name: TStringField;
    SimpleDataSet1last_name: TStringField;
    SimpleDataSet1user_name: TStringField;
    SimpleDataSet1password: TStringField;
    SimpleDataSet1birthdate: TStringField;
    SimpleDataSet1pic: TStringField;
    SimpleDataSet1user_id: TIntegerField;
    SimpleDataSet1registration_date: TSQLTimeStampField;
    DataSource1: TDataSource;
    SQLQuery1: TSQLQuery;
    SQLQuery1Name: TStringField;
    SQLQuery1SureName: TStringField;
    SQLQuery1MaritalStatus: TStringField;
    SQLQuery1Email: TMemoField;
    SQLQuery1Department: TStringField;
    SQLQuery1Phone: TStringField;
    SQLQuery1Staff_Id: TIntegerField;
    SQLQuery1Picture: TStringField;
    SQLQuery1Reg_date: TStringField;
    chatTable: TSQLTable;
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
       sqlquery1.close;
       sqlquery1.SQL.Text:=' insert into staff(name) values(" joshua")';
       sqlquery1.Open;
end;

end.
