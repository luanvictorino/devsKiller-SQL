unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    memoColuna: TMemo;
    memoTabela: TMemo;
    memoCondicao: TMemo;
    memoSql: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnGerar: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGerarClick(Sender: TObject);
var
i : Integer;
vSelect, vSelect1, vCondicao, vCondicao1 : String;
begin

  for i := 0 to memoColuna.Lines.Count -1 do
  begin
    if i = 0 then
    begin
      vSelect1 := memoColuna.Lines[0];
    end;

    if i = 1 then
    begin
      vSelect := ',' + memoColuna.Lines[1];
    end;
  end;

  for i := 0 to memoCondicao.Lines.Count -1 do
  begin
    if i = 0 then
    begin
      vCondicao1 := memoCondicao.Lines[0];
    end;

    if i = 1 then
    begin
      vCondicao := ' AND ' + memoCondicao.Lines[1];
    end;
  end;

  memoSql.Lines.Add('SELECT ' + vSelect1 + vSelect);
  memoSql.Lines.Add('FROM ' + memoTabela.Text);
  memoSql.Lines.Add('WHERE ' + vCondicao1 + vCondicao);


end;

end.
