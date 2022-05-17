*** Settings ***
Library   SeleniumLibrary

Test Setup     Open Browser  ${URL}  ${BROWSER}
Test Teardown  Close Browser

*** Variables ***
${URL}       http://automationpractice.com/index.php
${BROWSER}  firefox

*** Test Cases ***
 Scenario 01: barra de pesquisa / busca vazia
    Click Button           name=submit_search
    Page Should Contain    Please enter a search keyword