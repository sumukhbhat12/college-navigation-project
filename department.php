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
    <title>Department page</title>
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
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a  class="nav-link" id="cur" href="#">DEPARTMENT</a>
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
                    <p class="mt-4 lead">NMAMIT has a lot of departments and offers a variety of courses</p>
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
        <div class="info text-light text-center container">
        <section class="row">
            <div class="col-7 mx-auto p-3">
                <h3>Computer Science & Engineering Department</h3>
                <p> The Department of Computer Science & Engineering, established in 1986, offers UG, PG and research (leading to M.Sc. and Ph.D.) programs.
                    The B.E. program is autonomous under VTU(2007) and is accredited by the National Board of Accreditation (NBA) in 2008 and re-accredited during the years 2012 & 2015. 
                    The Department practices outcome-based education since 2014. With state-of-the-art laboratories and other supporting facilities to provide enhanced learning environment,
                    the Department boasts of well qualified teaching faculty with rich research, teaching and industrial experience.
                </p>
            </div>
                

            </section>
            <section>
                <div class="col-8 mx-auto p-3">
                    <h3>Information Science & Engineering Department</h3>
                    <p>Started in 1999 with admission capacity of 40 students, the Department of Information Science & Engineering now offers UG program with an intake of 180 students since 2019.
                    Accredited by the National Board of Accreditation, the department has well-qualified and dedicated teaching and support staff and well-equipped laboratories to fulfill the academic needs of the students.
                    The department with academic autonomy granted by VTU since 2007, also conducts special courses on advanced topics, to bridge the gap between the curriculum and the need of the industry.</p>
                </div>
            </section>
            <section>
                <div class="col-8 mx-auto p-3">
                    <h3>Mechanical Engineering Department</h3>
                    <p>The Department of Mechanical Engineering started in 1986 with an intake of 40 students, today has an intake of 120 with a faculty strength of 52.
                        The Department offers an Undergraduate programme, BE in Mechanical Engineering and two Postgraduate programes - M.Tech. in Energy Systems Engineering and Machine Design with an intake of 18 students each.
                        The Department is a recognized research centre under VTU Belagavi, with 9 guides and more than 26 Ph.D students both internal and external including 3 full-time Research Scholars.
                        With excellent infrastructural facilities in terms of class rooms and laboratories, the faculty are engaged in research activities and sponsored research projects worth more than Rs.
                        90 Lakhs are already executed. </p>
                </div>
            </section>
            <section>
                <div class="col-8 mx-auto p-3">
                    <h3>Civil Engineering Department</h3>
                    <p>The Civil Engineering Department started in 1987 with a UG Programme with an intake of 60. Annual Intake has been increased to 120 since the academic year 2012-13. 
                     Two year Post Graduation programme M.Tech in Construction Technology was started in 2010 with an intake of 18 and M.Tech in Structural Engineering in the year 2017 with an intake of 24.
                    The Department is also recognized as a Research Centre offering M.Sc. (Engg.) and Ph.D. programmes with 9 research scholars pursuing their Ph. D. 
                    In addition, the Department Students' Association (OCEAN) organizes seminars, workshops, educational tours and design competitions for Civil Engineering students.
                    It also conducts Leadership Training, Personality Development Training and Entrepreneurship Development Programmes. </p>
                </div>
            </section>
            <section>
                <div class="col-8 mx-auto p-3">
                    <h3>Biotechnology Engineering Department</h3>
                    <p>Bachelor of Biotechnology Engineering program , started in 2002, with intake capacity of 60 to train students in biological applications of engineering principles.
                        The plunge was taken being assured of assistance by sister institutions, KSHEMA - K S Hegde Medical Academy & NGSM College of pharmaceutical sciences.
                        The program accredited by National Board of Accreditation fosters research culture with its faculty receiving research grants over 20 million rupees. 
                        Department has also filed seven patents based on research work.</p>
                </div>
            </section>
            <section>
                <div class="col-8 mx-auto p-3">
                    <h3>Electrical & Electronics Engineering Department</h3>
                    <p>The Department of Electrical & Electronics Engineering, established in 1987, offers UG and PG programs. The Department offers the undergraduate programme of BE in Electrical & Electronics Engineering with an intake of 120.
                    The BE program is autonomous under VTU since 2007 and is accredited by the National Board of Accreditation (NBA) during 2002, 2005, 2012 and 2018.
                    The Department is a recognized research center under VTU Belagavi, with three guides and 11 Research Scholars with excellent research outputs in terms of publications in referred International Journals and National, International Conferences with a total number of 140 publications in the last 4 years. </p>
                </div>
            </section>

            <section>
                <div class="col-8 mx-auto p-3">
                    <h3>Electronics & Communication Engineering Department</h3>
                    <p>The Department of Electronics and Communication Engineering offers:
                    Undergraduate Program with an intake of 180 students.
                    Postgraduate Program in VLSI Design & Embedded Systems with an intake of 18 students.
                    The Department has highly qualified and experienced faculty. The Curricula is designed with focus on the fundamentals enabling the students to undergo Experiential, Interactive, Collaborative, Computer based and Active learning to prepare them to be independent Life-long learners.</p>
                </div>
            </section>
        </div>
    </section>
    
    
    
</body>
</html>