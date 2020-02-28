<%--
  Created by IntelliJ IDEA.
  User: raul.telo
  Date: 28/2/20
  Time: 13:39
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Hi Puneet Behl</title>
</head>

<body>
    <g:form action="index" controller="demo">
        <input type="text" id="inputName" name="body.name">
        <label for="inputName">Name</label>
        <br>
        <br>
        <input type="number" step="0.01" id="inputBigDecimal" name="body.value">
        <label for="inputBigDecimal">Value</label>

        <button>Submit</button>
    </g:form>
</body>
</html>