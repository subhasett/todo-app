<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<div class="container">
	<form:form method="post" modelAttribute="todo">
		<form:hidden path="id" />
		<fieldset class="form-group">
			<form:label path="desc">Description</form:label>
			<form:input type="text" path="desc" class="form-control"
				required="required" />
			<form:errors path="desc" cssClass="text-warning"></form:errors>
		</fieldset>

		<fieldset class="form-group">
			<form:label path="targetDate">Target Date</form:label>
			<form:input path="targetDate" type="text" class="form-control"
				required="required" />
			<form:errors path="targetDate" cssClass="text-warning" />
		</fieldset>
		
		<fieldset class="form-group">
			<form:label path="completed">Completed ?</form:label>
			<form:input path="completed" type="text" class="form-control"
				required="required" />
			<form:errors path="completed" cssClass="text-warning" />
		</fieldset>
		
		<fieldset class="form-group">
			<form:label path="priority">Priority</form:label>
			<form:input path="priority" type="text" class="form-control"
				required="required" />
			<form:errors path="priority" cssClass="text-warning" />
		</fieldset>

		<button type=submit class="btn btn-success">Save</button>
	</form:form>
</div>

<%@ include file="common/footer.jspf"%>