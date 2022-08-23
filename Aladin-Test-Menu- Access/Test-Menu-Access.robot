***Settings***
Library     SeleniumLibrary 
Resource    ../Resource/Keyword.robot

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
2.Open Menu Access
    Click Open Menu Access
    Page Menu Access Should Be Open 
3.Add Main Menu (เพิ่มเมนูหลัก)
    Add Main Menu
    
#4.Delete Main Menu (ลบเมนูหลัก)
    #Delete Main Menu
5.Add Secondary Menu
    Add Secondary Menu    
    

6.Open System User Menu
    Open System User Menu  
    Page Should Be Open 
   
7.Test Search System User Menu
   Test Search System User Menu
8.Test Add To Blank User 
    Add To Blank  
    
9.Test Add User
    Input Add User    
    Select Type User  
    Save Add User
    Sleep  2.5s
    [Teardown]    Close Browser
10.Test Login System User        
    Open Browser To Login Page
    Maximize Browser Window
    Set Selenium Speed           ${DELAY}
    Input Username&Password System User
    Submit
    Home Page Should Be Open
    Click Logout Button
    Location Should Be    http://localhost:4200/#/login
    [Teardown]            Close Browser