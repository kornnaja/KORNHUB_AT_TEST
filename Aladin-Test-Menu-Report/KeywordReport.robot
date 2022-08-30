***Settings***
Library    SeleniumLibrary 

***Keywords***
Open Browser To Login Page
    Open Browser                 ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed           ${DELAY}
    Login Page Should Be Open
Login Page Should Be Open
    Title Should Be    AladinFrontend
Go To Login Page
    Go To                         ${SERVER}
    Login Page Should Be Open 
Input Username&Password
    Input Text    css:input[placeholder="กรุณากรอกชื่อบัญชี"]    admin 
    Input Text    css:input[placeholder="กรุณากรอกรหัสผ่าน"]     123456 
Submit
    click Element    xpath=/html/body/app-root/app-login/div[2]/div[2]/mat-card/mat-card-content/div[3]/button
Home Page Should Be Open
    Location Should Be    ${HOME_URL} 
    #Title Should Be คือตรวจสอบTitleของหน้านั้นๆ
    Title Should Be       AladinFrontend 
    Element Text Should Be   xpath=/html/body/app-root/app-main-page/mat-toolbar/span[1]   Aladin Control Panel
   
#***** END LOGIN VALID ****

# ****StartLogout *****
Click Logout Button
    Click Button    xpath=/html/body/app-root/app-main-page/mat-toolbar/button[5]
Page Logout Should be 
    Location Should Be    http://localhost:4200/#/login    
# *****END LOGOUT *****

#***Test Report 4***
Test Report 4   
    Go to    http://localhost:4200/#/menu-report/0/refund-buyer-report
    Title Should Be    รายงานบัญชี
Test Search Report 4 
    Input Text   css:Input[aria-invalid="false"]     kom
    Element Text Should Be   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-refund-buyer-report/mat-card/div[3]/table/tbody/tr[1]/td[2]   komsan1
    Clear Element Text   css:Input[aria-invalid="false"]
Test Fillter Status 
    Click Element   xpath=//*[@id="mat-select-value-1"]   
    Click Element   xpath=//*[@id="mat-option-1"]
    Element Text Should Be  xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-refund-buyer-report/mat-card/div[3]/table/tbody/tr[1]/td[6]      รอตรวจสอบ    

    