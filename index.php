<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
    rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
    crossorigin="anonymous">
    <link rel="stylesheet" href="index.css">
    <title>Home page</title>
    <!--<script src="index.js"></script> -->
    <!--JQUERY-->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
    crossorigin="anonymous"></script>
</head>
<body>
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3">
        <div class="container justify-content-between">
            <img class="img-fluid w-50 ms-auto ps-4 pt-2" src="NITTELOGO2.PNG" alt="logo" style="max-width: 45%;"> <!--max-width adjusts the logo size-->
            <!--<h1 class="navbar-brand">NMAM Institute of Technology</h1> -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navmenu">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" id="cur" href="#">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a  class="nav-link" href="department.php">DEPARTMENT</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="map.php">MAP</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.php">ABOUT</a>
                    </li>   
                </ul>
            </div>
        </div>
    </nav>
    <!--Info about college and Nitte Logo-->
    <section class="bg-dark text-light p-5 p-lg-0 text-center text-sm-start">
        <div class="container">
            <div class="d-lg-flex align-items-center justify-content-between">
                <div>
                    <p class="mt-4 lead">NMAM Institute of Technology was established in 1986 and 
                        is affiliated to the Visvesvaraya Technological University, Belagavi. 
                        The institute is recognised by the All India Council for Technical Education,
                         New Delhi and accredited by National Assessment & Accreditation Council [NAAC] 
                         with 'A' grade with a CGPA of 3.11 out of 4 till 20th October 2022.</p>
                </div>
                <!--<img class="img-fluid w-50 ms-auto ps-4 pt-4" src="NITTELOGO2.PNG" alt="logo" style="max-width: 20%;"> <!--max-width adjusts the logo size-->
            </div>
        </div>
    </section>

    <!--Search-->
    <section class="bg-warning p-5">
        <div class="container">
            <!--<div class="d-md-flex justify-content-between align-items-center"> -->
                <div class="row d-flex">
                    <div class="col">
                        <h2 class="mb-3 mb-md-0">Search for a faculty</h2>
                    </div>
                    <!--TODO: MAKE THIS RIGHT ALIGNED-->
                    <div class="col">
                        <div class="form-outline pb-3">
                            <input id="search-input" type="search" placeholder="Search" class="form-control form-control-lg" />
                        
                        </div>
                        <!--<button id="search-button" type="button" class="btn btn-primary">
                        <i class="fas fa-search"></i>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg>
                        </button> -->
                    </div>
                </div>
               
           <!-- </div> -->
        </div>
        <script type="text/javascript">
        $(document).ready(function(){
           $("#search-input").on("keyup",function(){
               var search_term = $(this).val();
                console.log(search_term);
                $.ajax({
                    url: "action.php",
                    type: "post",
                    data: {search : search_term},
                    dataType: "html",
                    success: function(data2){
                        $("#table-data").html(data2);
                    },
                    error: function(request, status, error){
                        console.log(error);
                    }
                }); 
            });
        });


        </script>
        <div class="container" id="table-data">
            <?php
              //  include("action.php");  //including this will make the search bar stop working
            ?>
        </div>
    </section>
    <section class="bgimg bg-image">
        <div class="container">
            <div class="row">
                <div class="col mx-auto text-center text-light p-5">
                    
                    <img src="principalnmamit.png" alt="principal" id="principal" style="max-width:20%;">
                    <h3 class="pt-2">Principal NMAMIT</h3>
                    <p>
                        <a href="principal_nmamit@nitte.edu.in">principal_nmamit@nitte.edu.in</a>
                    </p>
                </div>
                
            </div>
            <div class="row">
                <div class="col text-center text-light p-5">
                    
                    <img src="viceprincipal1nmamit.png" alt="principal" id="viceprincipal1" style="max-width:30%;">
                    <h3 class="pt-2">Vice Principal NMAMIT/COE</h3>
                    <p>
                        <a href="coe.nmamit@nitte.edu.in">viceprincipal.nmamit@nitte.edu.in</a>
                    </p>
                </div>
                <div class="col text-center text-light p-5">
                    
                    <img src="viceprincipal2nmamit.png" alt="principal" id="viceprincipal2" style="max-width:30%;">
                    <h3 class="pt-2">Vice Principal NMAMIT/Dean</h3>
                    <p>
                        <a href="viceprincipal.nmamit@nitte.edu.in" >viceprincipal.nmamit@nitte.edu.in</a>
                    </p>
                </div>
                
            </div>
        </div>
    </section>
    
    
    
    
</body>
</html>