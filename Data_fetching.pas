unit Data_fetching;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXMySQL, StdCtrls, DB, Grids, DBGrids, DBClient, SimpleDS, SqlExpr;

type
  Te_data = class(TForm)
    SQLConnection1: TSQLConnection;
    dset: TSimpleDataSet;
    DBGrid1: TDBGrid;
    //DataSource1: TDataSource;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  e_data: Te_data;

implementation

{$R *.dfm}

procedure Te_data.Button1Click(Sender: TObject);
begin
       showmessage(dset.FieldValues['LastName']);
       showMessage('y na ');
end;

end.
