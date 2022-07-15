<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Cart:Login</title>
<%@include file="common_components/common_links.jsp" %>
</head>
<body>
<%@include file="common_components/navbar.jsp" %>
<div class="container" id="container">
            <div class="mycard" id="register-card">
                <div class="row" id="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                                        <div class="myLeftCtn">
                                              <form class="my form text-center" id="myregisterform" action="LoginServlet" >
                                                    <header>Please Log In</header>
                                                    <div class="form-group">
                                                    <i class="fas fa-user"> </i>
                                                    <input class="myInput"    type="text"  placeholder="username"  id="username" required>
                                                    <div class="invalid-feedback">Please fill out this field</div>
                                                     </div>
                                                       <div class="form-group">
                                                    <i class="fas fa-envelope"> </i>
                                                    <input class="myInput"    type="text"  placeholder="Email"  id="email" required>
                                                    <div class="invalid-feedback">Please fill out this field</div>
                                                     </div>
                                                    <div class="form-group">
                                                    <i class="fas fa-lock"> </i>
                                                    <input class="myInput"    type="password"  placeholder="password"  id="password" required>
                                                    <div class="invalid-feedback">Please fill out this field</div>
                                                     </div>                    
                                                     <input type="submit" class="butt" value="Login">
                                              </form>
                                        </div>
                        </div>
                        <div class="col-md-3"></div>
                </div>
            </div>
        </div>
        
</body>
</html>