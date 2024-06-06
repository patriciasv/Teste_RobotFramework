*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}                  https://www.mercadolivre.com.br/
${MENU_OFERTAS}         //a[contains(.,'Ofertas')]
${OFERTA_DO_DIA}        //h1[@class='header_title'][contains(.,'Ofertas do dia')]


*** Keywords ***

Abrir o navegador 
    Open Browser   browser=chrome
     Maximize Browser Window
    
fechar o navegador
    Capture Page Screenshot
    Close Browser
Acessar a home page do site mercadolivre.com.br 
    Go To     url=${URL}
    Wait Until Element Is Visible    locator=${MENU_OFERTAS}
Entrar no menu "Ofertas"
    Click Element    locator=${MENU_OFERTAS}
    Wait Until Element Is Visible    locator=${OFERTA_DO_DIA}

Verificar se aparece a categoria "${NOME_CATEGORIA}"
    Element Should Be Visible   locator=//a[@class='list_element '][contains(.,'${NOME_CATEGORIA}')]
Digitar o nome do produto "${PRODUTO}" no campo de pesquisa

    Input Text    locator=cb1-edit  text= ${PRODUTO}
 Clicar no botão de pesquisa 
    Click Element    locator=//div[contains(@role,'img')]
 Verificar o resultado da pesquisa se está listando o produto pesquisado
   Element Should Be Visible  locator=//h2[@aria-level='3'][contains(.,'Samsung Galaxy S23 256 GB 5G Preto 8 GB RAM')]




   

        





