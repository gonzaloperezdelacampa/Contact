<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<%@ include file="menu.jsp" %>
	<h2>Resultados</h2>
	<table border="1" cellpadding="5">
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>E-mail</th>
			<th>Dirección</th>
		</tr>
		<c:forEach items="${result}" var="customer">
		<tr>
			<td>${customer.id}</td>
			<td>${customer.name}</td>
			<td>${customer.email}</td>
			<td>${customer.address}</td>
		</tr>
		</c:forEach>
	</table>
	</section>
</div>	
</body>
</html>