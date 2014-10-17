<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id='DigestUtils' scope='request' class='com.happystudio.voj.util.DigestUtils'/>
<!doctype html>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <title>Home | Verwandlung Online Judge</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="谢浩哲">
    <!-- Icon -->
    <link rel="shortcut icon" href="<c:url value="/assets/img/favicon.png" />">
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap-responsive.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/flat-ui.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/font-awesome.min.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/style.css" />">
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/homepage.css" />">
    <!-- JavaScript -->
    <script type="text/javascript" src="<c:url value="/assets/js/jquery-1.11.1.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap.min.js" />"></script>
    <!--[if lte IE 9]>
        <script type="text/javascript" src="<c:url value="/assets/js/jquery.placeholder.js" />"></script>
    <![endif]-->
    <!--[if lte IE 7]>
        <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/font-awesome-ie7.min.css" />">
        <script type="text/javascript" sec="<c:url value="/assets/js/icon-font-ie7.js" />"></script>
    <![endif]-->
    <!--[if lte IE 6]>
        <script type="text/javascript"> 
            window.location.href='../not-supported';
        </script>
    <![endif]-->
</head>
<body>
    <div id="header" class="row-fluid">
        <div class="container">
            <div id="logo" class="span6">
                <a href="<c:url value="/" />">
                    <img src="<c:url value="/assets/img/logo.png" />" alt="Logo">
                </a>
            </div> <!-- #logo -->
            <div id="nav" class="span6">
                <ul class="inline">
                    <li><a href="<c:url value="/p" />">Problems</a></li>
                    <li><a href="<c:url value="/discussion" />">Discussion</a></li>
                    <li><a href="<c:url value="/competition" />">Competition</a></li>
                    <li><a href="<c:url value="/submission" />">Submission</a></li>
                    <li><a href="javascript:openDrawerMenu()">More</a></li>
                </ul>
            </div> <!-- #nav -->
        </div> <!-- .container -->
    </div> <!-- #header -->
    <div id="content">
        <div id="introduction" class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#introduction" data-slide-to="0" class="active"></li>
                <li data-target="#introduction" data-slide-to="1"></li>
                <li data-target="#introduction" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="active item first"></div>
                <div class="item second"></div>
                <div class="item third"></div>
            </div>
        </div> <!-- #introduction -->
        <div id="slogan" class="row-fluid">
            <div class="container">
                <div class="span5 offset7">
                    <h2>Start Your OJ Journey Today!</h2>
                    <c:if test="${!isLogin}">
                        <p><button class="btn btn-success" onclick="window.location.href='accounts/register'">Get Started Now</button></p>
                        <p><a href="accounts/login">Log In</a></p>
                    </c:if>
                </div> <!-- .span6 -->
            </div> <!-- .container -->
        </div> <!-- #slogan -->
        <div class="row-fluid">
        </div>
    </div> <!-- #content -->
    <div id="drawer-nav">
        <span class="pull-right"><a href="javascript:closeDrawerMenu();">Close &times;</a></span>
        <div id="accounts" class="section">
            <h4>My Accounts</h4>
            <div id="profile">
            <c:choose>
            <c:when test="${isLogin}">
                <img src="http://www.gravatar.com/avatar/${DigestUtils.md5Hex(user.getEmail().toLowerCase())}?s=100&amp;d=mm" alt="avatar" class="img-circle" />
                <h5>${user.getUsername()}</h5>
                <p>${user.getEmail()}</p>
                <p>Accepted/Submit: 31/92(35%)</p>
                <p>Language Preference: ${user.getPreferLanguage().getLanguageName()}</p>
                <p><a href="<c:url value="/accounts/login?logout=true" />">Sign out</a></p>
            </c:when>
            <c:otherwise>
                <p>You are not logged in.</p>
                <ul class="inline">
                    <li><a href="<c:url value="/accounts/login" />">Sign in</a></li>
                    <li><a href="<c:url value="/accounts/register" />">Sign up</a></li>
                </ul>
            </c:otherwise>
            </c:choose>
            </div> <!-- #profile -->
        </div> <!-- .section -->
        <div id="about" class="section">
            <h4>About</h4>
            <ul>
                <li><a href="#">Judgers</a></li>
                <li><a href="#">Feedback</a></li>
                <li><a href="#">About Us</a></li>
            </ul>
        </div> <!-- .section -->
    </div> <!-- #drawer-nav -->
    <div id="footer">
        <div class="container">
            <p id="copyright">Copyright&copy; 2005-2014 <a href="http://www.zjhzxhz.com/" target="_blank">HApPy Studio</a>. All rights reserved.</p>
        </div> <!-- .container -->
    </div> <!-- #footer -->
    <!-- JavaScript -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript">
        $(document).ready(function() {
            $('.carousel').carousel({
                interval: 5000
            });
        });
    </script>
    <script type="text/javascript">
        function openDrawerMenu() {
            $('#drawer-nav').animate({
                right: 0
            }, 100);
        }
    </script>
    <script type="text/javascript">
        function closeDrawerMenu() {
            $('#drawer-nav').animate({
                right: -320
            }, 100);
        }
    </script>
</body>
</html>