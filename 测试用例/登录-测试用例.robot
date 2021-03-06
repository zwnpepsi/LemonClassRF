*** Settings ***
Library    SeleniumLibrary    
Resource    ../Common/元素位置.robot
Resource    ../测试数据/公用数据.robot
Resource    ../测试数据/登录-测试数据.robot
Resource    ../用户关键字/登录页.robot
Resource    ../用户关键字/首页.robot
Force Tags    登录测试

Test Teardown    Close Browser
    

*** Test Cases ***
#测试登录成功
登录成功
    登录页.登录    ${登录地址}    ${正确用户名}    ${正确密码}    
    ${我的昵称}    首页.获取昵称
    Should Contain    ${我的昵称}    ${检查昵称}    
  
#测试不输入密码进行登录操作
不输入密码进行登录
    登录页.登录    ${登录地址}    ${正确用户名}    ${EMPTY}
    ${未输入密码提示}    登录页.获得密码提示信息
    Should Contain    ${未输入密码提示}    ${检查密码输入}    
   
#测试不输入用户名进行登录操作
不输入用户名进行登录
    登录页.登录    ${登录地址}    ${EMPTY}    ${正确密码} 
    ${未输入用户名提示}    登录页.获得用户名提示信息
    Should Contain    ${未输入用户名提示}    ${检查用户名输入}   

#测试输入非法的用户名进行登录操作
输入非法用户名进行登录
    登录页.登录    ${登录地址}    ${错误用户名}    ${正确密码} 
    ${用户名错误提示}    登录页.获得报错信息
    Should Contain    ${用户名错误提示}    ${错误用户名提示}    
    
#测试输入非法密码机型登录操作
输入非法密码进行登录
    登录页.登录    ${登录地址}    ${正确用户名}    ${错误密码}
    ${密码错误提示}    登录页.获得报错信息
    Should Contain    ${密码错误提示}    ${错误密码提示}    
    