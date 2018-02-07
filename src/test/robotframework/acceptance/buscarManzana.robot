*** Settings ***
Documentation  prueba de busqueda en gooogle.
Library  Selenium2Library
#Metadata   Here is a link    http://www.external.com/pages.html
Metadata   Here is a link    C:\Users\hp\Desktop\robot Framework\testGoogle1

*** Variables ***
${URL}  https://www.google.com/
${BROWSER}  Chrome
${DELAY}  0
${criterio}  Manzana
${btn1}  name=btnK
${txb1}  id=lst-ib

*** Keywords ***
Abrir navegador
    [Documentation]  abre el navegador ${BROWSER} y entra en la pagina .
    Open Browser  ${URL}  ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed  ${DELAY}

Introducir busqueda
    [Documentation]  escrive el criterio de busqueda.
    Input Text  ${txb1}  ${criterio}
Metadata   introduce busqueda    C:\Users\hp\Desktop\robot Framework\testGoogle1

Click buscar
    [Documentation]  Click on Buscar Con Google Button.
    Focus  ${btn1}
    Click Button  ${btn1}

*** Test Cases ***
Buscar Manzana
    [Documentation]  Buscar manzana.
    [Tags]  buscando en google.
    Abrir navegador
    Introducir busqueda
    Click buscar
    Close Browser
