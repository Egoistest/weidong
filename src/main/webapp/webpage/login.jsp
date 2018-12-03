
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        #wrap {
            height: 719px;
            width: 100%;
            background-image: url(../image/bgImage.png);
            background-repeat: no-repeat;
            background-position: center center;
            background-size:100%;
            position: relative;
        }

        #head {

            height: 120px;
            width: 100%;
            background-color: #C0EC76;
            text-align: center;
            position: relative;
        }
        #foot {
            width: 100%;
            height: 126px;
            background-color: #89DB79;
            position: relative;
        }
        #wrap .logGet {
            opacity:0.8;
            height: 458px;
            width: 368px;
            position: absolute;
            background-color: #FFFFFF;
            top: 20%;
            right: 15%;
        }
        .logC a button {
            width: 100%;
            height: 45px;
            background-color: #7E78C7;
            border: none;
            color: white;
            font-size: 18px;
        }
        .logGet .logD.logDtip .p1 {
            display: inline-block;
            font-size: 28px;
            margin-top: 30px;
            width: 86%;
        }
        #wrap .logGet .logD.logDtip {
            width: 86%;
            border-bottom: 1px solid #ee7700;
            margin-bottom: 60px;
            margin-top: 0px;
            margin-right: auto;
            margin-left: auto;
        }
        .logGet .lgD img {
            position: absolute;
            top: 12px;
            left: 8px;
        }
        .logGet .lgD input {
            width: 100%;
            height: 42px;
            text-indent: 2.5rem;
        }
        #wrap .logGet .lgD {
            width: 86%;
            position: relative;
            margin-bottom: 30px;
            margin-top: 30px;
            margin-right: auto;
            margin-left: auto;
        }
        #wrap .logGet .logF {
            width: 86%;
            position: relative;
            margin-bottom: 30px;
            margin-top: 30px;
            margin-right: auto;
            margin-left: auto;
        }
        .logGet .lgF input {
            width: 40%;
            height: 42px;
            text-indent: 2.5rem;
            margin-left: 7%;
        }
        .logGet .logF .refleshCheckCode{

            font-size: 13px;
        }
        #wrap .logGet .logC {
            width: 86%;
            margin-top: 20px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;
        }
        #wrap .logGet .logE {
            width: 86%;
            margin-top: 5px;
            margin-right: auto;
            margin-bottom: 0px;
            margin-left: auto;
        }

        .logE a{

            font-size: 13px;
        }

        .title {
            font-family: "宋体";
            color: #FFFFFF;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 45px;
            height: 40px;
            width: 50%;
        }

        .copyright {
            font-family: "宋体";
            color: #FFFFFF;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            height: 60px;
            width: 40%;
            text-align:center;
        }


        #foot .copyright .img {
            width: 100%;
            height: 24px;
            position: relative;
        }
        .copyright .img .icon {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-image: ;
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }

        .copyright .img .icon1 {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-image: ;
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }
        .copyright .img .icon2 {
            display: inline-block;
            width: 24px;
            height: 24px;
            margin-left: 22px;
            vertical-align: middle;
            background-image: ;
            background-repeat: no-repeat;
            vertical-align: middle;
            margin-right: 5px;
        }
        #foot .copyright p {
            height: 24px;
            width: 100%;
        }
    </style>

</head>

<body>
<div class="header" id="head">
    <div class="title">微&nbsp;动</div>

</div>

<div class="wrap" id="wrap">
    <div class="logGet">

        <div class="logD logDtip">
            <p class="p1">登录</p>
        </div>

        <div class="lgD">
            <img src="" width="20" height="20" alt=""/>
            <input type="text"
                   placeholder="输入用户名" />
        </div>
        <div class="lgD">
            <img src="" width="20" height="20" alt=""/>
            <input type="text"
                   placeholder="输入用户密码" />
        </div>
        <div class="lgF">
            <input type="text" placeholder="输入验证码"/>
            <img id="checkCode" class="refleshCheckCode" alt="点击更换验证码" src="imageServlet">
            <a class="refleshCheckCode" href="javaScript:;"  >更换</a>
        </div>
        <div class="logC">
            <a href="main.jsp" target="_self"><button>登 录</button></a>
        </div>
        <div class="logE"><a href="register.jsp">忘记密码</a></div>

    </div>
</div>

<div class="footer" id="foot">
    <div class="copyright">
        <p>Copyright © 2018 WEIDONG .</p>
        <div class="img">
            <i class="icon"></i><span>联系邮箱：Egoistest@163.com</span>
        </div>

        <div class="img">
            <i class="icon1"></i><span>联系地址：江西师范大学</span>
        </div>

        <div class="img">
            <i class="icon2"></i><span>联系电话：15107074401</span>
        </div>


    </div>

</div>

</body>
</html>