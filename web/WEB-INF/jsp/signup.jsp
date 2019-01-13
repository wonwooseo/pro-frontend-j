<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "cjstl" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        {% load static %}
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css"/>"/>
        <title>Prodigal - Sign Up</title>
    </head>
    <style>
        .navbar-black {
            background-color: black;
            padding: 16px 10px 16px 5px;
        }

        .footer {
            text-align: center;
            padding: 36px 0 36px 0;
            background-color: black;
        }

        .footer-item {
            color: white;
            font-size:24px;
        }
    </style>
    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-black navbar-dark fixed-top">
            <a href="/index" id="navbar_logo" class="navbar-brand"><img src="<c:url value="/resources/images/navbar_logo.png"/>" alt="prodigal_logo_horizontal"></a>
            <ul class="nav navbar-nav ml-auto justify-content-end">
                <li class="nav-item">
                    <a href="/login" id="navbar_login" class="nav-link" style="font-size: 20px">Login</a>
                </li>
            </ul>
        </nav>
        <div style="background-image: url(../../resources/images/city.jpeg); background-size: cover; height:120vh">
            <div id="form" style="width: 100%; max-width:500px; margin:0 auto 80px auto; padding-top:200px">
                <div class="card shadow-lg" style="max-width:2000px;">
                    <div class="card-header" style="padding: 24px 0 24px 0">
                        <cjstl:choose>
                            <cjstl:when test="${message != null}">
                                <h2 id="signup_fail_msg" align="center" style="font-size: 24px;"> <b>${message}</b> </h2>
                            </cjstl:when>
                            <cjstl:otherwise>
                                <h2 align="center"> <b>Join Prodigal</b> </h2>
                            </cjstl:otherwise>
                        </cjstl:choose>
                    </div>
                    <form:form class="card-body" id="form_id" method="post" name="myform" action="/createUser" modelAttribute="user">
                        <div id="input_list">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <label><b>Gender</b></label><br>
                                    <span style="white-space:nowrap;margin-right:16px">
                                        <form:radiobutton path="gender" value="Male" checked="checked"/>
                                        Male
                                    </span>
                                    <span style="white-space:nowrap;">
                                        <form:radiobutton path="gender" value="Female"/>
                                        Female
                                    </span>
                                </li>
                                <li class="list-group-item">
                                    <label><b>User Name</b></label><br>
                                    <form:input path="username" class="w-100 form-control" placeholder="Enter Username" required="required"/>
                                </li>
                                <li class="list-group-item">
                                    <label><b>Email Address</b></label><br>
                                    <form:input path="email" class="w-100 form-control" type="email" placeholder="Enter email address" required="required"/>
                                </li>
                                <li class="list-group-item">
                                    <label><b>Password</b></label><br>
                                    <form:password path="password" class="w-100 form-control" placeholder="Enter Password" required="required"/>
                                </li>
                            </ul>
                        </div>
                        <div id="bottom_form" class="text-center" style="margin: 24px 0 12px 0;">
                            <button class="w-50 btn btn-primary" type="submit" id="submit">Sign Up!</button>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
        <!-- Footer -->
        <footer id="Home" class="footer">
            <a class="footer-item" href="#"><i class="fa fa-facebook-official"></i></a>&nbsp;
            <a class="footer-item" href="#"><i class="fa fa-twitter"></i></a>&nbsp;
            <a class="footer-item" href="#"><i class="fa fa-flickr"></i></a>&nbsp;
            <a class="footer-item" href="#"><i class="fa fa-linkedin"></i></a>
            <p style="font-size:16px; color: white">
                Powered by <a href="https://getbootstrap.com/" target="_blank">BootStrap</a>
            </p>
        </footer>
    </body>

    <script type="text/javascript">
        function alternate(){
            if(this.checked)
                this.checked = false;
            else
                this.checked = true;
        }
        function change_avatar(){
            male_avatar = document.getElementById('male_avatar');
            female_avatar = document.getElementById('female_avatar');
            male_avatar.style.display = "block";
            female_avatar.style.display = "none";
        }
    </script>
</html>