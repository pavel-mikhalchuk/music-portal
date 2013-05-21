<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Music Portal</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/layout.css"/>
    <link rel="stylesheet" type="text/css" href="css/navi.css"/>
</head>
<body id="top">
<!--##################################### Header ##################################-->

<div class="wrapper col2">
    <div id="topbar">
        <div id="topnav">
            <ul>
                <li class="active"><a href="/">Главная</a></li>
                <li><a href="style-demo.html">Новости</a></li>
                <li><a href="full-width.html">Афиша</a></li>
                <li><a href="#">Статьи</a>
                    <ul>
                        <li><a href="#">Link 1</a></li>
                        <li><a href="#">Link 2</a></li>
                        <li><a href="#">Link 3</a></li>
                    </ul>
                </li>
                <li class="last"><a href="#">О проекте</a></li>
            </ul>
        </div>
        <br class="clear"/>
    </div>
</div>


<div class="wrapper">
    <div class="container">
        <div class="fl_left">
            <img class="imgl" width="125" height="125" src="${news.pictureUrl}" alt="${news.title}"/>

            <h1>${news.title}</h1>

            <p>${news.description}</p>
        </div>
        <br class="clear"/>
    </div>
</div>
<!--<div class="news">
    <div class="news-picture"><img width="100" height="100" src="${news.pictureUrl}" alt="${news.title}"/></div>
    <div class="news-title">${news.title}</div>
    <div class="news-date"><fmt:formatDate value="${news.date}" pattern="MMM d, yyyy"/></div>
    <div class="news-description">${news.description}</div>
    <div class="clear"></div>
</div> -->

</body>
</html>