<!DOCTYPE html>
<html>
<head>
    <title>Music Portal</title>
</head>
<body>

<%
    int status = request.getAttribute("status") != null ? (Integer) request.getAttribute("status") : 0;

    if (status == 1) {
%>
<h1>Success!!!!</h1>
<%
    }
%>

<form method="post" action="comment">
    Leave your comment:<br/><br/>
    <label>Your name</label>
    <input name="user" type="text"/><br/>
    <textarea name="comment" rows="10" cols="30"></textarea><br/><br/>
    <input type="submit" value="Post"/>
</form>

</body>
</html>