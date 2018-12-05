<%@ page language="java" contentType="text/html; charset=UTF-8"
          pageEncoding="UTF-8"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


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
            background-image:url(%E8%83%8C%E6%99%AF%E6%B8%90%E5%8F%98%E5%9B%BE.png) ;
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
        #by-1{
            box-shadow:10px 10px 10px #CCC ;
            width:700px;
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
        #by-4{

            width:1120px;
            margin:0 auto;
            font-size:15px;
            font-family:黑体;}
        #by-4-1{
            height:120px;
            width:1120px;
            margin-bottom:20px;
        }
        #by-4-1-1{
            width:500px;
            height:120px;
            float:left;
            margin-left:30px;
        }
        #by-4-1-2{
            width:500px;
            height:120px;
            margin-right:30px;
            float:right;}
        #by-4-2{
            margin-top:20px;
            width:1120px;
            text-align:center;
        }
        #by-4-2-1{
            margin-left:30px;
            margin-right:80px;
            float:left;
            width:300px;
            height:200px;
        }
        #by-4-2-2{
            float:left;
            width:300px;
            height:200px;
            margin-right:80px;
        }
        #by-4-2-3{
            float:left;
            width:300px;
            height:200px;
            margin-right:30px;
        }
    </style>
</head>

<body>
<div id="body">
    <div id="head" class="row">
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation" style="background-color: #8DC4F8">
            <div class="container-fluid">
                <div class="navbar-header col-lg-1 col-md-1 col-sm-1 col-xs-1" >
                    <strong><a class="navbar-brand " href="homepage.html">微&nbsp;&nbsp;&nbsp;动</a></strong>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                    <ul class="nav navbar-nav " style="float:left;">
                        <li><a href="massorganizations.html" >&nbsp;&nbsp;社&nbsp;团&nbsp;&nbsp;</a></li>
                        <li><a href="activity.html">&nbsp;活&nbsp;动&nbsp;&nbsp;</a></li>
                        <li><a href="information.html">&nbsp;比&nbsp;赛</a></li>
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




<div id="by-1" style="margin-bottom:35px;margin-top:65px;">
    <div id="myCarousel" class="carousel slide"  style="width:700px; height:300px;">
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="shuffling1.jpg">
            </div>
            <div class="item">
                <img src="shuffling2.jpg">
            </div>
            <div class="item">
                <img src="shuffling3.jpg" width="700" height="300">
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
    <div id="by-3-1">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=3828498285,893490428&fm=200&gp=0.jpg" width="200" height="100">
        <p><a href="#" ><strong>参与it杯足球赛，感受足球的魅力!!!</strong></a></p>
    </div>
    <div id="by-3-2">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=1080015646,883967438&fm=200&gp=0.jpg" width="200" height="100">
        <p><a href="#"><strong>微型马拉松，等你来跑</strong></a></p></div>
    <div id="by-3-3">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=1521148146,3204128521&fm=26&gp=0.jpg" width="200" height="100">
        <p><a href="#"><strong>微爱家教，传递你我的爱心</strong></a></p></div>
    <div id="by-3-4">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=1186607204,2519278005&fm=26&gp=0.jpg" width="200" height="100">
        <p><a href="#"><strong>麻丘慰问孤寡老人活动，关爱留守老人</strong></a></p></div>
    <div id="by-3-5">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=1444708298,1697505680&fm=200&gp=0.jpg" width="200" height="100">
        <p><a href="#"><strong>环保知识公宣活动，保护身边的环境</strong></a></p></div>
</div>


<hr width="80%" size="2" color="#CCCCCC">



<div id="by-2" style="margin-top:35px;">
    <span style="font-size:20px;"><strong>推/荐/活/动</strong></span>
</div>

<div id="by-3"  style="margin-top:35px; margin-bottom:35px;">
    <div id="by-3-1">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=3655766096,1329621519&fm=26&gp=0.jpg" width="200" height="100">
        <p><a href="#"><strong>关爱小天使，关心白血病儿童志愿者活动</strong></a></p>
    </div>
    <div id="by-3-2">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=1792545078,3152700174&fm=26&gp=0.jpg" width="200" height="100">
        <p><a href="#"><strong>星语志愿服务辅导自闭儿童</strong></a></p></div>
    <div id="by-3-3">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=3116645539,1896361272&fm=26&gp=0.jpg" width="200" height="100">
        <p><a href="#"><strong>节能减耗，保卫蓝天宣传活动</strong></a></p></div>
    <div id="by-3-4">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=3174231579,153409507&fm=26&gp=0.jpg" width="200" height="100">
        <p><a href="#"><strong>安全校园，消防器材排查活动</strong></a></p></div>
    <div id="by-3-5">
        <img style="margin-bottom:15px; border-radius:10px;" src="u=2285728192,3453047693&fm=200&gp=0.jpg" width="200" height="100">
        <p><a href="#"><strong>骑行健身，单车之家志愿者活动</strong></a></p></div>
</div>


<hr width="80%" size="2" color="#CCCCCC">

<div id="by-2" style="margin-top:35px;">
    <span style="font-size:20px;"><strong>活/跃/社/团</strong></span>
</div>



<div id="by-4" style="margin-top:35px; margin-bottom:35px;">
    <div id="by-4-1" style="margin-bottom:20px;">
        <div id="by-4-1-1"><img src="u=4076445180,3124346776&fm=26&gp=0.jpg" width="500" height="120"></div>
        <div id="by-4-1-2"><img src="u=2423486593,3527306200&fm=26&gp=0.jpg" width="500" height="120"></div>
    </div>
    <div id="by-4-2">
        <div id="by-4-2-1"><img style="margin-bottom:15px; border-radius:10px;" src="u=1015704753,1572170115&fm=26&gp=0.jpg" width="300" height="120">
            <p><a href="#"><strong>师大魔方社团</strong></a></p></div>
        <div id="by-4-2-2"><img style="margin-bottom:15px; border-radius:10px;" src="timg (2).jpg" width="300" height="120">
            <p><a href="#"><strong>蓝天环保社团</strong></a></p></div>
        <div id="by-4-2-3"><img style="margin-bottom:15px; border-radius:10px;" src="u=1952887712,700678703&fm=26&gp=0.jpg" width="300" height="120">
            <p><a href="#"><strong>星空吉他社</strong></a></p></div>
    </div>
</div>

<hr width="80%" size="2" color="#FF0000">


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
