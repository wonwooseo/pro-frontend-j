<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/styles.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slick.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/slick-theme.css"/>"/>
        <title>Welcome to Prodigal!</title>
    </head>
    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-black navbar-dark">
            <a href="/index" id="navbar_logo" class="navbar-brand"><img src="<c:url value="/resources/images/navbar_logo.png"/>" alt="prodigal_logo_horizontal"></a>
            <ul class="nav navbar-nav ml-auto justify-content-end">
                <li class="nav-item">
                    <a href="/login" id="navbar_login" class="nav-link" style="font-size: 20px">Login</a>
                </li>
                <li class="nav-item">
                    <a href="/signup" id="navbar_signup" class="nav-link" style="font-size: 20px">Signup</a>
                </li>
            </ul>
        </nav>


        <!-- Image Carousels --> 
        <div id="carouselIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselIndicators" data-slide-to="1"></li>
                <li data-target="#carouselIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active"> 
                    <img class="img-fluid" src="<c:url value="/resources/images/index_slick_image1.jpeg"/>">
                </div> 
                <div class="carousel-item"> 
                    <img class="img-fluid" src="<c:url value="/resources/images/index_slick_image2.jpeg"/>">
                </div> 
                <div class="carousel-item"> 
                    <img class="img-fluid" src="<c:url value="/resources/images/index_slick_image3.jpeg"/>">
                </div> 
            </div>
            <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <div class="container">
        <div id="main_logo" align="center">
            <img id="main_logo_img" src="<c:url value="/resources/images/main_logo.png"/>" alt="prodigal_main_logo">
        </div>
        <br>



        <!-- Our Story -->
        <h2 style="font-weight: bold; font-size: 44px; margin-top: 20px">Our story</h2> 
        <p>Trading stocks has been one of the "lucrative" revenue generators in the past century. Trading experts such as Warren Buffet have gained profits of tens of billions of dollars while beginners in the field have a hard time even understanding the rules of the trading game. To narrow the gap between expert and novice stock traders, our prodigal co-founders, Wonwoo Seo and Balaji Baskarn, came up with the idea of predicting stock prices using machine learning models. By using our platform, we wish to boost everyone's profits in trading stock market.</p>
        
        <!-- Our team --> 
        <h2 style="font-weight: bold; font-size: 44px;">Our team <h2>
        <div class="row" style="height: 20px;"></div>
        <div class="row"> 
            <div class="col-md-4"> 
                <div class="card mx-auto" style="width: 18rem;">
                    <img class="card-img-top" src="<c:url value="/resources/images/wonwoo.jpg"/>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Wonwoo Seo</h5>
                        <p class="card-text">Co-founder</p>
                    </div>
                </div> 
            </div>
            <div class="col-md-4"> 
                <div class="card mx-auto" style="width: 18rem;">
                    <img class="card-img-top" src="<c:url value="/resources/images/balaji.png"/>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Balaji Baskaran</h5>
                        <p class="card-text">Co-founder</p>
                    </div>
                </div> 
            </div>
            <div class="col-md-4"> 
                <div class="card mx-auto" style="width: 18rem;">
                    <img class="card-img-top" src="<c:url value="/resources/images/sean.png"/>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Sean Lin</h5>
                        <p class="card-text">Fullstack developer</p>
                    </div>
                </div> 
            </div>
        </div>
        <div class="row" style="height:20px"></div> 
        <div class="row"> 
            <div class="col-md-4"> 
                <div class="card mx-auto" style="width: 18rem;">
                    <img class="card-img-top" src="<c:url value="/resources/images/Small.png"/>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Gabrielle Chen</h5>
                        <p class="card-text">Machine Learning Engineer</p>
                    </div>
                </div> 
            </div>
            <div class="col-md-4"> 
                <div class="card mx-auto" style="width: 18rem;">
                    <img class="card-img-top" src="<c:url value="/resources/images/jamie.png"/>" alt="Card image cap">
                    <div class="card-body">
                        <h5 class="card-title">Jamie Paterson</h5>
                        <p class="card-text">Fullstack developer</p>
                    </div>
                </div> 
            </div>
            <div class="col-md-4"> 
                <div class="card mx-auto" style="width: 18rem;">
                    <img class="card-img-top" src="<c:url value="/resources/images/hk_1.jpg"/>" alt="Card image cap" style="width: 288px; height: 200px;">
                    <div class="card-body">
                        <h5 class="card-title">Htut Khine Win</h5>
                        <p class="card-text">Fullstack developer</p>
                    </div>
                </div> 
            </div>
        </div>
    </div> 

    <!-- Footer -->
    <footer id="Home" class="footer">
        <p style="font-size:16px; color: white">
           &copy Prodigal Project 
        </p>
    </footer>
    </body>
</html>
