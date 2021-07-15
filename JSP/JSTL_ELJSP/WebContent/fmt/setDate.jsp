<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>WebContent/fmt/setDate.jsp</h1>
     <c:set value="<%=new Date() %>" var="today"></c:set>
     
     ${today }<hr>
     
    <h2>기본 날짜 데이터</h2>
    <fmt:formatDate value="${today }"/><br>
	
    <h2>기본 시간 데이터</h2>
	&ltfmt:formatDate value="&#36;{today }" type="time"/&gt;<br>
	<fmt:formatDate value="${today }" type="time"/><br>
	&ltfmt:formatDate value="&#36;{today }" type="both"/&gt;<br>
	<fmt:formatDate value="${today }" type="both"/>

	<h2> 날짜 데이터 </h2>
	<fmt:formatDate value="${today }"/><br><br>
	&lt;fmt:formatDate value="&#36;{today }" dateStyle="full"/&gt;<br>
	<fmt:formatDate value="${today }" dateStyle="full"/><br><br>
	&lt;fmt:formatDate value="&#36;{today }" dateStyle="long"/&gt;<br>
	<fmt:formatDate value="${today }" dateStyle="long"/><br><br>
	&lt;fmt:formatDate value="&#36;{today }" dateStyle="medium"/&gt;<br>
	<fmt:formatDate value="${today }" dateStyle="medium"/><br><br>
	&lt;fmt:formatDate value="&#36;{today }" dateStyle="short"/&gt;<br>
	<fmt:formatDate value="${today }" dateStyle="short"/><br><br>


	<h2> 시간 데이터 </h2>
     &lt;fmt:formatDate value="&#36;{today }" type="time" timeStyle="full" /&gt;<br>
    <fmt:formatDate value="${today }" type="time" timeStyle="full" /><br><br>
    &lt;fmt:formatDate value="&#36;{today }" type="time" timeStyle="long" /&gt;<br>
    <fmt:formatDate value="${today }" type="time" timeStyle="long" /><br><br>
    &lt;fmt:formatDate value="&#36;{today }" type="time" timeStyle="medium" /&gt;<br>
    <fmt:formatDate value="${today }" type="time" timeStyle="medium" /><br><br>
    &lt;fmt:formatDate value="&#36;{today }" type="time" timeStyle="short" /&gt;<br>
    <fmt:formatDate value="${today }" type="time" timeStyle="short" /><br><br>
	
    <h3>
       0000년 00월 00일 (0) 오전 00시 00분 00초
    </h3>
    &lt;fmt:formatDate value="&#36;{today }" type="both" dateStyle="long" timeStyle="long" /&gt;<br>
	<fmt:formatDate value="${today }" type="both" dateStyle="long" timeStyle="long" /><br><br>

	<h3>
		날짜정보 : 0000/00/00 (0)
	</h3>
	&lt;fmt:formatDate var="a" value="&#36;{today }" pattern="yyyy/MM/dd' '(E)" /&gt;
	<br>&#36;{a }<br>
	<fmt:formatDate var="a" value="${today }" pattern="yyyy/MM/dd' '(E)" />
	${a }
	<h3>
		시간정보 : (오전) 00:00:00
	</h3>
	&lt;fmt:formatDate var="b" value="&#36;{today }" pattern="(a)' 'hh:mm:ss" /&gt;
	<br>&#36;{b }<br>
	<fmt:formatDate var="b" value="${today }" pattern="(a)' 'hh:mm:ss" />
	${b }



</body>
</html>