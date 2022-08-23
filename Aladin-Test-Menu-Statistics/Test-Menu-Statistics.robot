***Settings***
Library    SeleniumLibrary 
Resource   ../Resource/Keyword.robot

***Variables***
${SERVER}      http://localhost:4200/#/login
${BROWSER}     chrome
${DELAY}       0.3
${HOME_URL}    http://localhost:4200/#/


**Test Cases***


1. Login
    Open Browser To Login Page
    Login Page Should Be Open 
    Go To Login Page 
    Input Username&Password
    Submit
    Home Page Should Be Open
    
2. Open Menu Statistics 
    Click Open Menu Statistics
    Page Menu Statistics Should Be Open
    [Teardown]                    Close Browser
   