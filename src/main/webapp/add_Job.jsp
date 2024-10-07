<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Unknown</title>
<%@include file="components/css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="components/navbar.jsp"%>

	<div class="container p-2">
		<div class="col-md-10 offset-md-1;">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fas fa-user-friends fa-3x"></i>
						<h5>Add Jobs</h5>
					</div>
					<form action="addJob" method="post">
						<div class="form-group">
							<label>Enter Title</label><input type="text" name="title"
								required class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Choose...</option>
									<option value="Odisha">Odisha</option>
									<option value="Gurgaon">Gurgaon</option>
									<option value="Noida">Noida</option>
									<option value="Bengaluru">Bengaluru</option>
									<option value="Pune">Pune</option>
									<option value="Ahemadabad">Ahemadabad</option>
									<option value="Delhi">Delhi</option>
									<option value="Haryana">Haryana</option>
									<option value="Gurugram">Gurugram</option>
									<option value="Mumbai">Mumbai</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select"
									id="inlineFormCustomSelectPref" name="category">
									<option selected>choose...</option>
									<option value="Software Engineer">Software Engineer</option>
									<option value="Front-End Developer">Front-End
										Developer</option>
									<option value="Java Developer">Java Developer</option>
									<option value="Sales Manager">Sales Manager</option>
									<option value="Back-End Developer">Back-End Developer</option>
									<option value="HR">HR</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label><select class="form-control" name="status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Active">Inactive</option>
								</select>
							</div>
						</div>
						<div class="form-group">
						<label>Enter Description Here</label>
						<textarea required rows="6" cols="" name="desc" 
						class="form-control">
						</textarea>
						</div>
						<button class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>