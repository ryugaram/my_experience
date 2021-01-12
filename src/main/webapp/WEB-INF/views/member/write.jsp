<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 작성</title>
</head>
<body>
<div id="nav">

</div>
<form method="post">

<label>이름</label>
<input type="text" name="name" /><br />

<label>나이</label>
<input type="text" name="age" /><br />

<label>성별</label>
<input type="text" name="sex" /><br />

<label>전화번호</label>
<input type="text" name="tel" /><br />

<label>집주소</label>
<textarea cols="50" rows="5" name="home"></textarea><br />

<button type="submit">작성</button>

</form>
</body>
</html>