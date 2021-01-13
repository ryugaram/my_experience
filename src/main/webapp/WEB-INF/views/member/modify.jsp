<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정페이지</title>
</head>
<body>

<h2> 수정 페이지</h2>

 <form method="post"> 
<div id="nav">

</div>

<label>이름</label>
<input type="text" name="name" value="${viewlist.name}"/><br />

<label>나이</label>
<input type="text" name="age" value="${viewlist.age}"/><br />

<label>성별</label>
<input type="text" name="sex" value="${viewlist.sex}"/><br />

<label>전화</label>
<input type="text" name="tel" value="${viewlist.tel}"/><br />

<label>주소</label>
<textarea cols="50" rows="5" name="home">${viewlist.home}</textarea><br />

 <button type="submit">작성</button>

</form> 

</html>