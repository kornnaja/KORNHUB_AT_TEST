***Settings***
Library     SeleniumLibrary 
Resource    ../Resource/Keyword.robot

***Variables***
${SERVER}      http://localhost:4200/#/login
${BROWSER}     chrome
${DELAY}       0.3
${HOME_URL}    http://localhost:4200/#/
${PublisherScore_Url}   http://localhost:4200/#/publisher-score 


**Test Cases***

1.Login
    Open Browser To Login Page
    Login Page Should Be Open 
    Go To Login Page 
    Input Username&Password
    Submit
    Home Page Should Be Open
    Sleep   5s
    
2.Open PublisherScore
    Open PublisherScore Menu
3.Page PublisherScore Should Be Open 
    Page PublisherScore Should Be Open 
4.Test Search
    Test Search PublisherScore
    Reload Page
    sleep  3s	
5.Test Filter
    Test Filter 
    sleep           2s
   [Teardown]      Close Browser

