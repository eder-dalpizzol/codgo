unit uLibCEP;

interface

uses
  System.SysUtils, System.Net.HttpClient;

function ConsultarCEP(const CEP: string): string;

implementation

function ConsultarCEP(const CEP: string): string;
var
  HTTPClient: THTTPClient;
  Response: IHTTPResponse;
  URL: string;
begin
  // Validação básica do CEP
  if Length(CEP) <> 8 then
    raise Exception.Create('O CEP deve conter 8 dígitos.');

  HTTPClient := THTTPClient.Create;
  try
    try
      // Primeira tentativa: ViaCEP
      URL := 'https://viacep.com.br/ws/' + CEP + '/json/';
      Response := HTTPClient.Get(URL);
      if Response.StatusCode = 200 then
        Exit(Response.ContentAsString);

      // Segunda tentativa: Apicep
      URL := 'https://apicep.com/api-de-consulta/' + CEP;
      Response := HTTPClient.Get(URL);
      if Response.StatusCode = 200 then
        Exit(Response.ContentAsString);

      // Terceira tentativa: AwesomeAPI
      URL := 'https://cep.awesomeapi.com.br/json/' + CEP;
      Response := HTTPClient.Get(URL);
      if Response.StatusCode = 200 then
        Exit(Response.ContentAsString);

      raise Exception.Create('Falha em todas as consultas de CEP.');
    except
      on E: Exception do
        raise Exception.Create('Erro ao consultar CEP: ' + E.Message);
    end;
  finally
    HTTPClient.Free;
  end;
end;

end.

