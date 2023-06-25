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
    "paciente_id": 1
  },
  {
    "id": 2,
    "resultado": "resultado do exame",
    "descricao": "descrição do exame",
    "anexo": "caminho/para/anexo",
    "data": "2023-06-26",
    "created_at": "2023-06-26T12:00:00Z",
    "updated_at": "2023-06-26T12:00:00Z",
    "paciente_id": 1
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
{
  "resultado": "resultado do exame",
  "descricao": "descrição do exame",
  "anexo": "caminho/para/anexo",
  "data": "2000-10-10",
  "paciente_cpf": 3
}
```

**Resposta**

- Status: 201 Created
- Content-Type: application/json

Exemplo de resposta:
```json
{
  "id": 3,
  "resultado": "resultado do exame",
  "descricao": "descrição do exame",
  "anexo": "caminho/para/anexo",
  "data": "2000-10-10",
  "created_at": "2023-06-26T12:00:00Z",
  "updated_at": "2023-06-26T12:00:00Z",
  "paciente_id": 3
}
```

### Atualizar Exame

Atualiza as informações de um exame existente.

**Requisição**
```
PATCH /exames/:id
```

**Parâmetros de URL**
- `:id` - O ID do exame a ser atualizado.

**Corpo da Requisição

**
```json
{
  "resultado": "novo resultado do exame",
  "descricao": "nova descrição do exame",
  "anexo": "novo caminho/para/anexo",
  "data": "2023-06-25",
  "paciente_cpf": 3
}
```

**Resposta**

- Status: 200 OK
- Content-Type: application/json

Exemplo de resposta:
```json
{
  "id": 1,
  "resultado": "novo resultado do exame",
  "descricao": "nova descrição do exame",
  "anexo": "novo caminho/para/anexo",
  "data": "2023-06-25",
  "created_at": "2023-06-25T12:00:00Z",
  "updated_at": "2023-06-26T12:00:00Z",
  "paciente_id": 3
}
```

### Excluir Exame

Remove um exame do sistema.

**Requisição**
```
DELETE /exames/:id
```

**Parâmetros de URL**
- `:id` - O ID do exame a ser excluído.

**Resposta**

- Status: 204 No Content

### Cadastro de Novo Cliente

Registra um novo cliente na API.

**Requisição**
```
POST /auth
```

**Corpo da Requisição**
```json
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
```

**Resposta**

- Status: 200 OK

### Autenticação do Cliente

Autentica o cliente e retorna as credenciais de login.

**Requisição**
```
POST /auth/sign_in
```

**Corpo da Requisição**
```json
{
  "email": "cliente3@gmail.com",
  "password": "cliente1234"
}
```

**Resposta**

- Status: 200 OK
- Headers:
  - access-token: Client access token
  - client: Client ID
  - uid: Client UID

### Listar Usuários

Retorna uma lista de todos os usuários cadastrados.

**Requisição**
```
GET /users
```

**Resposta**

- Status: 200 OK
- Content-Type: application/json

Exemplo de resposta:
```json
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
  ...
]
```

### Obter Detalhes de um Usuário

Retorna os detalhes de um usuário

 específico.

**Requisição**
```
GET /users/:id
```

**Parâmetros de URL**
- `:id` - O ID do usuário desejado.

**Resposta**

- Status: 200 OK
- Content-Type: application/json

Exemplo de resposta:
```json
{
  "id": 1,
  "name": "Usuário 1",
  "celular": 123456789,
  "sexo": "Masculino",
  "cpf": 1234567890,
  "data_nascimento": "1990-01-01",
  "endereco": "Rua XYZ, 123"
}
```

### Atualizar um Usuário

Atualiza as informações de um usuário existente.

**Requisição**
```
PATCH /users/:id
```

**Parâmetros de URL**
- `:id` - O ID do usuário a ser atualizado.

**Corpo da Requisição**
```json
Content-Type: application/json

{
  "name": "Novo Nome",
  "celular": 987654321,
  "sexo": "Masculino",
  "cpf": 1234567890,
  "data_nascimento": "1990-01-01",
  "endereco": "Rua XYZ, 123"
}
```

**Resposta**

- Status: 200 OK
- Content-Type: application/json

Exemplo de resposta:
```json
{
  "id": 1,
  "name": "Novo Nome",
  "celular": 987654321,
  "sexo": "Masculino",
  "cpf": 1234567890,
  "data_nascimento": "1990-01-01",
  "endereco": "Rua XYZ, 123"
}
```

### Excluir um Usuário

Remove um usuário do sistema.

**Requisição**
```
DELETE /users/:id
```

**Parâmetros de URL**
- `:id` - O ID do usuário a ser excluído.

**Resposta**

- Status: 204 No Content

### Buscar Usuário por CPF

Retorna os detalhes de um usuário específico com base no CPF.

**Requisição**
```
GET /users/getUsuarioByCPF?cpf=1234567890
```

**Parâmetros de URL**
- `cpf` - O CPF do usuário desejado.

**Resposta**

- Status: 200 OK
- Content-Type: application/json

Exemplo de resposta:
```json
{
  "id": 1,
  "name": "Usuário 1",
  "celular": 123456789,
  "sexo": "Masculino",
  "cpf": 1234567890,
  "data_nascimento": "1990-01-01",
  "endereco": "Rua XYZ, 123"
}
```

### Verificar Senha do Usuário

Verifica se a senha fornecida pelo usuário é válida.

**Requisição**
```
POST /users/checkPassword
```

**Corpo da Requisição**
```json
Content-Type: application/json

{
  "password": "senha"
}
```

**Resposta**

- Status: 200 OK
- Content-Type: application/json

Exemplo de resposta:
```json
{
  "valid_password": true
}
```