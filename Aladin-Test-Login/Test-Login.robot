***Settings***
Library    SeleniumLibrary 
Resource   ../Resource/Keyword.robot

***Variables***
${SERVER}      http://localhost:4200/#/login
${BROWSER}     chrome
${DELAY}       0.3
${HOME_URL}    http://localhost:4200/#/

**Test Cases***
1.Blank Username And Password
    Open Browser To Login Page
    Submit
    Element Text Should Be    xpath=//*[@id="swal2-html-container"]     Error: กรุณากรอกข้อมูลให้ครบทุกช่อง
    Sleep  3s
    [Teardown]                          Close Browser

#เทสLoginเเบบใส่ Username&Password ผิด
2. Failed Login
    Open Browser To Login Page
    Input Username&Password Failed
    Submit Login Failed 
    Page Login Failed Should Be Open

    [Teardown]                          Close Browser


#เทสLogin เเบบใส่Username&Password ถูก
3. valid Login
    Open Browser To Login Page
    Login Page Should Be Open 
    Go To Login Page 
    Input Username&Password
    Submit
    Home Page Should Be Open
    Click Logout Button
    [Teardown]                    Close Browser