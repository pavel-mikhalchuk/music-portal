<%--
  User: dzmikhalchuk
--%>
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
    <link rel="stylesheet" type="text/css" href="css/forms.css"/>
    <link rel="stylesheet" type="text/css" href="css/featured_slide.css"/>
</head>
<body id="top">
<!--##################################### Header ##################################-->

<div class="wrapper col2">
    <div id="topbar">
        <div id="search">
            <a href="/"> <img src="http://s48.radikal.ru/i121/1305/67/8e2deb3eae0c.gif" alt="EXTRALOUD"/> </a>
        </div>

        <div id="topnav">
            <ul>
                <li><a href="/">Главная</a></li>
                <li  class="active"><a href="allnews">Новости</a></li>
                <li><a href="full-width.html">Афиша</a></li>
                <li><a href="#">Статьи</a>
                    <ul>
                        <li><a href="#">Отчёты</a></li>
                        <li><a href="#">Рецензии</a></li>
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


<div class="wrapper">
    <div class="container">

        <div class=" column con3">
            <h2>Новости</h2>
            <ul class="latestnews">
                <c:forEach items="${news}" var="n" end="9">
                    <li><img width="100" height="100" src="${n.pictureUrl}" alt="${n.title}"/>

                        <p><strong><a href="news?id=${n.id}">${n.title}</a></strong></p>
                        <br/>

                        <p>${n.summary}</p>
                    </li>
                </c:forEach>
            </ul>
        </div>

            <div class=" column con2">
                <div id="featured">
                    <ul>
                        <li>
                            <h2>Афиша</h2>

                            <p class="imgholder"><img width="240px" height="240px" src="images/demo/240x90.gif"
                                                      alt=""/></p>
                        </li>
                    </ul>
                </div>
                <div id="hpage_latest">
                    <ul>
                        <li><h2>Интервью</h2>

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
                        </li>
                        <li class="last"><h2>Люди</h2>

                            <p class="readmore"><a href="#">Continue Reading</a></p>

                            <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                            <p class="readmore"><a href="#">Continue Reading</a></p>

                            <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>
                        </li>
                    </ul>
                    <br class="clear"/>
                </div>
            </div>
        </div>
        <br class="clear"/>
    </div>


<div class="wrapper col8">
    <div id="copyright">
        <p class="fl_left">Copyright &copy; 2013 - All Rights Reserved - <a href="#">EXTRALOUD</a></p>
        <br class="clear"/>
    </div>
</div>


</body>
</html>