<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<div class="well lead">Contact Us</div>

		<form:form method="post" modelAttribute="cform"
			class="form-horizontal">

			<div class="row">

				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="eName">Email</label>
					<div class="col-md-7">
						<form:input type="text" path="from" class="form-control input-sm"
							required="required" />

					</div>
				</div>
			</div>


			<div class="row">

				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="eGender">Title</label>
					<div class="col-md-7">
						<form:input type="text" path="subject"
							class="form-control input-sm" required="required" />
					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="department">Issue</label>
					<div class="col-md-7">

						<form:select path="issue" class="form-control input-sm">
							<form:options items="${issueList}" />
						</form:select>

					</div>
				</div>
			</div>

			<div class="row">
				<div class="form-group col-md-12">
					<label class="col-md-3 control-lable" for="department">Description</label>
					<div class="col-md-7">

						<form:textarea path="message" class="form-control input-sm"
							required="required" />

					</div>
				</div>
			</div>




			<div class="row">
				<div class="form-actions floatRight">


					<input type="submit" value="Send" id="btn"
						class="btn btn-primary btn-sm" /> <input type="reset"
						value="Reset" class="btn btn-primary btn-sm" />


				</div>
			</div>

		</form:form>
	</div>


</body>
</html>