*** Settings ***
Library    Browser
Resource   ../elementspage/elements.resource

*** Keywords ***
Abrir Sistema Maximinado
    New Browser    browser=chromium    headless=false    args=["--start-maximized"]
    New Context    viewport=${None}
    New Page       ${TEST_URL}