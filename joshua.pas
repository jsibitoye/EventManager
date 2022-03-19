unit joshua;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBXMySQL, FMTBcd, StdCtrls, DB, SqlExpr;

type
  Tjoshuaform = class(TForm)
    con: TSQLConnection;
    Query: TSQLQuery;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  joshuaform: Tjoshuaform;

implementation

{$R *.dfm}

procedure Tjoshuaform.Button1Click(Sender: TObject);
begin
try
  query.Close;
  query.SQL.Text:='insert into staff(name) values("joshua")';
  query.Open;
  query.Active:=true;
  query.Close;
  except
  end;
end;

end.
