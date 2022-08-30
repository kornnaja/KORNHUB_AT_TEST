***Settings***
Library     SeleniumLibrary 
Resource    ../KeywordReport.robot

***Variables***
${SERVER}                http://localhost:4200/#/login
${BROWSER}               chrome
${DELAY}                 0.3
${HOME_URL}              http://localhost:4200/#/
${PublisherScore_Url}    http://localhost:4200/#/publisher-score 

***Test Cases***
1.Login
    Open Browser To Login Page
    Login Page Should Be Open 
    Go To Login Page 
    Input Username&Password
    Submit
    Home Page Should Be Open
Test Report 4
    Test Report 4
Test Search Report 4
    Test Search Report 4     
Test Fillter Status
    Test Fillter Status
