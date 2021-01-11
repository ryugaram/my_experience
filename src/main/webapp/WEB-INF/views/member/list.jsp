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
   <th>전화번호</th>
   <th>집주소</th>
  </tr>
 </thead>
 
 <tbody >
  
  <c:forEach items="${lists}" var="list">
 <tr>
  <td>${list.bno}</td>
  <td>
  	<a href="/member/view?bno=${list.name}"><%-- ${list.title} --%></a>
  	</td>
  <td>${list.name}</td>
  <td>${list.age}</td>
  <td>${list.sex}</td>
  <td>${list.tel}</td>
  <td>${list.home}</td>
 </tr>
</c:forEach>
 </tbody>

</table>
</body>
</html>