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

#****SATART LOGIN FAILED*****
Login Failed
    Open Browser    ${SERVER}    ${BROWSER}
Input Username&Password Failed
    Input Text    css:input[placeholder="กรุณากรอกชื่อบัญชี"]    admin 
    Input Text    css:input[placeholder="กรุณากรอกรหัสผ่าน"]     123455
Submit Login Failed
    click Element    xpath=/html/body/app-root/app-login/div[2]/div[2]/mat-card/mat-card-content/div[3]/button
Page Login Failed Should Be Open
    Location Should Be    ${SERVER}                                       
    Title Should Be       AladinFrontend 
    #เช็คค่าจากAlert
    Element Text Should Be    xpath=//*[@id="swal2-html-container"]    Error: ชื่อบัญชีหรือรหัสผ่านผิด
    Click Button          xpath=/html/body/div[2]/div/div[6]/button[1]
# ****END LOGIN FAILED ****

# **** Open Menu Statistics ****
Click Open Menu Statistics
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[1]/span
Page Menu Statistics Should Be Open
    Location Should Be    http://localhost:4200/#/statistics 
    Element Should Contain    xpath=/html/body/app-root/app-main-page/mat-toolbar/span[1]     ผลรวมสถิติ
    Title Should Be       ผลรวมสถิติ

# **** END Open Menu Statistics ****

# **** Start Open Menu Access ****
Click Open Menu Access
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[2]/span
    Click Element    xpath= /html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[3]/span    
Page Menu Access Should Be Open
    Location Should Be    http://localhost:4200/#/access-admin
    Title Should Be       เมนูหลังบ้าน

# **** End Open Menu Access ****
  
#***เพิ่มเมนูหลัก***
Add Main Menu
    Click Button     xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-access-page-admin/table/tr[1]/th[4]/button[1]    
    Input Text    css:input[id="mat-input-2"]    testinputForCssSelector
    Input Text    css:input[id="mat-input-3"]    testinputForCssSelector2
    Input Text    css:input[id="mat-input-4"]    testinputForCssSelector3
                                     
    #Input Text   css:input[aria-invalid="false"]    ddd
    Click Element    xpath=//*[@id="mat-dialog-0"]/app-modal-manage-page-admin/div[2]/button[1]/span[1] 
    Click Element    xpath=/html/body/div[4]/div/div[6]/button[1]
 #***END Add Main Menu ****

#***Start Delete Main Menu ***
Delete Main Menu
    #กดปุ่มลบ
    Click Button     xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-access-page-admin/table/tr[65]/td[4]/button[2]
    #กดยืนยัน
    Click Element    xpath=/html/body/div[5]/div/div[6]/button[1]
    #กดOK
    Click Button     xpath=/html/body/div[5]/div/div[6]/button[1]

#****End Delete Main Menu *****


#****Start Add Secondary Menu *****
Add Secondary Menu
    Click Button     xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-access-page-admin/table/tr[1]/th[4]/button[2]
    Click Element    xpath=//*[@id="mat-select-value-1"]/span

    #เลือกหมวดหมู่หลัก
    Sleep  2.5s
    Click Element    css:mat-option[ng-reflect-value="191"]  
    Input Text       name=name                             testNameหมวดหมู่รอง
    Input Text       name=pathUrl                             testPathหมวดหมู่รอง
    Input Text       name=icon                             testไอคอนหมวดหมู่รอง
    Click Element    name=save
    Click Button     xpath=/html/body/div[4]/div/div[6]/button[1]
#****End Add Secondary Menu *****

#****Start Test System User Menu    ***** 

Open System User Menu
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[4]/span
Page Should Be Open
    Location Should Be    http://localhost:4200/#/access-user
    Title Should Be       ผู้ใช้งานระบบ
Test Search System User Menu
    Input Text    css:input[aria-required="false"]     korn
    Element Text Should Be    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-access-page-user/div/table/tbody/tr[1]/td[2]   korn
Add To Blank  
    Click Button    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-access-page-user/div/table/thead/tr/th[6]/button  
    Click Button    name=save
    Element Text Should Be    name=save    บันทึก
Input Add User    
  Input Text      name=firstname                                    Chamikornnn           
  Input Text      name=lastname                                   kornnn                
  Input Text      name=nickname                                   kornnn                
  Input Text      name=username                                   korn25555             
  Input Text      name=password                                   12345678              
  Input Text      name=email                                      kornn267@gmail.com
Select Type User  
  Click Element   id=selectType
  Click Element   css:mat-option[ng-reflect-value="S"]
