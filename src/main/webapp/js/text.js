
    /*不传值，统一走默认值*/
    let captcha1 = new Captcha();
    captcha1.draw(document.querySelector('#captcha1'), r => {
        console.log(r, '验证码1');
    });

    /*传值,参数配置值，选择性配置*/
    let captcha2 = new Captcha({
        lineWidth: 1,   //线条宽度
        lineNum: 6,       //线条数量
        dotR: 2,          //点的半径
        dotNum: 25,       //点的数量
        preGroundColor: [10, 80],    //前景色区间
        backGroundColor: [150, 250], //背景色区间
        fontSize: 30,           //字体大小
        fontFamily: ['Georgia', '微软雅黑', 'Helvetica', 'Arial'],  //字体类型
        fontStyle: 'stroke',      //字体绘制方法，有fill和stroke
        content: '一个验证码abcdefghijklmnopqrstuvw生成的插件使用的是canvas显示',  //验证码内容
        length: 6    //验证码长度
    }); // 传值
    captcha2.draw(document.querySelector('#captcha2'), r => {
        console.log(r, '验证码2');
    });
