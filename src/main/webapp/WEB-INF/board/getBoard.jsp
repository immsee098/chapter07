<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>글 상세</title>
</head>
<body>
<center>
    <h1>게시글 상세</h1>
    <hr>
    <form action="updateBoard" method="post">
        <input name="seq" type="hidden" value="${board.seq}" />
        <table border="1" cellspacing="0" cellpadding="0" />
        <tr>
            <td bgcolor="orange" width="70">제목</td>
            <td align="left"><input name="title" type="text" value="${board.title}"/></td>
        </tr>
        <tr>
            <td bgcolor="orange">작성자</td>
            <td align="left">${board.writer}</td>
        </tr>
        <tr>
            <td bgcolor="orange">내용</td>
            <td align="left"><input type="text" name="content" value="${board.content}" /></td>
        </tr>
        <tr>
            <td bgcolor="orange">등록일</td>
            <td align="left"><fmt:formatDate value="${board.createDate}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="글 수정"/>
            </td>
        </tr>
    </form>
    <hr>
    <a href="insertBoardView">글 등록</a>
    <br>
    <a href="deleteBoard?seq=${board.seq}">글 삭제</a>
    <br>
    <a href="getBoardList">글목록</a>
</center>
</body>
</html>