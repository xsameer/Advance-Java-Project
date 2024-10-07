<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find Your Own Jobs</title>
</head>
<%@include file="components/css.jsp"%>
<body style="background-color: #f0f1f2;">
	<%@include file="components/navbar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h5 class="text-center text-primary">All Jobs</h5>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="fas fa-clipboard fa-2x"></i>
						</div>
						<h5>Title</h5>
						<p>Description</p>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="location:" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="category:" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Status:" readonly>
							</div>
						</div>
						<h6>Publish Date:2024-10-01</h6>
						<div class="text-center">
							<a href="#" class="btn btn-sm bg-success text-white">Edit</a> <a
								href="#" class="btn btn-sm bg-danger text-white">Delete</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>