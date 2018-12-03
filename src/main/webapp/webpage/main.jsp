<%@ page language="java" contentType="text/html; charset=UTF-8"
          pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


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
            margin-bottom:60px;}
        #head{
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
        #by-1{
            box-shadow:10px 10px 10px #CCC ;
            width:600px;
            margin:0 auto;
        }
        #by-2{
            height:24px;
            width:600px;
            margin:0 auto;
            text-align:center;
            vertical-align:middle;
            letter-spacing:10px;
        }
        #by-3{
            width:1120px;
            margin:0 auto;
            height:170px;
            padding-left:20px;
            font-size:15px;
            font-family:黑体;
        }
        #by-3-1{
            float:left;
            width:200px;
            height:170px;
        }
        #by-3-2{
            float:left;
            width:200px;
            height:170px;
            margin-left:20px;
        }
        #by-3-3{
            float:left;
            width:200px;
            height:170px;
            margin-left:20px;
        }
        #by-3-4{
            float:left;
            width:200px;
            height:170px;
            margin-left:20px;
        }
        #by-3-5{
            float:left;
            width:200px;
            height:170px;
            margin-left:20px;
        }
    </style>
</head>
<body>
<div id="body">
    <div id="head" class="row">
        <nav class="navbar navbar-default" role="navigation" style="background-color:">
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
                <a href="webpage/login.jsp"><button style="float:right; " type="button" class="btn btn-default btn-sm">登陆</button></a>
            </div>
    </div>
    </nav>
</div>




<div id="by-1" style="margin-bottom:35px;">
    <div id="myCarousel" class="carousel slide"  style="width:600px; height:300px;">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="image/topImage1.jpg" width="600" height="300">
            </div>
            <div class="item">
                <img src="image/topImage2.jpg" width="600" height="300">
            </div>
            <div class="item">
                <img src="" width="600" height="300">
            </div>
        </div>
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>




<div id="by-2" style="margin-bottom:35px;">
    <span style="font-size:20px;"><strong>最/新/活/动</strong></span>
</div>

<div id="by-3" style="margin-top:35px;">
    <div id="by-3-1" >
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100" >
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p>
    </div>
    <div id="by-3-2">
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100">
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p></div>
    <div id="by-3-3">
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100">
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p></div>
    <div id="by-3-4">
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100">
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p></div>
    <div id="by-3-5">
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100">
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p></div>
</div>


<hr width="80%" size="2" color="#CCCCCC">



<div id="by-2" style="margin-top:35px;">
    <span style="font-size:20px;"><strong>推/荐/活/动</strong></span>
</div>

<div id="by-3"  style="margin-top:35px; margin-bottom:35px;">
    <div id="by-3-1">
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100">
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p>
    </div>
    <div id="by-3-2">
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100">
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p></div>
    <div id="by-3-3">
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100">
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p></div>
    <div id="by-3-4">
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100">
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p></div>
    <div id="by-3-5">
        <img style="margin-bottom:15px;border-radius:10px;" src="image/activityImage.jpg" width="200" height="100">
        <p><a href="#" style="color:#000"><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p></div>
</div>


<hr width="80%" size="2" color="#CCCCCC">


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