Save Add User  
  Click Button    name=save
  Click Button    xpath=/html/body/div[5]/div/div[6]/button[1]
#****End Test System User Menu    ***** 


#****Start Test Login System User    ***** 
Input Username&Password System User
    Input Text    css:input[placeholder="กรุณากรอกชื่อบัญชี"]    korn25555 
    Input Text    css:input[placeholder="กรุณากรอกรหัสผ่าน"]     12345678
#****END Test Login System User    *****

#****Start Test Publisher-Score *
Open PublisherScore Menu
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[3]/span
Page PublisherScore Should Be Open
    Location Should Be    ${PublisherScore_Url}
    #Title Should Be คือตรวจสอบTitleของหน้านั้นๆ
    Title Should Be       คะแนนพับบลิชเชอร์        
Test Search PublisherScore
    Input Text                css:input[placeholder="พิมพ์ข้อความสำหรับค้นหา"]                                                                                       S0200000141
    Element Should Contain    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-publisher-score/div/table/tbody/tr[1]/td[2]    S0200000141 
Test Filter
    Click Element             xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-publisher-score/mat-card/div/div[2]/mat-form-field/div/div[1]/div
    Click Element             xpath=//*[@id="mat-option-7"]/span                                                                                                                           
    Element Should Contain    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-publisher-score/div/table/tbody/tr[1]/td[4]                          เกษตรกร 
#****END Test Publisher-Score ***



#****Start Test Menu Record-Publisher***
Open Menu Record-Publisher
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[4]/span
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[5]/span
Menu Record Should Be Open
    Location Should Be    http://localhost:4200/#/record-publisher
    Title Should Be       ระเบียน
Test Search Record-Publisher
    Input Text                css:input[placeholder="พิมพ์ข้อความสำหรับค้นหาร้านค้า"]                                                                                 Store6
    Element Should Contain    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-publisher/div/table/tbody/tr[1]/td[3]    Store6    
Test Filter Record-Publisher
    sleep            5s
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-publisher/mat-card/div/div[2]/mat-form-field/div/div[1]/div

    Click Element             xpath=//*[@id="mat-option-6"]/span
    Element Should Contain    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-publisher/div/table/tbody/tr[1]/td[7]    อนุมัติ
#****END Test Menu Record-Publisher ***

#****Start Test Menu Record-Daylivery Location ***
Open Menu Record-Daylivery Location
    Sleep            5s
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[4]/span
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[6]/span
Test Search Record-Delivery Location
    Input Text                css:Input[ng-reflect-placeholder="พิมพ์ข้อความสำหรับค้นหา"]                                                                                  บ้านของฉัน
    Element Should Contain    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-place-delivery/div/table/tbody/tr[1]/td[2]    บ้านของฉัน
    Reload Page               
    Input Text                css:Input[ng-reflect-placeholder="พิมพ์ข้อความสำหรับค้นหา"]                                                                                  Agent         
    Element Should Contain    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-place-delivery/div/table/tbody/tr[1]/td[2]    Agent
     
#****End Test Menu Record ***


#****Start Test Menu Inventory ***
Open Menu Inventory
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[4]/span
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[7]/span
    Title Should Be    ระเบียน
    Element Should Contain   xpath=/html/body/app-root/app-main-page/mat-toolbar/span[1]    คลังรายการ
    Location Should Be    http://localhost:4200/#/record-inventory
Test Search Data Inventory
    Input Text   css:input[data-placeholder="พิมพ์ข้อความสำหรับการค้นหา"]     USB   
    Element Should Contain    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-inventory/div/table/tbody/tr[1]/td[2]    USB 
    
Test Filter Inventory
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-inventory/div/div/div[2]/mat-form-field/div   
    Click Element    css:mat-option[ng-reflect-value="2"]
    Element Text Should Be    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-inventory/div/table/tbody/tr[1]/td[7]    รออนุมัติ

Open Menu Record-User
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[4]/span  
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[8]/span
Check Title&Url&MenuTitle
    Title Should Be   ระเบียน
    Location Should Be    http://localhost:4200/#/record-member
    Element Text Should Be   xpath=/html/body/app-root/app-main-page/mat-toolbar/span[1]    สมาชิก

Test Search Form E-mail Record-User
    Input Text    css:input[data-placeholder="พิมพ์ข้อความสำหรับค้นหาร้านค้า"]    testjaa@gmail.com	

    Element Text Should Be    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-member/div/table/tbody/tr/td[3]         testjaa@gmail.com

    Clear Element Text    css:input[data-placeholder="พิมพ์ข้อความสำหรับค้นหาร้านค้า"] 
