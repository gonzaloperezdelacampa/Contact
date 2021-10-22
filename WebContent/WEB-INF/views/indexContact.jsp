<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
 
<div class="container">

<%@ include file="menu.jsp" %>
	 
	<h2>Buscar contact</h2>
	<form method="get" action="search">
		<input type="text" class="button" name="keyword" /> &nbsp;
		<input type="submit" class="button" value="Search" />
	</form>
	<table id="example" class="table table-striped table-bordered dt-responsive nowrap" style="width:100%">
        <thead>
		<tr>
			<th>ID</th>
			<th>Nombre</th>
			<th>E-mail</th>
			<th>Dirección</th>
			<th>Action</th>
		</tr>
		</thead>
        <tbody>
		<c:forEach items="${listContact}" var="contacts">
		<tr>
			<td>${contact.id}</td>
			<td>${contact.name}</td>
			<td>${contact.email}</td>
			<td>${contact.telefone}</td>
			
			<td>${contact.comment}</td>
			<td>
				<a class="button" href="edit?id=${contact.id}">Actalizar</a>
				&nbsp;&nbsp;&nbsp;
				<a class="button" href="delete?id=${contact.id}">Borrar</a>
			</td>
		</tr>
		</c:forEach>
		</tbody>
	</table>
	</section>
</div>	
</body>
</html>