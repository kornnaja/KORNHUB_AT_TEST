***Settings***
Library    SeleniumLibrary 
Resource   ../Resource/Keyword.robot

***Variables***
${SERVER}      http://localhost:4200/#/login
${BROWSER}     chrome
${DELAY}       0.3
${HOME_URL}    http://localhost:4200/#/

**Test Cases***
1.Login
    Open Browser To Login Page
    Login Page Should Be Open 
    Go To Login Page 
    Input Username&Password
    Submit
    Home Page Should Be Open
2.Open Menu Item-Score
    Wait Until Page Contains Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[6]/span
    Open Menu Item-Score
    Location Should Be Item-Score  
3.Test Search Menu Item-Score 
    Test Search Menu Item-Score FormNameProduct
    Test Search Menu Item-Score FormNameStore 
    [Teardown]   Close Browser

  
