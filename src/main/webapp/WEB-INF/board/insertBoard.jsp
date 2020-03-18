<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    insert Board
</head>
<body>
<center>
    <h3>새글 등록하기</h3>
    <hr>
    <form action="insertBoard" method="post">
        <tr>
            <td bgcolor="orange" width="70">title</td><td align="left">
            <input type="text" name="title"/></td>
        </tr>
        <tr>
            <td bgcolor="orange">writer</td><td align="left">
            <input type="text" name="writer"/></td>
        </tr>
        <tr>
            <td bgcolor="orange">content</td><td align="left">
            <input type="text" name="content" cols="40" rows="10" /></td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <input type="submit" value="새글 등록" />
            </td>
        </tr>
    </form>
</center>
</body>
</html>