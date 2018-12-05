
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
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <base href="<%=basePath%>"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style type="text/css">
        html{
            position:relative;
            min-height:100%;}
        body{
            width:100%;
            margin-bottom:60px;

            background-repeat: repeat-x;
        }
        a{color:#000;}
        a:hover{
            color:#F00;
            text-decoration:none;
        }
        #foot{
            position:absolute;
            bottom:0;
            width:100%;
            height:60px;
            background-color:#f5f5f5;
        }
        .navbar-default .navbar-nav{
            text-align:center;
            float:none;}
        .navbar-default .navbar-nav li{
            display:inline-block;
            float:none;}



        #wrap {
            height: 719px;
            width: 100%;
            background-image: url(../image/bgImage.png);
            background-repeat: no-repeat;
            background-position: center center;
            background-size:100%;
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
    </style>
</head>

<body>
<div id="body">
    <div id="head" class="row">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color: #8DC4F8">
            <div class="container-fluid">
                <div class="navbar-header col-lg-1 col-md-1 col-sm-1 col-xs-1" >
                    <strong><a class="navbar-brand " href="#">微&nbsp;&nbsp;&nbsp;动</a></strong>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <ul class="nav navbar-nav " style="float:left;">
                        <li><a href="#" >&nbsp;&nbsp;社&nbsp;团&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;活&nbsp;动&nbsp;&nbsp;</a></li>
                        <li><a href="#">&nbsp;比&nbsp;赛</a></li>
                    </ul>
                </div>
                <form class="navbar-form " role="search">
                    <div class="form-group col-lg-3 col-md-5 col-sm-5 col-xs-5">
                        <input type="text" class="form-control input-sm" placeholder="Search">
                        <button type="submit" class="btn btn-default btn-sm">搜索</button>
                </form>
            </div>
            <div class="" >
                <button style="float:right; margin-left:10px" type="button" class="btn btn-default  btn-sm">注册</button>
                <button style="float:right; " type="button" class="btn btn-default btn-sm">登陆</button>
            </div>
    </div>
    </nav>
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





<div id="foot" style="margin-top:35px;">
    <nav class="navbar navbar-default navbar-fixed-bottm" role="navigation">
        <div class="container-fluid">
            <ul class="nav navbar-nav nav-tabs-justified">
                <li><a href="#">联系我们</a></li>
                <li><a href="#">意见反馈</a></li>
                <li><a href="#">学校链接</a></li>
                <li><a href="#">企业合作</a></li>
                <li><a href="#">帮助中心</a></li>
            </ul>
        </div>
    </nav>
</div>
</div>
</body>
</html>
