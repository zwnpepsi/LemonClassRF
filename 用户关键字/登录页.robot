*** Settings ***
Resource    ../Common/元素位置.robot
Library    SeleniumLibrary    

*** Keywords ***
登录
    [Arguments]    ${url}    ${username}    ${password}
    Open Browser    ${url}    Chrome
    Maximize Browser Window
    Wait Until Element Is Visible    ${登录页-用户名输入框}    30
    Input Text    ${登录页-用户名输入框}    ${username}
    Input Text    ${登录页-密码输入框}    ${password}
    Click Button    ${登录页-登录按钮}
    
获得用户名提示信息
    Wait Until Page Contains Element    ${登录页-账号提示信息}        30
    [Return]    ${用户名报错信息}
    ${用户名报错信息}    Get Text    ${登录页-账号提示信息}
    
获得密码提示信息
    Wait Until Page Contains Element    ${登录页-密码提示信息}    30
    [Return]    ${密码报错信息}
    ${密码报错信息}    Get Text    ${登录页-密码提示信息}
    
获得报错信息
    Wait Until Element Is Visible    ${登录页-报错信息}    30
    [Return]    ${报错信息}
    ${报错信息}    Get Text    ${登录页-报错信息}
    
        