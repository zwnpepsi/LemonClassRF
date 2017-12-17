*** Variables ***
${首页-投标名称}    //span[contains(text(),'%s')]
${首页-抢投标按钮}    //span[contains(text(),'%s')]/ancestor::a/following-sibling::div//a[text()='抢投标']
${首页-我的账户按钮}    //a[@href='/Member/index.html']
${首页-投标按钮}    //a[text()='投标']

${登录页-用户名输入框}    //*[@name='phone']
${登录页-密码输入框}    //*[@name='password']
${登录页-登录按钮}    //button[text()='登录']
${登录页-密码提示信息}    //input[@name='password']//following-sibling::div[@class='form-error-info']
${登录页-账号提示信息}    //input[@name='phone']//following-sibling::div[@class='form-error-info']
${登录页-报错信息}    //div[@class='layui-layer-content']

${我的账户页面-我的余额}    //li[@class='color_sub']
${我的账户页面-投资项目按钮}    //div[text()='投资项目']
${我的账户页面-投资项目里第一个标的日期}    //div[@ms-html='item.date']
${我的账户页面-投资项目里第一个标的时间}    //div[@ms-html='item.time']
${我的账户页面-投资项目里第一个标的名称}    //div[@class='deal_tab_font1']//a

${投标页面-投标金额}    //span[contains(text(),'%s')]/ancestor::div[@class='title']/following-sibling::div[1]//input[@data-url='/Invest/invest']
${投标页面-投标金额下方投标按钮}    //span[contains(text(),'%s')]/ancestor::div[@class='title']/following-sibling::div[1]//button
${投标页面-投标金额右侧全投按钮}    //span[contains(text(),'%s')]/ancestor::div[@class='title']/following-sibling::div[1]//input[@class='set-all']
${投标页面-投标成功提示文字}    //div[@class='layui-layer-content']//div//div[@class='capital_font1 note']
${投标页面-金额错误提示文字}    //div[@class='text-center']
${投标页面-标名}    //span[contains(text(),'%s')]
${投标页面-投标成功页面右上角x按钮}    //div[@class='layui-layer-content']//div//div//img[contains(@src,'close')]

${投标信息页面-投标金额}      //input[@data-url='/Invest/invest']
${投标信息页面-投标金额下方投标按钮}    //button[text()='投标']
${投标信息页面-投标金额右侧全投按钮}    //input[@class='set-all']
${投标信息页面-投标成功提示文字}    //div[@class='layui-layer-content']//div//div[@class='capital_font1 note']
${投标信息页面-金额错误提示文字}    //div[@class='text-center']
${投标信息页面-标名}    //div[@class='float_left']//span//following-sibling::span
${投标信息页面-投标成功页面右上角x按钮}    //div[@class='layui-layer-content']//div//div//img[@src='/Public/frontend/images/close_pop.png']
    

