***Settings***
Library    SeleniumLibrary 
Resource   Resource/Keyword.robot

***Variables***
${SERVER}      http://localhost:4200/#/login
${BROWSER}     chrome
${DELAY}       0.3
${HOME_URL}    http://localhost:4200/#/



#------------------------------------------------------------------------------#
***Test Cases***
1. Failed Login
    Open Browser To Login Page
    Input Username&Password Failed
    Submit Login Failed 
    Page Login Failed Should Be Open
    [Teardown]                          Close Browser

2. valid Login
    Open Browser To Login Page
    Login Page Should Be Open 
    Go To Login Page 
    Input Username&Password
    Submit
    Home Page Should Be Open
    #Click Logout Button
    #[Teardown]                    Close Browser
3.Open Menu Statistics
    Click Open Menu Statistics 

   #**ตรวจสอบ URL & Title WEB ****
    Page Menu Statistics Should Be Open

4.Open Menu Access
    Click Open Menu Access 
    Page Menu Access Should Be Open

5.Add Menu Main & Delete Main Menu 
    Add Main Menu
    #Delete Main Menu



#------------------------------------------------------------------------------# 
   
  