Test Search Form Username
    Input Text    css:input[data-placeholder="พิมพ์ข้อความสำหรับค้นหาร้านค้า"]    KORN
    Element Text Should Be    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-record-member/div/table/tbody/tr[1]/td[2]     KORN

#END

#***Start-Test-Menu-Item-Score****
Open Menu Item-Score
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[6]/span
Location Should Be Item-Score  
    Location Should Be    http://localhost:4200/#/item-score 
    Title Should Be    คะเเนนรายการ
Test Search Menu Item-Score FormNameProduct
    Input Text   css:input[aria-invalid="false"]    USB
    Element Text Should Be    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-item-score/div/table/tbody/tr[1]/td[2]   USB
Test Search Menu Item-Score FormNameStore 
    Clear Element Text    css:input[aria-invalid="false"]
    Input Text   css:input[aria-invalid="false"]    IDESTORE
    Element Text Should Be    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-item-score/div/table/tbody/tr[1]/td[5]   IDESTORE
#***End-Test-Menu-Item-Score****

#***Start-Test-Menu-Setting-Category****
Open Menu Setting-Category
    Wait Until Page Contains Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[8]/span
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[8]/span
Click Menu Item-Category
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[9]/span 
    Location Should Be    http://localhost:4200/#/category-item
    Title Should Be    ตั้งค่าหมวดหมู่
    Element Text Should Be   xpath=/html/body/app-root/app-main-page/mat-toolbar/span[1]     หมวดหมู่รายการ
Click Add Item-Category
    Click Button    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-category-item/div/table/thead/tr/th[4]/button  
Input Item-Category
    Input Text   name=categoryName     TestAdd&Delete
Click Save Item-Category
    Click Button   name=saveCategory 
Click Accept
    Click Button   xpath=/html/body/div[5]/div/div[6]/button[1] 
Test Search Item-Category
    Input Text    css:input[aria-invalid="false"]   TestAdd&Delete 
    Element Text Should Be    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-category-item/div/table/tbody/tr[1]/td[2]    TestAdd&Delete 
Test Delete Item-Category
    Click Button   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-category-item/div/table/tbody/tr[1]/td[4]/button[2]
    Click Button   xpath=/html/body/div[4]/div/div[6]/button[1]    
    Click Button   xpath=/html/body/div[4]/div/div[6]/button[1] 
#***Sub Item-Category****
Open Menu Sub-Item-Category
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[10]/span
    Location Should Be   http://localhost:4200/#/category-sub-item
    Title Should be    ตั้งค่าหมวดหมู่
Add Sub Item-Category
    Click Button   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-category-sub-item/div/table/thead/tr/th[4]/button
Input Sub-Item 
    Input Text    name=subCat       TestAdd&DeleteSubItem
    Click Element   name=mainCat
    Click Element    xpath=//*[@id="mat-option-23"]/span
Save Sub Item 
    Click Button   name=save
    Click Element   xpath=/html/body/div[5]/div/div[6]/button[1]
Test Search SubItem
    Input Text    css:input[aria-required="false"]    TestAdd&DeleteSubItem
    Element Text Should Be   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-category-sub-item/div/table/tbody/tr/td[1]    TestAdd&DeleteSubItem 
Test Delete SubItem
    Click Button   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-category-sub-item/div/table/tbody/tr/td[4]/button[2]   
    Click Button   xpath=/html/body/div[4]/div/div[6]/button[1]
    Click Button   xpath=/html/body/div[4]/div/div[6]/button[1]
#***END Sub Item-Category****

#***Start Test Menu Publisher-Group****
Open Menu Publisher-Group
    Click Element    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[11]/span
    Location Should Be    http://localhost:4200/#/publisher-group
    Title Should Be   ตั้งค่าหมวดหมู่
Test Add publisher-Group
    Click Button   xpath=//*[@id="cdk-drop-list-0"]/thead/tr/th[3]/button  
Input Publisher-Group
    Input Text   name=pubCatName      TestaddPublisherGroup
    Input Text   name=pubIcon      TestaddPublisherGroup
    Input Text   name=iconCamelName      TestaddPublisherGroup
Save Publisher-Group
    Click Element   name=save
    Click Button    xpath=/html/body/div[5]/div/div[6]/button[1]    
Test Search Publisher-Group
    Input Text   css:input[aria-required="false"]   TestaddPublisherGroup
    Element Text Should Be    xpath=//*[@id="cdk-drop-list-0"]/tbody/tr/td[2]    TestaddPublisherGroup  
