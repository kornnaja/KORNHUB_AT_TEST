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
2.Open Menu General-Information  
    Open Menu general information
3.Test Menu Bank List 
    Open Menu Bank List 
4.Test Add Null Value
    Test Add Null Value        
5.Test Add Bank
    Test Add Bank
    Reload Page 
    Sleep  3.5s
6.Test Search Bank List 
    Test Search Bank List    
7.Test Delete Bank list
    Test Delete Bank List    
8.Open Set Up Coupons
    Open Set Up Coupons
9.Test Add Coupons
    Add Coupons
    Reload Page 
10.Open Menu Coin Value
    Open Set Coin Value  
11.Test Add Coin Value 
    Add Coin Value       
    Reload Page 
    Sleep  3.5s
    [Teardown]    Close Browser
    


