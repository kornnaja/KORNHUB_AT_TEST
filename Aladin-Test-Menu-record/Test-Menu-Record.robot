***Settings***
Library     SeleniumLibrary 
Resource    ../Resource/Keyword.robot

***Variables***
${SERVER}                http://localhost:4200/#/login
${BROWSER}               chrome
${DELAY}                 0.3
${HOME_URL}              http://localhost:4200/#/
${PublisherScore_Url}    http://localhost:4200/#/publisher-score 


**Test Cases***

1.Login
    Open Browser To Login Page
    Login Page Should Be Open 
    Go To Login Page 
    Input Username&Password
    Submit
    Home Page Should Be Open
    Sleep                         5s
2.Open Menu Record-Publisher
    Open Menu Record-Publisher
3.Check Url & Title
    Menu Record Should Be Open    
4.Test Search
    Test Search Record-Publisher
    Reload Page
    Sleep                           2.5s
5.Test Filter#
    Test Filter Record-Publisher 
6.Open Menu Delivery Location#
    Open Menu Record-Daylivery Location
7.Test Search Delivery Location
    Test Search Record-Delivery Location    
    Reload page 
    Sleep                                   4.5s 
8.Open Menu Inventory
    Open Menu Inventory
9.Test Search Data Inventory
    Test Search Data Inventory
    Reload Page 
     Sleep                         3s 
10.Test Filter Inventory
    Test Filter Inventory
    Reload Page
    Sleep   5s
11.Open Menu Record-User
    Open Menu Record-User
    Check Title&Url&MenuTitle
12.Test Search Form Email 
    Test Search Form E-mail Record-User    
13.Test Search Form Username
    Test Search Form Username
    [Teardown]    Close Browser
