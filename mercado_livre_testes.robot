*** Settings ***
Documentation
Resource  mercado_livre_resources.robot
Test Setup    Abrir o navegador
# Test Teardown  fechar o navegador

*** Test Cases ***

Caso de Teste 01 - Acesso ao menu Ofertas
    [Documentation]
    [Tags]          menus      categorias
    Acessar a home page do site mercadolivre.com.br
    Entrar no menu "Ofertas"
    Verificar se aparece a categoria "Animais"
Caso de Teste 02 - Pesquisa um Produto
     [Documentation]
     [Tags]           busca_produtos   lista_busca
     Acessar a home page do site mercadolivre.com.br
     Digitar o nome do produto "Samsung Galaxy S23 256 GB 5G Preto 8 GB RAM" no campo de pesquisa
     Clicar no botão de pesquisa 
      Verificar o resultado da pesquisa se está listando o produto pesquisado
   




