<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<c:set scope="page" var="contextRoot"
	value="${pageContext.servletContext.contextPath}" />
<spring:url value="/view/css/css_index.css" var="css_index" />
<spring:url value="/view/css/css_staff.css" var="css_staff" />
<spring:url value="/view/css/css_menu.css" var="css_menu" />
<spring:url value="/view/css/css_header.css" var="css_header" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<link href="${css_index}" rel="stylesheet">
<link href="${css_staff}" rel="stylesheet">
<link href="${css_menu}" rel="stylesheet">
<link href="${css_header}" rel="stylesheet">

<title>${param.title}</title>
</head>

<body>
	<div>
		<%@ include file="header.jsp"%>
	</div>
	<%@ include file="menu.jsp" %>

	<div class="text-info">
		<p>Welcome - ${username}</p>
	</div>

	<%@ include file="staff.jsp"%>

	<%@ include file="footer.jsp"%>



</body>