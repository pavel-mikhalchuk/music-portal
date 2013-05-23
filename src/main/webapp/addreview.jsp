<%--
  User: FCBAYERN
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>addreview</title>
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
</head>
<body>
<h2>Add review</h2>

<div class="form">
    <form action="addreviews" method="post">
        <p>
            <input type="text" name="title" id="title" value="" size="22"/>
            <label for="title">Title</label>
        </p>

        <p>
            <input type="text" name="picture" id="picture" value="" size="22"/>
            <label for="picture">
                <small>Picture</small>
            </label>
        </p>
        <p>
            <input type="text" name="date" id="date" value="" size="22"/>
            <label for="date">
                <small>Date</small>
            </label>
        </p>
        <p>
            <textarea name="description" id="description" cols="100%" rows="10"></textarea>
            <label for="description" style="display:none;">Description</label>
        </p>

        <p>
            <input name="submit" type="submit" id="submit" value="Submit"/>
            &nbsp;
            <input name="reset" type="reset" id="reset" tabindex="5" value="Reset"/>
        </p>
    </form>
</div>
</body>
</html>