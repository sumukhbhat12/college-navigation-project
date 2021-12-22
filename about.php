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
    <title>About page</title>
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
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a  class="nav-link" href="department.php">DEPARTMENT</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="map.php">MAP</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" id="cur" href="#">ABOUT</a>
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
                <p class="mt-4 lead" style="font-size:35px;text-align:center;">ABOUT US</p>
                </div>
                <!--<img class="img-fluid w-50 ms-auto ps-4 pt-4" src="NITTELOGO2.PNG" alt="logo" style="max-width: 20%;"> <!--max-width adjusts the logo size-->
            </div>
        </div>
    </section>

    <!--Search-->
    <section class="bg-warning p-5">
        <h2 class="text-center" style="font-size:35px">This page is about the creators of the website</h2>
      <!--  <div class="container">
            <div class="d-md-flex justify-content-between align-items-center">
                <h3 class="mb-3 mb-md-0">Search for A faculty/Department</h3>
                <!--TODO: MAKE THIS RIGHT ALIGNED
                <div class="input-group">
                    <div class="form-outline">
                        <input id="search-input" type="search" id="form1" placeholder="Search" class="form-control" />
                      
                    </div>
                    <button id="search-button" type="button" class="btn btn-primary">
                      <i class="fas fa-search"></i>
                      <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                      </svg>
                    </button>
                </div>
            </div>
        </div>
    -->
    </section>
    <section class="bgimg bg-image">
        <div class="text-light text-center">
            <div class="jumbotron sectionbox" id="jumbo">
                <div class="container hell ">
                    <div class="row p-5">
                                <div class="col text-center">
                                    <h3 style="text-align:center;font-size:50px;color:white">Mentor</h3>
                                    <img class="rounded-circle m-1" src="prof.shashankshetty.png" alt="Prof. Shashank Shetty" style=" max-width: 40%;">
                                    <p style="margin-bottom:0;font-size:20px">
                                        <h2>Prof. Shashank Shetty</h2>
                                        <a href="mailto:shashankshetty@nitte.edu.in" style="text-decoration:inherit;color:inherit">shashankshetty@nitte.edu.in</a>
                                    </p>
                                </div>
                                
                    </div>
                    <h3 style="text-align:center;font-size:50px;color:white"><i>Team Members</i></h3><br>
                        <div class="row ">
                            <div class="col-lg-6  col-xs-12 box">
                                <img class="rounded-circle m-1"src="utkarsh.jpeg" alt="" style="max-width:40%;">
                                    <h2>Utkarsh Keshari</h2>
                                    <p style="margin-bottom:0;font-size:20px">3rd Year CSE Student </br> USN : 4NM19CS208 </br> Contact No : 9559958737 </p>
                                            <a href="mailto:4nm19cs208@nmamit.in "style="text-decoration:inherit;color:inherit"><p><i class="bi bi-envelope-fill"></i>4nm19cs208@nmamit.in</p></a>
                                            
                            </div>
                            <div class="col-lg-6  col-xs-12 box">
                                    <img class="rounded-circle m-1"src="sumukha.jpeg" alt="" style="max-width:40%;">
                                    <h2>Sumukh Jagadeesh Bhat</h2>
                                    <p style="margin-bottom:0;font-size:20px">3rd Year CSE Student </br> USN : 4NM19CS198 </br> Contact No : 8217496836 </p>
                                    <a href="mailto:4nm19cs198@nmamit.in "style="text-decoration:inherit;color:inherit"><p><i class="bi bi-envelope-fill" color="black"></i>4nm19cs198@nmamit.in</p></a>
                                </div>
                            </div>
                        </div>
                        
                </div> 
            </div>

        </div>
    </section>
    
    <script src="index.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
    crossorigin="anonymous"></script>
    
</body>
</html>