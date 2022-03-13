# language: pt

Funcionalidade: Cadastro de Clientes
  Como um usuário desejo fazer o controle dos meus clientes
  Sendo assim desejo que seja possível cadastrar um cliente, visualizar e exportar as informações.

  Cenário: Novo Cliente
    Dado que eu tenho um novo cliente para cadastrar
        | nome           | Rangel Luiz Bombonatto |
        | rg             | 5947861                |
        | cpf            | 08610696928            |
        | dataNascimento | 24111991               |         
    E estou na tela de cadastro de clientes
    Quando preencho as informações do cliente
    E clico no botão de Salvar
	  Então deve ser apresentado a mensagem de cadastrado com sucesso

@excluir
 Cenário: Exclusão de Clientes
     
    Dado que tenho um cliente cadastrado
        | nome           | João da Silva |
        | rg             | 12345678      |
        | cpf            | 00600696928   |
        | dataNascimento | 25111991      | 
    Quando clico no cliente
    E clico no botão de Excluir
    Então devo ver a mensagem de confirmação de exclusão
    E ao clicar sim o cliente deve ser excluído com sucesso