Test Delete Publisher-Group
    Click Button   xpath=//*[@id="cdk-drop-list-0"]/tbody/tr[1]/td[3]/button[2]    
    Click Button   xpath=/html/body/div[4]/div/div[6]/button[1] 
    Element Text Should Be   xpath=//*[@id="swal2-html-container"]   บันทึกสำเร็จ
    Click Button   xpath=/html/body/div[4]/div/div[6]/button[1]
#***End Test Menu Publisher-Group****

#***Start Test Menu Setting-General****
Open Menu general information
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[18]/span
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[19]/span
    Location Should Be   http://localhost:4200/#/setting-information 
    Title Should Be    ตั้งค่าทั่วไป
Open Menu Bank List 
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[20]/span
    Location Should Be  http://localhost:4200/#/setting-bank
    Title Should Be   ตั้งค่าทั่วไป
Test Add Null Value 
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-bank-list/div/table/thead/tr/th[4]/button
    Click Button   name=save
    Element Text Should Be    xpath=//*[@id="mat-dialog-0"]/app-modal-manage-bank/div[2]/button[1]    บันทึก    
Test Add Bank   
    Input Text   name=bankName       TestBankName  
    Click Button   name=save 
    Element Text Should Be   xpath=//*[@id="swal2-html-container"]   บันทึกสำเร็จ
    Click Button   xpath=/html/body/div[5]/div/div[6]/button[1]
Test Search Bank List
    Input Text   css:input[data-placeholder="พิมพ์ข้อความสำหรับค้นหาธนาคาร"]    TestBankName   
    Element Text Should Be   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-bank-list/div/table/tbody/tr/td[2]     TestBankName
Test Delete Bank List 
    Click Button   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-bank-list/div/table/tbody/tr/td[4]/button[2] 
    Wait Until Page Contains Element    xpath=/html/body/div[4]/div/div[6]/button[1]
    Click Button   xpath=/html/body/div[4]/div/div[6]/button[1]
    Element Text Should Be   xpath=//*[@id="swal2-html-container"]    บันทึกสำเร็จ
    Reload Page
Open Set Up Coupons 
    Wait Until Page Contains Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[18]/span    
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[18]/span
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[21]/span
    Location Should Be  http://localhost:4200/#/setting-coupon
    Title Should Be    ตั้งค่าทั่วไป
Add Coupons 
    Clear Element Text   css:input[type="number"]    
    Input Text   css:input[type="number"]     200 
    Click Button   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-setup-conpon/div/div[2]/mat-card/div[2]/button    
    Click Button   xpath=/html/body/div[4]/div/div[6]/button[1]
    Element Text Should Be    xpath=//*[@id="swal2-html-container"]   บันทึกสำเร็จ
Open Set Coin Value   
    Wait Until Page Contains Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[18]/span    
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[18]/span
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[22]/span
    Location Should Be    http://localhost:4200/#/setting-coin
    Title Should Be    ตั้งค่าทั่วไป
Add Coin value 
    Clear Element Text    css:input[type=number]
    Input Text    css:input[type="number"]    0.99
    Click Button   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-setup-coin/div/div[2]/mat-card/mat-card-content/div[3]/button
    Click Button   xpath=/html/body/div[3]/div/div[6]/button[1]
    Element Text Should Be   xpath=//*[@id="swal2-html-container"]    บันทึกสำเร็จ
#***End Test Menu Setting-General****

#***Start Test Menu Contact US ****
Open Menu Contact US 
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer/div/mat-action-list/button[25]/span
    Location Should Be  http://localhost:4200/#/contact
    Title Should Be    ติดต่อเรา
Test Search Contact US 
    Input Text   css:input[aria-invalid="false"]    Test Contact-Us
    Element Text Should Be    xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-contact/div/table/tbody/tr/td[2]   Test Contact-Us      
Test Read Message
    Click Element   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-contact/div/table/tbody/tr/td[1]
    Click Element  xpath=//*[@id="mat-dialog-0"]/app-modal-manage-contact/div[3]/button/span[1]
Test Delete Message 
    Clear Element Text   css:input[aria-invalid="false"]
    Input Text   css:input[aria-invalid="false"]    Test Contact-Us
    Click Button   xpath=/html/body/app-root/app-main-page/mat-drawer-container/mat-drawer-content/div/app-contact/div/table/tbody/tr[2]/td[6]/button
    Click Button   xpath=/html/body/div[5]/div/div[6]/button[1]
    Element Text Should Be    xpath=//*[@id="swal2-html-container"]   บันทึกสำเร็จ      
    Click Button   xpath=/html/body/div[5]/div/div[6]/button[1]
#***End Test Menu Contact US ****
 

