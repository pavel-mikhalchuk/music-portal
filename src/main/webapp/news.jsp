<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Music Portal</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>

<div class="news">
    <div class="news-picture"><img width="100" height="100" src="${news.pictureUrl}" alt="${news.title}"/></div>
    <div class="news-title">${news.title}</div>
    <div class="news-date"><fmt:formatDate value="${news.date}" pattern="MMM d, yyyy"/></div>
    <div class="news-description">${news.description}</div>
    <div class="clear"></div>
</div>

</body>
</html>