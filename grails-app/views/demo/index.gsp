<%--
  Created by IntelliJ IDEA.
  User: raul.telo
  Date: 28/2/20
  Time: 13:39
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Testing Page</title>
</head>

<body>
    <g:form method="GET" action="index" controller="demo">
        <input type="text" id="inputName" name="body.name">
        <label for="inputName">Name</label>
        <br>
        <br>
        <input type="number" step="0.01" id="inputBigDecimal" name="body.value">
        <label for="inputBigDecimal">Value</label>
        <br>
        <br>
        <input id="bookChosen" name="body.bookChosen">
        <label for="bookChosen">Book Id</label>


        <button>Submit</button>
    </g:form>
    <br>
    <g:form method="GET" action="createBook" controller="demo">
        <button>Create a Book</button>
    </g:form>

    <g:form method="GET" action="printBooks" controller="demo">
        <button>Print Books</button>
    </g:form>
</body>
</html>