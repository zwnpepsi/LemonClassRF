*** Settings ***
Library    SeleniumLibrary    

Resource    ../Common/元素位置.robot
Resource    ../测试数据/公用数据.robot
Resource    ../测试数据/投标-测试数据.robot
Resource    ../用户关键字/登录页.robot
Resource    ../用户关键字/首页.robot
Resource    ../用户关键字/我的账户页.robot
Resource    ../用户关键字/投标信息页.robot

Force Tags    投标测试
Test Setup    登录    ${登录地址}    ${登录用户名}    ${登录密码}
Test Teardown    Close Browser
    

*** Test Cases ***
通过点击抢投标按钮进入投标信息界面进行合规金额投标
    Comment    获取投资前余额
    首页.点击我的账户按钮进入我的账户页面
    ${投资前余额}    我的账户页.获取余额
    Sleep    0.5    
    Go Back
    
    Comment    验证投标提示文字是否正确
    首页.通过传入标名点击该标名下方的抢投标按钮    ${标名}
    Sleep    0.5   
    ${此次投标完整标名}    投标信息页.获取完整标名
    @{此次投标时间}    投标信息页.正常投标并获取投标时间    ${投标金额}
    Sleep    0.5   
    ${投标成功提示文字}    投标信息页.获取投标成功提示
    Should Contain    ${投标成功提示文字}    ${投标成功提示}    
    
    Comment    验证投标后余额是否正确
    Sleep    1    
    投标信息页.关闭投标成功提示框_通过该框内x按钮
    Sleep    0.5
    首页.点击我的账户按钮进入我的账户页面
    ${投标后余额}    我的账户页.获取余额
    ${投资后余额减少的部分}    Evaluate    ${投资前余额}-${投标后余额}    
    Should Be Equal As Numbers   ${投标金额}    ${投资后余额减少的部分}    
    
    Comment    验证投标信息是否正确
    @{投资记录中的投标信息}    我的账户页.获取投标成功后已投标信息(日期，时间，标名)
    Should Be Equal    ${投资记录中的投标信息[0]}    ${此次投标时间[0]}     
    Should Be Equal    ${投资记录中的投标信息[1]}     ${此次投标时间[1]} 
    Should Be Equal    ${投资记录中的投标信息[2]}    ${此次投标完整标名}
    
    
        
    
    