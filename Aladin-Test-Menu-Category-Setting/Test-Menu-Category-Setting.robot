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
2.Open Menu Setting-Category
    Open Menu Setting-Category
3.Test Menu Item-Category
    Click Menu Item-Category 
4.Test Add Blank Menu#
    Click Add Item-Category
    Click Save Item-Category
    Handle Alert   action=ACCEPT
5.Add Item-Category   
    Input Item-Category
    Click Save Item-Category
    Click Accept
    Reload Page 
6.Test Search Item-Category#
    Test Search Item-Category
7.Test Delete Item-Category#
    Test Delete Item-Category 
    Reload page
    Test Search Item-Category
    Sleep  5s 
    Tets Menu Sub-Item
8.Open Menu Sub Item
    Open Menu Setting-Category
    Open Menu Sub-Item-Category
9.Add SubItem 
    Add Sub Item-Category
    Input Sub-Item 
    Save Sub Item 
    Reload Page
10.Test Search SubItem
    Test Search SubItem
11.Test Delete SubItem
    Test Delete SubItem
    Reload Page
    Sleep  3.5s
#Test Publisher-Group
12.Open Menu Publisher-Group
    Open Menu Setting-Category
    Open Menu Publisher-Group
13.Test Add publisher-Group
    Test Add publisher-Group
    Input Publisher-Group
    Save Publisher-Group
    Reload Page
14.Test Search    
    Test Search Publisher-Group
15.Test Delete Publisher-Group
    Test Delete Publisher-Group
    Reload Page
    [Teardown]    Close Browser
    

   
    





