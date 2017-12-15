*** Settings ***
Library    SeleniumLibrary    
Resource    ../Common/元素位置.robot
Resource    ../测试数据/公用数据.robot
Resource    ../测试数据/投标-测试数据.robot
Resource    ../用户关键字/登录页.robot
Resource    ../用户关键字/首页.robot
Force Tags    投标测试
Test Setup    登录    ${登录地址}    ${登录用户名}    ${登录密码}
Test Teardown    Close Browser
    

*** Test Cases ***
通过点击抢投标按钮进入投标信息界面进行合规金额投标
    首页.通过传入标名点击该标名下方的抢投标按钮    Joy