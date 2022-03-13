# Projeto Automação de Testes - Appium                          

Nesse projeto foi utilizado a ferramenta Appium para automação mobile, a linguagem Ruby e escrito os cenários de testes com Cucumber.


## Execução do Projeto

Na pasta do projeto executar no terminal o seguinte comando para instalar as dependências:

```
bundle install      
```

## Configurações do Dispositivo

No arquivo "appium.txt" foi configurado as seguintes Capabilities para Android:

```
[caps]
platformName = "Android"
deviceName = 'DeviceQa'
app = "./build/cadastro_clientes_teste.apk"
autoGrantPermissions = true
newCommandTimeout = 3600
[appium_lib]
wait = 5
```

## Orientações para execusão do projeto:

É necessário que o Appium Server e o Device (Android Studio) estejam executando para rodar os testes.

Comandos: 
  ```
  cucumber                                   # executa todos os testes.
  cucumber feature/<nomefeature>             # executa todos os cenários de uma feature especifica.
  cucumber --tag @tag                        # executa o cenário com a tag que esta sobre o mesmo.
  cucumber -f pretty -f html -o report.html  # é gerado um relatório em html dos testes executados.
  ```



