***Settings***
Library  AppiumLibrary

***Test Cases*** 
Consultar planta no meu jardim
        Open Application      http://localhost:4723/wd/hub
        ...                   automationName=UiAutomator2
        ...                   platformName=Android
        ...                   deviceName=Pixel 2 API R
        ...                   app=${EXECDIR}/app/sunflower.apk
        ...                   udid=emulator-5554

Dado que consulto o elemento deve esta visivel na tela
    Wait Until Element Is Visible  accessibility_id=Plant list    10

E quando encontrado o elemento Plant list deve ser clicado 
    Click Element    accessibility_id=Plant list

E quando encontrado o elemento imagem lista deve ser clicado
    Wait Until Element Is Visible  xpath=*//android.widget.ImageView[@content-desc="Picture of plant"][1]    10
    Click Element                  xpath=*//android.widget.ImageView[@content-desc="Picture of plant"][1]
Quando encontrar elemento deve validar 
    Wait Until Element Is Visible  id=com.google.samples.apps.sunflower:id/plant_description    10 
    Element Should Be Visible      xpath=*//android.widget.ImageView[@content-desc="Image of plant"]

E deve clicar elemento para adicionar na lista
    Click Element                  id=com.google.samples.apps.sunflower:id/fab
    Click Element                  class=android.widget.ImageButton

Dado que consulto o elemento deve esta visivel na tela
    Wait Until Element Is Visible  accessibility_id=My garden    10

E quando encontrado o elemento Plant list deve ser clicado 
    Click Element    accessibility_id=My garden
    Element Should Be Visible      accessibility_id=My garden





