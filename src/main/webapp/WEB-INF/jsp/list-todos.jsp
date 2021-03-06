<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">
<table class="table table-striped">
<caption>Your todos are :</caption>
<thead>
<tr>
<th>Description</th>
<th>Target Date</th>
<th>Completed?</th>
<th>Priority</th>
<th></th>
<th></th>
</tr>
</thead>
<tbody>
<c:forEach items="${todos}" var = "todo">
<tr>
<td>${todo.desc}</td>
<td><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy"/></td>
<td>${todo.completed}</td>
<td>${todo.priority}</td>
<td><a type=button class="btn btn-success" href="/update-todo?id=${todo.id}" >Update</a></td>
<td><a type=button class="btn btn-warning" href="/delete-todo?id=${todo.id}">Delete</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<div>
<a class="button" href="/add-todo">Add todo</a></div>
	
	</div>
<%@ include file="common/footer.jspf" %>