<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.entity.Jobs"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.dao.JobDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Jobs</title>
<%@include file="all_component/all_css.jsp"%>
</head>

<body style="background-color: #f0f1f2;">
    <c:if test="${userobj.role ne 'admin' }">
        <c:redirect url="login.jsp"></c:redirect>
    </c:if>
    <%@include file="all_component/navbar.jsp"%>

    <div class="container mb-5">
        <div class="row">
            <div class="col-md-12">

                <h5 class="text-center text-primary">All Jobs</h5>

                <c:if test="${not empty succMsg }">
                    <div class="alert alert-success" role="alert">${succMsg }</div>
                    <c:remove var="succMsg" />
                </c:if>

                <%
                JobDAO dao = new JobDAO(DBConnect.getconn());
                List<Jobs> list = dao.getAllJobs();
                for (Jobs j : list) {
                %>
                <div class="card mt-2"
                    style="box-shadow: 8px 9px 19px -10px rgba(33, 37, 41, 1);">
                    <div class="card-body">
                        <div class="text-center text-primary">
                            <i class="far fa-clipboard fa-2x"></i>
                        </div>


                        <h6><%=j.getTitle()%></h6>
                        <p><%=j.getDescription()%></p>
                        
                        <br>
                        <div class="row">
                            <div class="col col-md-3 d-inline">
                                <input type="text" class="form-control form-control-sm"
                                    value="Location: <%=j.getLocation()%>" readonly>
                            </div>

                            <div class="col col-md-3 d-inline">
                                <input type="text" class="form-control form-control-sm"
                                    value="Category: <%=j.getCategory()%>" readonly>
                            </div>

                            <div class="col col-md-3 d-inline">
                                <input type="text" class="form-control form-control-sm"
                                    value="Status: <%=j.getStatus()%>" readonly>
                            </div>
                        </div>

                        <h6 class="mt-3">
                            Publish Date:<%=j.getPdate()%></h6>
                        <div class=" text-center mt-4">
                            <a href="edit_job.jsp?id=<%=j.getId()%>"
                                class="btn btn-sm bg-success text-white"><i
                                class="fa-solid fa-pen-to-square"></i> Edit</a> <a
                                href="delete?id=<%=j.getId()%>"
                                class="btn btn-sm bg-danger text-white"><i
                                class="fa-solid fa-trash"></i> Delete</a>
                        </div>
                    </div>

                </div>
                <%
                }
                %>

            </div>
        </div>
    </div>
    
    <%@include file="all_component/footer.jsp"%>
</body>
</html>

//signup.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>
<%@include file="all_component/all_css.jsp"%>
<style type="text/css">

.back-video{
    position: absolute;
    right: 0;
    bottom: 0;
    z-index: -1;
}
</style>
</head>
<body style="background-color: #f0f1f2;">
    <%@include file="all_component/navbar.jsp"%>

    <div class="container-fluid">
        <div class="row p-4">
            <div class="col-md-4 offset-md-4">
            <video autoplay loop muted plays-inline class="back-video">
                <source src="img/video.mp4" type="video/mp4">
            </video>
                <div class="card bg-dark text-white opacity-75"
                    style="box-shadow: 8px 9px 19px -10px rgba(33, 37, 41, 1);">
                    <div class="card-body">
                        <div class="text-center">
                            <i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
                            <h5>Registration</h5>
                        </div>
                        
                        <c:if test="${not empty succMsg }">
                            <h4 class="text-center text-success">${succMsg }</h4>
                            <c:remove var="succMsg" />
                        </c:if>
                        
                        <form action="add_user" method="post">
                            <div class="form-group mb-3">
                                <label>Enter Full Name</label> <input type="text" placeholder="Name"
                                    required="required" class="form-control"
                                    id="exampleInputEmail1" aria-describedby="emailHelp"
                                    name="name">
                            </div>

                            <div class="form-group mb-3">
                                <label>Qualification</label> <input required="required" placeholder="Qualification"
                                    type="text" class="form-control" id="exampleInputEmail1"
                                    aria-describedby="emailHelp" name="qualification">
                            </div>

                            <div class="form-group mb-3">
                                <label>Email</label> <input type="text" placeholder="Email"
                                    required="required" class="form-control"
                                    id="exampleInputEmail1" aria-describedby="emailHelp"
                                    name="email">
                            </div>

                            <div class="form-group mb-3">
                                <label for="exampleInputPassword1">Create Password</label> <input
                                    required="required" placeholder="Password" type="password" class="form-control"
                                    id="exampleInputPassword1" name="password">
                            </div>

                            <button type="submit"
                                class="btn btn-dark btn-outline-success badge-pill btn-block mt-2">Register</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
