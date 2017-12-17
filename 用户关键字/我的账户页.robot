*** Settings ***
Resource    ../Common/元素位置.robot
Library    SeleniumLibrary    
Library    String    

*** Keywords ***
获取余额
    Wait Until Element Is Visible    ${我的账户页面-我的余额}
    [Return]    ${余额[0]}
    ${余额_包含元字}    Get Text    ${我的账户页面-我的余额}
    @{余额}    Split String    ${余额_包含元字}    元
    
获取投标成功后已投标信息(日期，时间，标名)
    Wait Until Element Is Visible    ${我的账户页面-投资项目按钮}
    Focus    ${我的账户页面-投资项目按钮}
    Click Element    ${我的账户页面-投资项目按钮}        
    Sleep    1
    Wait Until Element Is Visible    ${我的账户页面-投资项目里第一个标的日期}
    ${我的账户页-投标日期}    Get Text    ${我的账户页面-投资项目里第一个标的日期}
    ${我的账户页-投标时间}    Get Text    ${我的账户页面-投资项目里第一个标的时间}
    ${我的账户页-已投标名称}    Get Text    ${我的账户页面-投资项目里第一个标的名称}
    @{已投标信息}    Create List    ${我的账户页-投标日期}    ${我的账户页-投标时间}    ${我的账户页-已投标名称}
    [Return]    @{已投标信息}
    
            
    