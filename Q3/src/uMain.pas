unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    eCEP: TEdit;
    bCEP: TButton;
    lResult: TLabel;
    Label1: TLabel;
    procedure bCEPClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uLibCEP;

procedure TForm1.bCEPClick(Sender: TObject);
begin
 lResult.Caption :=  ConsultarCEP(eCEP.Text);
end;

end.
