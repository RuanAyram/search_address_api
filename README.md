API REST que retorna os dados de um endereço conforme o CEP informado.

Requisitos:

- Validar os requests com um Token de autenticação.
- Endpoint que recebe o cep e retorne as seguintes informações: endereço, bairro, cidade, UF e o endereço completo.
- Salvar os ceps e endereços em um banco de dados.

## Setup

Instalar dependências
```bash
bundle install
```

Setup da base de dados
```bash
rails db:setup
```

Criar usuário
```bash
rails c
User.create(email: 'john@mail.com', password: '123456')
User.first.token
```

Iniciar aplicação
```bash
rails server
```

## Como utilizar

Endpoint: 
```bash
# Método http GET
{base_url}/api/v1/enderecos/{cep}
```

Usando token:
```bash
Content-Type: application/json
X-User-email: {email}
X-User-token: {token}
```
