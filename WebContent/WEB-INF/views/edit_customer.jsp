<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel='stylesheet' type='text/css' href='https://lacasitadeines.com/css/estilo.css'>
<title>Edit Customer</title>
</head>
<body>

 

<div class="container">
<%@ include file="menu.jsp" %>

	<section>
		<h2>Actualizar cliente</h2>
		<form:form action="save" method="post" modelAttribute="customer">
			<table border="0" cellpadding="5">
				<tr>
					<td>Identicador: </td>
					<td>${customer.id}
						<form:hidden path="id"/>
					</td>
				</tr>			
				<tr>
					<td>Nombre: </td>
					<td><form:input path="name" /></td>
				</tr>
				<tr>
					<td>Email: </td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Dirección: </td>
					<td><form:input path="address" /></td>
				</tr>		
				<tr>
					<td colspan="2"><input type="submit" value="Aceptar"></td>
				</tr>						
			</table>
		</form:form>
		</section>
	</div>
</body>
</html>