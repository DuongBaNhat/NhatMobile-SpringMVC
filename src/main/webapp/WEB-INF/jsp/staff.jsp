<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<c:set scope="page" var="contextRoot"
	value="${pageContext.servletContext.contextPath}" />




<div class="list">


	<div> <%--form --%>
		<input type="hidden" name="action" value="list" />
		<p>
			Search : <input type="text" name="nsearch" value="${vsearch}">
			<input type="submit" value="Search">
	</div>

	<div> <%-- form --%>
		<c:if test="${sessionScope.vsearch ne null }">
			<input type="hidden" name="vsearch" value="${sessionScope.vsearch}">
		</c:if>
		<p>
			<button>Add</button>
	</div>

	<table border="1">
		<tr>
			<th>User</th>
			<th>Password</th>
			<th>Role</th>
			<th>Name</th>
			<th>Address</th>
			<th>Phone</th>
			<th>Delete</th>
			<th>Update</th>
			<th>Update role</th>
		</tr>
		<c:forEach var="a" items="${accounts}">
			<tr>
				<td>${a.user}</td>
				<td>${a.password}</td>
				<td>${a.role}</td>
				<td>${a.name}</td>
				<td>${a.address}</td>
				<td>${a.phone}</td>
				<td><a href="#" onclick="return confirm('Are you sure ?');">Delete</a></td>
				<td><a href="#">Update</a></td>
				<td><a href="#">Update role</a></td>
			</tr>
		</c:forEach>
	</table>



</div>
