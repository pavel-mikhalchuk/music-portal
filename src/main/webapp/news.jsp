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
                <li><a href="allnews">Новости</a></li>
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
        <div class="content con1">
            <img class="imgl" src="${news.pictureUrl}" alt="${news.title}" width="190" height="190"/>

            <h2>${news.title}</h2>

            <p style="line-height: 1.5;">${news.description}</p>
            <br class="clear">

            <div id="comments">
                <h2>Комментарии</h2>
                <ul class="commentlist">
                    <c:forEach items="${comments}" var="n">
                        <li class="comment_odd">
                            <div class="author"><span class="name"><a href="#">${n.user}</a></span></div>
                            <div class="submitdate"><a href="#">${n.date}</a></div>
                            <p>${n.comment}</p>
                        </li>
                    </c:forEach>
                </ul>
            </div>

            <div id="respond">
                <form action="addcomment" method="post">
                    <p>
                        <input type="text" name="user" id="user" size="22"/>
                        <label for="user">Имя</label>
                    </p>

                    <p>
                        <textarea name="comment" id="comment" cols="75%" rows="10"></textarea>
                        <label for="comment" style="display:none;">
                            <small>Комментарий</small>
                        </label>
                    </p>
                    <p>
                        <input type="submit" id="submit" value="отправить"/>
                        &nbsp;
                        <input type="reset" id="reset" tabindex="5" value="очистить"/>
                        &nbsp;
                        <input type="hidden" name="news_id" value="${param.id}"/>
                    </p>


                </form>
            </div>

        </div>
        <div class=" column con2">
            <h2>Новости</h2>
            <ul class="latestnews">
                <c:forEach items="${lastNews}" var="n" end="2">
                    <li><img width="100" height="100" src="${n.pictureUrl}" alt="${n.title}"/>

                        <p><strong><a href="news?id=${n.id}">${n.title}</a></strong></p>
                        <br/>

                        <p>${n.summary}</p>
                    </li>
                </c:forEach>
                <p><strong><a href="#">все новости</a></strong>
            </ul>
            <br/>

            <div id="featured">
                <ul>
                    <li>
                        <h2>Афиша</h2>

                        <p class="imgholder"><img width="240px" height="240px" src="images/demo/240x90.gif"
                                                  alt=""/></p>
                    </li>
                </ul>
            </div>
        </div>
        <br class="clear"/>
    </div>
</div>

<div class="wrapper col8">
    <div id="copyright">
        <p class="fl_left">Copyright &copy; 2013 - All Rights Reserved - <a href="#">EXTRALOUD</a></p>
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