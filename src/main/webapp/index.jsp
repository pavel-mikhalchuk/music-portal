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
<!--###################################################################-->
<div class="wrapper">
    <div class="container">
        <div class="content">
            <div id="hpage_latest">
                <h2>События</h2>
                <ul>
                    <li><img width="190px" height="130px" src="images/demo/190x130.gif" alt=""/>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
                    </li>
                    <li><img width="190px" height="130px" src="images/demo/190x130.gif" alt=""/>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
                    </li>
                    <li class="last"><img width="190px" height="130px" src="images/demo/190x130.gif" alt=""/>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
                    </li>
                </ul>

                <h2>Рецензии</h2>
                <ul>
                    <li><img width="190px" height="130px" src="images/demo/190x130.gif" alt=""/>

                        <p class="readmore"><a href="#">Continue Reading Continue Reading &raquo;</a></p>
                    </li>
                    <li><img width="190px" height="130px" src="images/demo/190x130.gif" alt=""/>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
                    </li>
                    <li class="last"><img width="190px" height="130px" src="images/demo/190x130.gif" alt=""/>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
                    </li>
                </ul>
                <br class="clear"/>
            </div>
        </div>
        <div class="column">
            <h2>Новости</h2>
            <ul class="latestnews">
                <c:forEach items="${news}" var="n" end="2">
                    <li><img width="100px" height="100px" src="${n.pictureUrl}" alt="${n.title}"/>

                        <p><strong><a href="news?id=${n.id}">${n.title}</a></strong></p>
                        <br/>

                        <p>${n.summary}</p>
                    </li>
                </c:forEach>
                <br/>

                <p><strong><a href="#">читать новости</a></strong>
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
                    <li><h2>Feugiatrutrum</h2>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>

                        <p>Urnau ltrices quis curabitur pha sellent esque congue magnisve stib ulum quismodo nulla
                            et.</p>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>

                        <p>Urnau ltrices quis curabitur pha sellent esque congue magnisve stib ulum quismodo nulla
                            et.</p>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
                    </li>
                    <li><h2>Feugiatrutrum</h2>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>

                        <p>Urnau ltrices quis curabitur pha sellent esque congue magnisve stib ulum quismodo nulla
                            et.</p>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>

                        <p>Urnau ltrices quis curabitur pha sellent esque congue magnisve stib ulum quismodo nulla
                            et.</p>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
                    </li>
                    <li class="last"><h2>Feugiatrutrum</h2>

                        <p>Nullamlacus dui ipsum conseqlo borttis non euisque morbipen a sdapibulum orna.</p>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>

                        <p>Urnau ltrices quis curabitur pha sellent esque congue magnisve stib ulum quismodo nulla
                            et.</p>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>

                        <p>Urnau ltrices quis curabitur pha sellent esque congue magnisve stib ulum quismodo nulla
                            et.</p>

                        <p class="readmore"><a href="#">Continue Reading &raquo;</a></p>
                    </li>
                </ul>
                <br class="clear"/>
            </div>
        </div>
        <div class="column">
            <h2>Видео</h2>

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