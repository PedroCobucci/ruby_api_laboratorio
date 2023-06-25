## Endpoints

### Listar Exames

Retorna uma lista de todos os exames cadastrados.

**Requisição**
```
GET /exames
```

**Resposta**

- Status: 200 OK
- Content-Type: application/json

Exemplo de resposta:
```json
[
  {
    "id": 1,
    "resultado": "resultado do exame",
    "descricao": "descrição do exame",
    "anexo": "caminho/para/anexo",
    "data": "2023-06-25",
    "created_at": "2023-06-25T12:00:00Z",
    "updated_at": "2023-06-25T12:00:00Z",
    "paciente_id: 1
  },
  {
    "id": 2,
    "resultado": "resultado do exame",
    "descricao": "descrição do exame",
    "anexo": "caminho/para/anexo",
    "data": "2023-06-26",
    "created_at": "2023-06-26T12:00:00Z",
    "updated_at": "2023-06-26T12:00:00Z",
    "paciente_id: 1
  }
  ...
]
```

### Obter Detalhes do Exame

Retorna os detalhes de um exame específico.

**Requisição**
```
GET /exames/:id
```

**Parâmetros de URL**
- `:id` - O ID do exame desejado.

**Resposta**

- Status: 200 OK
- Content-Type: application/json

Exemplo de resposta:
```json
{
  "id": 1,
  "resultado": "resultado do exame",
  "descricao": "descrição do exame",
  "anexo": "caminho/para/anexo",
  "data": "2023-06-25",
  "created_at": "2023-06-25T12:00:00Z",
  "updated_at": "2023-06-25T12:00:00Z"
}
```

### Criar Exame

Cria um novo exame.

**Requisição**
```
POST /exames
```

**Corpo da Requisição**
```json
Content-Type: application/json

{
  "resultado": "resultado do exame",
  "descricao": "descrição do exame",
  "anexo": "caminho/para/anexo",
  "data": "2000-10-10",
  "paciente_cpf": 3
}
```


Atualizar Exame
Atualiza as informações de um exame existente.

Requisição

bash
 
PATCH /exames/:id
Parâmetros de URL

:id - O ID do exame a ser atualizado.
Corpo da Requisição

json
 
Content-Type: application/json

{
  "resultado": "a",
  "descricao": "b",
  "anexo": "s",
  "data": "2000-11-10",
  "paciente_cpf": 3
}
Parâmetros do Corpo

resultado - O novo resultado do exame.
descricao - A nova descrição do exame.
anexo - O novo caminho/URL para um anexo relacionado ao exame.
Resposta

Status: 200 OK
Content-Type: application/json
Exemplo de resposta:

json
 
{
  "id": 1,
  "resultado": "novo resultado do exame",
  "descricao": "nova descrição do exame",
  "anexo": "novo caminho/para/anexo",
  "data": "2023-06-25",
  "created_at": "2023-06-25T12:00:00Z",
  "updated_at": "2023-06-26T12:00:00Z"
}



Excluir Exame
Remove um exame do sistema.

Requisição

bash
 
DELETE /exames/:id
Parâmetros de URL

:id - O ID do exame a ser excluído.
Resposta

Status: 204 No Content
A operação de exclusão não retorna conteúdo no corpo da resposta.







Cadastro de Novo Cliente
Registers a new client in the API.

Request

bash
 
POST /auth
Request Body

json
 
{
  "email": "cliente3@gmail.com",
  "password": "cliente1234",
  "password_confirmation": "cliente1234",
  "name": "Cliente 3",
  "data_nascimento": "2000-10-10",
  "celular": 971414707,
  "sexo": "Masculino",
  "cpf": 3,
  "endereco": "rua x 202 santo antonio",
  "acesso": "cliente"
}
Response

Status: 200 OK
Autenticação do Cliente
Authenticates the client and returns the login credentials.

Request

bash
 
POST /auth/sign_in
Request Body

json
 
{
  "email": "cliente3@gmail.com",
  "password": "cliente1234"
}
Response

Status: 200 OK
Headers:
access-token: Client access token
client: Client ID
uid: Client UID



Exemplo: Listar usuários
Requisição:

bash

GET /users
Resposta:

json
 
[
    {
        "id": 1,
        "name": "Usuário 1",
        "celular": 123456789,
        "sexo": "Masculino",
        "cpf": 1234567890,
        "data_nascimento": "1990-01-01",
        "endereco": "Rua XYZ, 123"
    },
    {
        "id": 2,
        "name": "Usuário 2",
        "celular": 987654321,
        "sexo": "Feminino",
        "cpf": 9876543210,
        "data_nascimento": "1980-02-02",
        "endereco": "Rua ABC, 456"
    }
]
Exemplo: Exibir detalhes de um usuário
Requisição:

bash

GET /users/1
Resposta:

json
 
{
    "id": 1,
    "name": "Usuário 1",
    "celular": 123456789,
    "sexo": "Masculino",
    "cpf": 1234567890,
    "data_nascimento": "1990-01-01",
    "endereco": "Rua XYZ, 123"
}
Exemplo: Atualizar um usuário
Requisição:

bash
PATCH /users/1
Corpo da solicitação:

json
 
{
    "name": "a",
    "celular": 123, 
    "sexo": "A" , 
    "cpf": 123, 
    "data_nascimento": "2100-01-01",
    "endereco": "rua tal 123 lavras"
}
Resposta:

json
 
{
    "id": 1,
    "name": "Novo Nome",
    "celular": 987654321,
    "sexo": "Masculino",
    "cpf": 1234567890,
    "data_nascimento": "1990-01-01",
    "endereco": "Rua XYZ, 123"
}
Exemplo: Excluir um usuário
Requisição:

bash
 
DELETE /users/1
Resposta:
Código de status 204 No Content

Exemplo: Buscar usuário por CPF
Requisição:

bash
 
GET /users/getUsuarioByCPF?cpf=1234567890
Resposta:

json
 
{
    "id": 1,
    "name": "Usuário 1",
    "celular": 123456789,
    "sexo": "Masculino",
    "cpf": 1234567890,
    "data_nascimento": "1990-01-01",
    "endereco": "Rua XYZ, 123"
}
Exemplo: Verificar senha do usuário
Requisição:

bash
 
POST /users/checkPassword
Corpo da solicitação:

json
 
{
    "password": "senha"
}
Resposta:

json
 
{
    "valid_password": true
}


