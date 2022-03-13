class CadastroClientePage
  def initialize
    @id_title = 'c9c133a1-a8cd-4989-8973-20f5f45051cd'
    @id_opc_novo_cliente = 'br.com.dudstecnologia.cadastrodeclientes:id/floating_novo'
    @id_name = 'br.com.dudstecnologia.cadastrodeclientes:id/editNome'
    @id_camp_name= 'br.com.dudstecnologia.cadastrodeclientes:id/editNome'
    @id_camp_rg= 'br.com.dudstecnologia.cadastrodeclientes:id/editRg'
    @id_camp_cpf= 'br.com.dudstecnologia.cadastrodeclientes:id/editCpf'
    @id_camp_dtnasc= 'br.com.dudstecnologia.cadastrodeclientes:id/editData'
    @id_salvar_btn= 'br.com.dudstecnologia.cadastrodeclientes:id/btnSalvar'
    @id_ok_btn= 'android:id/button1'
    @id_cliente_list= 'br.com.dudstecnologia.cadastrodeclientes:id/nomeLista'
    @id_excluir_cliente= 'br.com.dudstecnologia.cadastrodeclientes:id/btnExcluir'
    @id_confirmar_exclusao= 'android:id/button1'
    @id_pesquisa= 'br.com.dudstecnologia.cadastrodeclientes:id/editPesquisar'
    @id_list= 'br.com.dudstecnologia.cadastrodeclientes:id/linearLayoutClientes'
  end

  def tela_inicial
   find_elements(id: @id_title)
  end

  def clicar_btnMais
    find_element(class: 'android.widget.ImageView').click
  end
  
  def opcao_NovoCliente
    find_element(id: @id_opc_novo_cliente).click
  end

  def validar_tela_cliente
    find_element(xpath: '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.RadioGroup/android.widget.RadioButton[2]')
  end

  def cadastrar_cliente(new_cliente)
    find_element(id: @id_camp_name).send_key new_cliente[:nome]
    find_element(id: @id_camp_rg).send_key new_cliente[:rg]
    find_element(id: @id_camp_cpf).send_key new_cliente[:cpf]
    find_element(id: @id_camp_dtnasc).send_key new_cliente[:dataNascimento]
  end

  def salvar_btn
    find_element(id: @id_salvar_btn).click
  end

  def confirmar_cadastro
    find_element(id: @id_ok_btn).click
  end

  def list_cliente
    find_element(id: @id_cliente_list).click
  end

  def excluir_cliente
    find_element(id: @id_excluir_cliente).click
  end 

  def confirmar_exclusao
    find_element(id: @id_confirmar_exclusao).click
  end

  def confirma_usuario(new_cliente)
    find_element(id: @id_pesquisa).send_key new_cliente[:nome]
    begin
      option = driver.find_element(id: @id_cliente_list).displayed? 
      if option == true
        puts"PASS"
      else
        puts"Does not Exists"
      end
  rescue
      puts"Client not found"
  end
  end 
end




