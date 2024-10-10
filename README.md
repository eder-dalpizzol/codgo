# Consulta de CEP com Múltiplas APIs

Este projeto é uma aplicação Delphi para consulta de endereços com base em CEP, utilizando fallback entre três APIs diferentes: [ViaCEP](https://viacep.com.br), [Apicep](https://apicep.com/api-de-consulta/) e [AwesomeAPI](https://cep.awesomeapi.com.br/json/). Ele também inclui testes unitários para garantir que a lógica de fallback entre as APIs funcione corretamente.

## Funcionalidades

- Consulta de endereços por CEP com fallback entre as APIs ViaCEP, Apicep e AwesomeAPI.
- Tratamento de exceções para garantir que o usuário sempre receba uma resposta válida ou uma mensagem clara de erro.
- Testes unitários usando **DUnit** para validar o comportamento da aplicação em diferentes cenários.
- Validação básica do formato do CEP (8 dígitos).

## Público-Alvo

- **Desenvolvedores**: Interessados em usar ou contribuir para o projeto, aprender sobre fallback entre APIs ou realizar consultas de CEP em projetos Delphi.
- **Usuários Finais**: Desenvolvedores ou empresas que precisam integrar um sistema de consulta de CEP com alta disponibilidade em seus sistemas Delphi.

---

## Para Desenvolvedores

### Requisitos

- **Delphi 10.x ou superior** (O projeto foi testado com essa versão, mas outras versões podem funcionar).
- **Boss** (se houver necessidade de gerenciamento de dependências).

### Estrutura do Projeto

O projeto está organizado da seguinte forma:

.
├── /src                    # Código fonte da aplicação
│   ├── uLibCEP.pas          # Contém a função principal ConsultarCEP
│   └── Main.pas             # Arquivo principal da aplicação
├── /tests                  # Testes unitários
│   └── uTestLibCEP.pas      # Testes para a função ConsultarCEP
└── README.md               # Este arquivo



Como Executar a Aplicação
Clone o repositório:

git clone https://github.com/seu-usuario/consulta-cep.git

Abra o projeto no Delphi: Abra o arquivo Main.pas na IDE Delphi e compile o projeto.

Rodar a aplicação: Após compilar, execute o projeto para abrir a aplicação de consulta de CEP.

Como Rodar os Testes Unitários
Navegue até a pasta tests e abra o arquivo uTestLibCEP.pas.
Execute o projeto de teste diretamente da IDE Delphi (usando DUnitX).
A janela Test Runner irá exibir os resultados dos testes.




