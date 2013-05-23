<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>EXTRALOUD</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link rel="stylesheet" type="text/css" href="css/layout.css"/>
    <link rel="stylesheet" type="text/css" href="css/navi.css"/>
</head>
<body id="top">

<div class="wrapper col2">
    <div id="topbar">
        <div id="search">
            <img src="http://s48.radikal.ru/i121/1305/67/8e2deb3eae0c.gif" alt="EXTRALOUD"/>
        </div>

        <div id="topnav">
            <ul>
                <li class="active"><a href="/">Главная</a></li>
                <li><a href="style-demo.html">Новости</a></li>
                <li><a href="full-width.html">Афиша</a></li>
                <li><a href="#">Статьи</a>
                    <ul>
                        <li><a href="#">Интервью</a></li>
                        <li><a href="#">Места</a></li>
                        <li><a href="#">Люди</a></li>
                    </ul>
                </li>
                <li class="last"><a href="#">О проекте</a></li>
            </ul>
        </div>
        <br class="clear"/>
    </div>
</div>
<!--###################################################################-->

<div class="wrapper">
    <div class="container">
        <div class="content">
            <div id="featured_slide">
            </div>
        </div>
        <br class="clear"/>
    </div>
</div>
<!--###################################################################-->
<div class="wrapper">
    <div class="container">
        <div class="content">
            <div id="hpage_latest">
                <h2>Отчёты</h2>
                <ul>
                    <c:forEach items="${lastReports}" var="n" begin="0" end="2" varStatus="s">
                        <li ${s.last ? 'class="last"' : ''}>
                            <a href="reports?id=${n.id}"> <img width="190" height="190" src="${n.pictureUrl}"
                                                               alt="${n.title}"/> </a>

                            <p class="readmore"><a href="reports?id=${n.id}">${n.title};</a></p>
                        </li>
                    </c:forEach>
                </ul>
                <br class="clear"/>
            </div>
            <div id="hpage_latest">
                <h2>Рецензии</h2>
                <ul>
                    <c:forEach items="${lastReviews}" var="n" begin="0" end="2" varStatus="s">
                        <li ${s.last ? 'class="last"' : ''}>
                            <a href="reviews?id=${n.id}"> <img width="190" height="190" src="${n.pictureUrl}"
                                                               alt="${n.title}"/> </a>

                            <p class="readmore"><a href="reviews?id=${n.id}">${n.title};</a></p>
                        </li>
                    </c:forEach>
                </ul>
                <br class="clear"/>
            </div>
        </div>
        <div class="column">
            <h2>Новости</h2>
            <ul class="latestnews">
                <c:forEach items="${news}" var="n" end="3">
                    <li><a href="news?id=${n.id}"> <img width="100" height="100" src="${n.pictureUrl}"
                                                        alt="${n.title}"/> </a>

                        <p><strong><a href="news?id=${n.id}">${n.title}</a></strong></p>
                        <br/>

                        <p>${n.summary}</p>
                    </li>
                </c:forEach>
                <p><strong><a href="#">все новости</a></strong>
            </ul>
        </div>
        <br class="clear"/>
    </div>
</div>
<!--###################################################################-->
<div class="wrapper">
    <div class="container">
        <div class="content">
            <div id="hpage_latest">
                <ul>
                    <li><h2>Интервью</h2>

                        <p class="readmore"><a href="#">Continue Reading</a></p>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                        <p class="readmore"><a href="#">Continue Reading</a></p>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                        <p class="readmore"><a href="#">Continue Reading</a></p>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>
                    </li>
                    <li><h2>Места</h2>

                        <p class="readmore"><a href="#">Continue Reading</a></p>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                        <p class="readmore"><a href="#">Continue Reading</a></p>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                        <p class="readmore"><a href="#">Continue Reading</a></p>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>
                    </li>
                    <li class="last"><h2>Люди</h2>

                        <p class="readmore"><a href="#">Continue Reading</a></p>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                        <p class="readmore"><a href="#">Continue Reading</a></p>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                        <p class="readmore"><a href="#">Continue Reading</a></p>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>
                    </li>
                </ul>
                <br class="clear"/>
            </div>
        </div>
        <div class="column">
            <h2><a href="http://www.youtube.com/user/dmitry61585">Видео</a></h2>

            <div class="holder">
                <object width="300px" height="250px"
                        data="http://www.youtube.com/v/Ur2hNZLynhQ?version=3&amp;hl=en_US&amp;rel=0"
                        type="application/x-shockwave-flash"/>
                <param value="http://www.youtube.com/v/Ur2hNZLynhQ?version=3&amp;hl=en_US&amp;rel=0" name="movie">
                <param value="opaque" name="wmode">
                <param value="high" name="quality">
                <param value="#FFFFFF" name="bgcolor">
                <param value="true" name="allowfullscreen">
                <param value="never" name="allowscriptaccess">
                </object>
            </div>

        </div>
        <br class="clear"/>
    </div>
</div>
<!--###################################################################-->
<div class="wrapper col8">
    <div id="copyright">
        <p class="fl_left">Copyright &copy; 2013 - All Rights Reserved - <a href="#">Extraloud</a></p>
        <br class="clear"/>
    </div>
</div>
</body>
</html>
<!--<h1>News</h1>

<div class="news-list">

<c:forEach items="${news}" var="n">
    <div class="news">


    <div class="news-picture"><img width="100" height="100" src="${n.pictureUrl}" alt="${n.title}"/></div>
    <div class="news-title"><a href="news?id=${n.id}">${n.title}</a></div>
    <div class="news-date"><fmt:formatDate value="${n.date}" pattern="MMM d, yyyy"/></div>
    <div class="news-summary">${n.summary}</div>
    <div class="clear"></div>
    </div>
</c:forEach>

</div>-->

</body>
</html>