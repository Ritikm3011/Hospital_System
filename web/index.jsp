<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*" %>
<%@page import="com.db.ConnectionProvider" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index_page</title>

        <%@include file="Component/allcss.jsp"%>
    </head>
    <body>
        <!--nav bar-->
        <%@include file="Component/navbar.jsp" %>




        <!--Carousel-->

        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="img/hos1.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="img/hos2.jpg" class="d-block w-100" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="img/hos3.jpg" class="d-block w-100" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>



        <!--Key Features-->

        <div class="container p-3 mt-4" >
            <p class="text-center fs-2">Key Features</p>

            <div class="row">
                <div class="col-md-8 p-5">
                    <div class="row">


                        <div class="col-md-6 shadow rounded">
                            <div class="card paint-card">
                                <div class="card-body">
                                    <p class="fs-5">100% Safety</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor .</p>
                                </div>
                            </div>
                        </div>


                        <div class="col-md-6 shadow rounded">
                            <div class="card paint-card">
                                <div class="card-body">
                                    <p class="fs-5">Friendly Doctors</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor .</p>
                                </div>
                            </div>
                        </div>



                        <div class=" col-md-6 mt-2 shadow rounded">
                            <div class="card paint-card">
                                <div class="card-body">
                                    <p class="fs-5">Clean Environment</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod .</p>
                                </div>
                            </div>
                        </div>



                        <div class=" col-md-6 mt-2 shadow rounded">
                            <div class="card paint-card">
                                <div class="card-body">
                                    <p class="fs-5">Medical Research</p>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor .</p>
                                </div>
                            </div>
                        </div>



                    </div>
                </div>

                <div class="col-md-4">
                    <img src="img/doc6.jpg" alt="" height="400"/>
                </div>

            </div>

        </div>


        <!--Our Team-->

        <div class="container p-2 mt-4">
            <p class="text-center fs-2"> Our Team</p>

            <div class="row">

                <div class="col-md-3">
                    <div class="card" >
                        <div class="card-body text-center">
                            <img src="img/doc1.jpg" alt="" height="300"/>
                            <p class="fw-bold fs-5">Dr. Keyla Smith</p>
                            <p class="fs-7">CEO & Chairman</p>
                        </div>
                    </div>
                </div>


                <div class="col-md-3">
                    <div class="card" >
                        <div class="card-body text-center">
                            <img src="img/doc2.jpg" alt="" height="300"/>
                            <p class="fw-bold fs-5">Dr. Mary Jones</p>
                            <p class="fs-7">Chief Dermatologist</p>
                        </div>
                    </div>
                </div>



                <div class="col-md-3">
                    <div class="card" >
                        <div class="card-body text-center">
                            <img src="img/doc4.jpg" alt="" height="300"/>
                            <p class="fw-bold fs-5">Dr. Alice Miller</p>
                            <p class="fs-7">Chief Neurologist</p>
                        </div>
                    </div>
                </div>



                <div class="col-md-3">
                    <div class="card" >
                        <div class="card-body text-center">
                            <img src="img/doc5.jpg" alt="" height="300"/>
                            <p class="fw-bold fs-5">Dr. Olivia White</p>
                            <p class="fs-7">Chief Cardiologist</p>
                        </div>
                    </div>
                </div>

            </div>

        </div>
        <!--footer-->
        <%@include file="Component/footer.jsp" %>
    </body>
</html>
