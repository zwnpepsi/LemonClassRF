*** Settings ***
Resource    ../Common/元素位置.robot
Library    SeleniumLibrary    
Library    String    

*** Keywords ***
获取昵称
    Wait Until Page Contains Element    ${首页-我的账户按钮}    30
    [Return]    ${昵称}
    ${昵称}    Get Text    ${首页-我的账户按钮}

点击页面上方投标按钮
    Wait Until Page Contains Element    ${首页-投标按钮}    30
    Click Element    ${首页-投标按钮}
    
通过传入标名点击该标名下方的抢投标按钮
    [Arguments]    ${bid_name}
    ${抢投标按钮}    Replace String    ${首页-投标按钮}    %s    ${bid_name}    
    Wait Until Page Contains Element    ${抢投标按钮}    
    Click Element    ${抢投标按钮}
    
    
    