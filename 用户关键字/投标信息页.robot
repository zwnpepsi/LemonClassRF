*** Settings ***
Resource    ../Common/元素位置.robot
Library    SeleniumLibrary    
Library    String    
Library    DateTime    

*** Keywords ***
获取完整标名
    Wait Until Element Is Visible    ${投标信息页面-标名}    30
    ${完整标名}    Get Text    ${投标信息页面-标名} 
    [Return]    ${完整标名}

正常投标并获取投标时间
    [Arguments]    ${money}
    [Return]    @{调整格式后投标日期及时间}
    Wait Until Page Contains Element    ${投标信息页面-投标金额}    30 
    Focus    ${投标信息页面-投标金额}  
    Input Text    ${投标信息页面-投标金额}    ${money}
    Focus    ${投标信息页面-投标金额下方投标按钮}
    Click Button    ${投标信息页面-投标金额下方投标按钮}
    ${调整格式前投标日期及时间}    DateTime.Get Current Date    result_format=%Y-%m-%d %H:%M  
    @{调整格式后投标日期及时间}    Split String    ${调整格式前投标日期及时间} ${EMPTY}         
    
获取投标成功提示
    [Return]    ${投标成功提示}
    Wait Until Element Is Visible    ${投标信息页面-投标成功提示文字}    30
    ${投标成功提示}    Get Text    ${投标信息页面-投标成功提示文字}   
    
关闭投标成功提示框_通过该框内x按钮
    Wait Until Element Is Enabled    ${投标信息页面-投标成功页面右上角x按钮}    30
    Click Element    ${投标信息页面-投标成功页面右上角x按钮}    
    
    