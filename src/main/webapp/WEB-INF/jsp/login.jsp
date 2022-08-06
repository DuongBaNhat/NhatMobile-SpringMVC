<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set scope="page" var="contextRoot"
	value="${pageContext.servletContext.contextPath}" />
<spring:url value="/view/media/logo.png" var="logo" />

<spring:url value="/view/css/css_login.css" var="css_login" />
<spring:url value="/view/css/css_header.css" var="css_header" />
<spring:url value="/view/css/css_menu.css" var="css_menu" />
<spring:url value="/view/css/css_footer.css" var="css_footer" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="${logo}">

<link href="${css_login}" rel="stylesheet">
<link href="${css_header}" rel="stylesheet">
<link href="${css_menu}" rel="stylesheet">
<link href="${css_footer}" rel="stylesheet">

<title>Login page</title>
</head>

<%-- body --%>
<body>
	<%-- header --%>
	<div class="row">
		<%@ include file="/WEB-INF/jsp/header.jsp"%>
	</div>
	<div class="row">
		<%@ include file="/WEB-INF/jsp/menu.jsp"%>
	</div>

	<div class="wrapper">
		<div class="logo">
			<img src="${contextRoot}/view/media/logo.png" alt="Logo">
		</div>
		<div class="text-center mt-4 name">Login</div>
		<form class="p-3 mt-3" action="login.html" method="POST">
			<div class="form-field d-flex align-items-center">
				<span class="far fa-user"></span> <input type="text" name="userName"
					id="userName" placeholder="Username" value="${param.userName}"
					required="required">
			</div>
			<div class="form-field d-flex align-items-center">
				<span class="fas fa-key"></span> <input type="password"
					name="password" id="pwd" placeholder="Password"
					value="${param.password}" required="required">
			</div>
			<button class="btn mt-3">Login</button>
		</form>
		<div class="text-center fs-6">
			<a href="#">Forget password?</a> or <a href="#">Sign up</a>
		</div>
		<div class="message">
			<c:if test="${not empty message}">
				${message}
			</c:if>
		</div>
	</div>
	
	<div>
		<%@ include file="/WEB-INF/jsp/footer.jsp" %>
	</div>
</body>
</html>