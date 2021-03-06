<%--
  User: Dmitry Mikhalchuk
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li class="active"><a href="/">Главная</a></li>
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
            <img class="imgl" src="${report.pictureUrl}" alt="${report.title}" width="190" height="190"/>

            <h2>${report.title}</h2>

            <p style="line-height: 1.5;">${report.description}</p>
            <br class="clear">

            <div id="comments">
                <h2>Комментарии</h2>
                <ul class="commentlist">
                    <li class="comment_odd">
                        <div class="author"><span class="name"><a href="#">Имя</a></span></div>
                        <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
                        <p>This is an example of a comment made on a post. You can either edit the comment, delete the
                            comment or reply to the comment. Use this as a place to respond to the post or to share what
                            you are thinking.</p>
                    </li>
                    <li class="comment_odd">
                        <div class="author"><span class="name"><a href="#">A Name</a></span></div>
                        <div class="submitdate"><a href="#">August 4, 2009 at 8:35 am</a></div>
                        <p>This is an example of a comment made on a post. You can either edit the comment, delete the
                            comment or reply to the comment. Use this as a place to respond to the post or to share what
                            you are thinking.</p>
                    </li>
                </ul>
            </div>

            <div id="respond">
                <form action="#" method="post">
                    <p>
                        <input type="text" name="name" id="name" value="" size="22"/>
                        <label for="name">Имя</label>
                    </p>

                    <p>
                        <textarea name="comment" id="comment" cols="75%" rows="10"></textarea>
                        <label for="comment" style="display:none;">
                            <small>Comment (required)</small>
                        </label>
                    </p>
                    <p>
                        <input name="submit" type="submit" id="submit" value="отправить"/>
                        &nbsp;
                        <input name="reset" type="reset" id="reset" tabindex="5" value="очистить"/>
                    </p>
                </form>
            </div>

        </div>
        <div class="column con2">
            <h2>Отчёты</h2>
            <ul class="latestnews">
                <c:forEach items="${lastReports}" var="n" end="2">
                    <li><img width="100" height="100" src="${n.pictureUrl}" alt="${n.title}"/>

                        <p><strong><a href="reports?id=${n.id}">${n.title}</a></strong></p>
                        <br/>


                    </li>
                </c:forEach>
                <p><strong><a href="#">все отчёты</a></strong>
            </ul>
            <br/>

            <div id="featured">
                <ul>
                    <li>
                        <h2>Афиша</h2>

                        <p class="imgholder"><img width="240px" height="240px" src="images/demo/240x90.gif" alt=""/></p>
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

</body>
</html>