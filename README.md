# Consulta de CEP com Múltiplas APIs

Este projeto é uma aplicação Delphi para consulta de endereços com base em CEP, utilizando fallback entre três APIs diferentes: [ViaCEP](https://viacep.com.br), [Apicep](https://apicep.com/api-de-consulta/) e [AwesomeAPI](https://cep.awesomeapi.com.br/json/). Ele também inclui testes unitários para garantir que a lógica de fallback entre as APIs funcione corretamente.

## Funcionalidades

- Consulta de endereços por CEP com fallback entre as APIs ViaCEP, Apicep e AwesomeAPI.
- Tratamento de exceções para garantir que o usuário sempre receba uma resposta válida ou uma mensagem clara de erro.
- Testes unitários usando **DUnitX** para validar o comportamento da aplicação em diferentes cenários.
- Validação básica do formato do CEP (8 dígitos).

## Público-Alvo

- **Desenvolvedores**: Interessados em avaliar o conteudo do código.
- **Usuários Finais**: Interessados em testar a aplicacao e avaliar.

---

## Para Desenvolvedores

### Requisitos

- **Delphi 10.x ou superior** (O projeto foi testado com essa versão, mas outras versões podem funcionar).
- **Boss** (se houver necessidade de gerenciamento de dependências).

### Estrutura do Projeto

O projeto está organizado da seguinte forma:

Q1
├── Q1.txt                  #Resposta da primeira questao
Q2
├── Q2.txt                  #Resposta da segunda questao
Q3
├── /src                    # Código fonte da aplicação
│   ├── uLibCEP.pas         # Contém a função principal ConsultarCEP
│   └── Main.pas            # Arquivo principal da aplicação
├── /tests                  # Testes unitários
│   └── uTestLibCEP.pas     # Testes para a função ConsultarCEP
└── README.md               # Este arquivo



