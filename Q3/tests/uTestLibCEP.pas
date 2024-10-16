unit uTestLibCEP;

interface

uses
  TestFramework, uLibCEP, System.SysUtils;

type
  // Classe de teste
  TTestCEP = class(TTestCase)
  published
    procedure TestConsultarCEPValido;
    procedure TestConsultarCEPInvalido;
    procedure TestFalhaAPIs;
  end;

implementation

procedure TTestCEP.TestConsultarCEPValido;
var
  Result: string;
begin
  // Teste com um CEP v�lido e esperado sucesso (pode ser um CEP real ou fict�cio)
  try
    Result := ConsultarCEP('84070110'); // CEP v�lido
    CheckTrue(Pos('logradouro', Result) > 0, 'Deveria retornar informa��es v�lidas do CEP.');
  except
    on E: Exception do
      Fail('N�o deveria lan�ar exce��o em um CEP v�lido: ' + E.Message);
  end;
end;

procedure TTestCEP.TestConsultarCEPInvalido;
begin
  // Teste com um CEP inv�lido (menos de 8 d�gitos)
  try
    ConsultarCEP('123'); // CEP inv�lido
    Fail('Deveria lan�ar exce��o para um CEP inv�lido.');
  except
    on E: Exception do
      CheckEquals('O CEP deve conter 8 d�gitos.', E.Message, 'A exce��o correta n�o foi lan�ada.');
  end;
end;

procedure TTestCEP.TestFalhaAPIs;
begin
  // Aqui voc� pode simular um CEP que falhe em todas as APIs ou usar um CEP que n�o exista
  try
    ConsultarCEP('00000000'); // Um CEP inv�lido para todas as APIs
    Fail('Deveria lan�ar exce��o ao falhar em todas as APIs.');
  except
    on E: Exception do
      CheckEquals('Falha em todas as consultas de CEP.', E.Message, 'A exce��o correta n�o foi lan�ada.');
  end;
end;

initialization
  // Registra a classe de teste
  RegisterTest(TTestCEP.Suite);
end.

