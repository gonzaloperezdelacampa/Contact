<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>       
 
<%@ include file="menu.jsp" %>
		<h2>New Customer</h2>
		<form:form action="save" method="post" modelAttribute="customer">
			<table border="0" cellpadding="5">
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
					<td colspan="2"><input type="submit" value="Guardar"></td>
				</tr>						
			</table>
		</form:form>
		</section>
	</div>
	
</body>
</html>