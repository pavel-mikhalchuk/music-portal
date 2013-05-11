<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Music Portal</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>

<h1>News</h1>

<div class="news-list">

    <c:forEach items="${news}" var="n">
        <div class="news">
            <div class="news-picture"><img width="100" height="100" src="${n.pictureUrl}" alt="${n.title}"/></div>
            <div class="news-title">${n.title}</div>
            <div class="news-date"><fmt:formatDate value="${n.date}" pattern="MMM d, yyyy"/></div>
            <div class="news-summary">${n.summary}</div>
            <div class="clear"></div>
        </div>
    </c:forEach>

</div>

</body>
</html>