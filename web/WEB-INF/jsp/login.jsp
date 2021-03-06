<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "cjstl" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css"/>"/>
        <!-- google login api -->
        <meta name="google-signin-scope" content="profile email">
        <meta name="google-signin-client_id" content="980240961216-j1jkheikdjiklppbr2m7rn0u61mv6a7o.apps.googleusercontent.com">
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <title>Prodigal - Login</title>
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
                    <a href="/signup" id="navbar_login" class="nav-link" style="font-size: 20px">Signup</a>
                </li>
            </ul>
        </nav>
        <!-- login Form -->
        <div style="background-image: url(../../resources/images/city.jpeg); background-size: cover; height:120vh">
            <div id="form" style="width: 100%; max-width: 500px; margin:0 auto 80px auto; padding-top:200px">
                <div class="card shadow-lg" style="max-width:2000px;">
                    <div class="card-header" style="padding: 24px 0 24px 0">
                        <cjstl:choose>
                            <cjstl:when test="${message != null}">
                                <h2 id="login_fail_msg" align="center"> <b>${message}</b> </h2>
                            </cjstl:when>
                            <cjstl:otherwise>
                                <h2 align="center"><b>Welcome to Prodigal!</b></h2>
                            </cjstl:otherwise>
                        </cjstl:choose>
                    </div>
                    <form class="card-body" id="form_id" method="post" name="myform" action="login_query" style="padding:16px 16px 16px 16px">
                        <div id="input_list">
                            <ul class="list-group">
                                <li class="list-group-item">
                                    <label><b>Username</b></label><br>
                                    <input class="w-100 form-control" id="usr" type="text" placeholder="Enter Username" name="username" required>
                                </li>
                                <li class="list-group-item">
                                    <label><b>Password</b></label><br>
                                    <input class="w-100 form-control" id="pass" type="password" placeholder="Enter Password" name="password" required>
                                </li>
                                <li class="list-group-item text-center" style="padding-top: 32px; padding-bottom: 24px">
                                    <button class="btn btn-primary w-50" type="submit" id="submit">Login</button><br>
                                    <input id="remember" style="margin-top: 16px" type="checkbox" name="remember"> Remember me
                                </li>
                            </ul>
                        </div>
                    </form>
                    <div class="card-footer text-center">
                        <a href="signup" class="btn btn-danger w-50" style="margin-top: 12px">Sign Up</a><br>
                        <!-- google api login
                        <div class="w3-center">
                            <a id="login" class="g-signin2 w3-button" data-onsuccess="onSignIn" data-theme="dark"></a>
                        </div>
                        <a id="signout" class="w3-button w3-bar-item w3-red" style="margin-left:40%;display:none;" onclick="signOut()" data-theme="dark">Sign Out</a>
                        -->
                        <a href="#" class="btn btn-warning w-50" style="margin: 16px 0 16px 0">Forgot password?</a><br>
                    </div>
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
        <script>
            function onSignIn(googleUser) {
                // Useful data for your client-side scripts:
                var profile = googleUser.getBasicProfile();
                console.log("ID: " + profile.getId()); // Don't send this directly to your server!
                console.log('Full Name: ' + profile.getName());
                console.log('Given Name: ' + profile.getGivenName());
                console.log('Family Name: ' + profile.getFamilyName());
                console.log("Image URL: " + profile.getImageUrl());
                console.log("Email: " + profile.getEmail());

                // The ID token you need to pass to your backend:
                var id_token = googleUser.getAuthResponse().id_token;
                console.log("ID Token: " + id_token);
                /*
                // Send id_token to server
                var xhr = new XMLHttpRequest();
                //xhr.open('POST', 'https://prodigal-beta.azurewebsites.net/tokensignin');
                {% csrf_token %}
                xhr.open('POST', 'tokensignin');
                xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhr.onload = function() {
                console.log('Signed in as: ' + xhr.responseText);
                };
                xhr.send('idtoken=' + id_token);
                */
                // Hide login button
                var login = document.getElementById("login");
                login.style.display = "none";
                // Show signout button
                var signout = document.getElementById("signout");
                signout.style.display = "block";

                var auth2 = gapi.auth2.getAuthInstance();
                if (auth2.isSignedIn.get()) {
                    window.location = "profile";
                }

                // automatically signout after send id_token to server
                auth2.signOut().then(function () {
                console.log('User signed out.');
                });
            };

            function signOut() {
                var auth2 = gapi.auth2.getAuthInstance();
                auth2.signOut().then(function () {
                console.log('User signed out.');
                });

                // Show login button
                var login = document.getElementById("login");
                login.style.display = "block";
                // Hide signout button
                var signout = document.getElementById("signout");
                signout.style.display = "none";
            }
        </script>
    </body>
</html>
