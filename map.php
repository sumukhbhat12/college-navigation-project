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
    <title>Map page</title>
    <script src="index.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
    crossorigin="anonymous"></script>
    
</head>
<body>
    <!--Navbar-->
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-3">
        <div class="container">
            <img class="img-fluid w-50 ms-auto ps-4 pt-2" src="NITTELOGO2.PNG" alt="logo" style="max-width: 45%;"> <!--max-width adjusts the logo size-->
            <!--<h1 class="navbar-brand">NMAM Institute of Technology</h1> -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navmenu">
                <ul class="nav navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a  class="nav-link" href="department.php">DEPARTMENT</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link current" id="cur" href="#">MAP</a>
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
                    <p class="mt-4 lead">Various blocks and the rooms present in those blocks</p>
                </div>
                <!--<img class="img-fluid w-50 ms-auto ps-4 pt-4" src="NITTELOGO.jpg" alt="logo" style="max-width: 20%;"> <!--max-width adjusts the logo size-->
            </div>
        </div>
    </section>

    <!--SEARCH-->
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
        <div class="container text-center p-5">
            <!--GOOGLE MAP API-->
            <div id="map">
                <img src="map.jpeg" alt="incridea map" title="source: incridea" style="max: width 100px;%;">
            </div>
        </div>
        <div class="text-center position-relative text-light pb-2">
            <h3 class="pb-3">Click on the following buttons to get the information of the Rooms in these blocks</h3>
            <button class="btn btn-warning btn-lg" id="block1btn1" value="S Ramanujan Block">S Ramanujan Block</button>      <!--ENTER PROPER BLOCK NAMES INSIDE THE VALUE-->
            <div id="block1" class="align-center">
                                <!--BLOCK 1 DATA WILL BE DISPLAYED HERE AFTER CLICKING THE BUTTON -->
            </div>
        </div>
        <div class="text-center position-relative text-light p-2">
            <button class="btn btn-warning btn-lg" id="block1btn2" value="APJ Kalam Block">APJ Kalam Block</button>
            <div id="block2" class="text-center">
                                <!--BLOCK 2 DATA WILL BE DISPLAYED HERE AFTER CLICKING THE BUTTON -->
            </div>
        </div>
        <div class="text-center position-relative text-light p-2">
            <button class="btn btn-warning btn-lg" id="block1btn3" value="Sir CV Raman Block">Sir CV Raman Block</button>
            <div id="block3" class="text-center">
                                <!--BLOCK 3 DATA WILL BE DISPLAYED HERE AFTER CLICKING THE BUTTON -->
            </div>
        </div>
        <div class="text-center position-relative text-light p-2">
            <button class="btn btn-warning btn-lg" id="block1btn4" value="Sir M Visvesvaraya Block">Sir M Visvesvaraya Block</button>
            <div id="block4" class="text-center">
                                <!--BLOCK 4 DATA WILL BE DISPLAYED HERE AFTER CLICKING THE BUTTON -->
            </div>
        </div>
        <div class="text-center position-relative text-light p-2">
            <button class="btn btn-warning btn-lg" id="block1btn5" value="Atal Block">Atal Block</button>
            <div id="block5" class="text-center">
                                <!--BLOCK 5 DATA WILL BE DISPLAYED HERE AFTER CLICKING THE BUTTON -->
            </div>
        </div>
    </section>
    
    <script>
        $(document).ready(function(){
            $("#block1btn1").click(function(e){
                var value=$(this).val();
                e.preventDefault();
               
                $.ajax({
                    type:"post",
                    url:"fetchdata.php",
                    data:{key: value},
                    dataType:"html",
                    success:function(response){
                        $('#block1').html(response);
                    }
                });
            });
        });

        $(document).ready(function(){
            $("#block1btn2").click(function(e){
                var value=$(this).val();
                e.preventDefault();
               
                $.ajax({
                    type:"post",
                    url:"fetchdata.php",
                    data:{key: value},
                    dataType:"html",
                    success:function(response){
                        $('#block2').html(response);
                    }
                });
            });
        });

        $(document).ready(function(){
            $("#block1btn3").click(function(e){
                var value=$(this).val();
                e.preventDefault();
               
                $.ajax({
                    type:"post",
                    url:"fetchdata.php",
                    data:{key: value},
                    dataType:"html",
                    success:function(response){
                        $('#block3').html(response);
                    }
                });
            });
        });

        $(document).ready(function(){
            $("#block1btn4").click(function(e){
                var value=$(this).val();
                e.preventDefault();
               
                $.ajax({
                    type:"post",
                    url:"fetchdata.php",
                    data:{key: value},
                    dataType:"html",
                    success:function(response){
                        $('#block4').html(response);
                    }
                });
            });
        });

        $(document).ready(function(){
            $("#block1btn5").click(function(e){
                var value=$(this).val();
                e.preventDefault();
               
                $.ajax({
                    type:"post",
                    url:"fetchdata.php",
                    data:{key: value},
                    dataType:"html",
                    success:function(response){
                        $('#block5').html(response);
                    }
                });
            });
        });

       /* $(document).ready(function(){
            $("#block1btn6").click(function(e){
                var value=$(this).val();
                e.preventDefault();
               
                $.ajax({
                    type:"post",
                    url:"fetchdata.php",
                    data:{key: value},
                    dataType:"html",
                    success:function(response){
                        $('#block6').html(response);
                    }
                });
            });
        });

        $(document).ready(function(){
            $("#block1btn7").click(function(e){
                var value=$(this).val();
                e.preventDefault();
               
                $.ajax({
                    type:"post",
                    url:"fetchdata.php",
                    data:{key: value},
                    dataType:"html",
                    success:function(response){
                        $('#block7').html(response);
                    }
                });
            });
        }); */
    </script>
</body>
</html>