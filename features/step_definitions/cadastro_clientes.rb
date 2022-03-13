
Dado("que eu tenho um novo cliente para cadastrar") do |table|
  @new_cliente = table.rows_hash
end

Dado("estou na tela de cadastro de clientes") do
  @cliente = CadastroClientePage.new
  @cliente.tela_inicial
  @cliente.clicar_btnMais
  @cliente.opcao_NovoCliente
  @cliente.validar_tela_cliente
end

Quando("preencho as informações do cliente") do
  @cliente.cadastrar_cliente(@new_cliente)
end

Quando("clico no botão de Salvar") do
  @cliente.salvar_btn
end

Então("deve ser apresentado a mensagem de cadastrado com sucesso") do 
  @cliente.confirmar_cadastro
end

Dado("que tenho um cliente cadastrado") do |table|
  @new_cliente = table.rows_hash

  @cliente = CadastroClientePage.new
  @cliente.tela_inicial
  @cliente.clicar_btnMais
  @cliente.opcao_NovoCliente
  @cliente.validar_tela_cliente
  @cliente.cadastrar_cliente(@new_cliente)
  @cliente.salvar_btn
  @cliente.confirmar_cadastro
end

Quando("clico no cliente") do
  @driver.back
  @cliente.list_cliente
end

Quando("clico no botão de Excluir") do
  @cliente.excluir_cliente
end

Então("devo ver a mensagem de confirmação de exclusão") do
  @cliente.confirmar_exclusao
end

Então("ao clicar sim o cliente deve ser excluído com sucesso") do
  @cliente.confirma_usuario(@new_cliente)
end

