<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insert title here</title>
</head>
<body>
<div id="nav">

</div>
<table width="1000">
 <thead>
  <tr>
   <th>이름</th>
   <th>나이</th>
   <th>성별</th>
 
  </tr>
 </thead>
 
 <tbody >
  
  <c:forEach items="${lists}" var="list">
 <tr>
  <td>${list.bno}</td>
  <td>
  	<a href="/member/view?bno=${list.bno}"> ${list.name} </a>
  	</td>
  <td>${list.age}</td>
  <td>${list.sex}</td>
 
 </tr>
</c:forEach>
 </tbody>

</table>
</body>
</html>