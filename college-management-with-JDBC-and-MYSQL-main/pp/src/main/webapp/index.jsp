<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PACE ITS</title>
    <link rel="shortcut icon" href="image/favicon.ico" type="image/svg+xml">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="footer.css">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="shortcut icon" href="image/favicon.ico" type="image/svg+xml">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />

</head>

<body>
    <section class="header">
        <nav>
            <h1 class="logo">PACE</h1>
            <div class="nav-links" id="navLinks">
                <span class="icon" onclick="hidemenu()">&#10005;</span>
                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="admission.html">Admission</a></li>
                    <li><a href="https://www.pace.ac.in/academics/departments/ece">Course</a></li>
                    <li><a href="fee.html">Fees</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="contact.html" target="_top">Contact</a></li>
                     <li><a href="login.jsp"  >Logout</a></li>
                     <li><a href="logout" class="login-btn"><%=session.getAttribute("name")%></a></li>
                     
                    
                </ul>
            </div>
            <span class="icon" onclick="showmenu()">&#9776;</span>
        </nav>
        <section class="box">
            <video src="./assets/bgg.mp4" autoplay muted loop></video>
        </section>
        <div class="text-box">
            <h1>PACE Institute of Technology & Sciences </h1>
            <p>Pace Institute: Accredited with an 'A' grade by NAAC,<br>and recognized for its research and development
                initiatives.</p>

            <a href="" class="hero-btn">Admission Open</a>
            <h3>Scroll for more info</h3>
        </div>
        <svg class="arrows">
            <path stroke-linecap="round" class="a1" d="M0 0 L15 15 L30 0"></path>
            <path stroke-linecap="round" class="a2" d="M0 10 L15 25 L30 10"></path>
            <path stroke-linecap="round" class="a3" d="M0 20 L15 35 L30 20"></path>
        </svg>
    </section>

    <section class="course" id="course_call">
        <h1>Course We Offer</h1>
        <p>We are offer Diploma, B.Tech, MBA for student by Pace Institute </p>
        <div class="row">
            <div class="course-col">
                <h2>B-tech</h2>
                <p>"Shape your tomorrow at Pace B.Tech. Explore Civil, EEE, Mech, ECE, and emerging fields like AI, IoT,
                    and CSBT."</p>

            </div>

            <div class="course-col">
                <h2>MBA </h2>
                <p>Pace MBA: Develop holistic leaders for a dynamic business world. (This combines leadership
                    development with industry relevance in one line.) </p>
            </div>

            <div class="course-col">
                <h2>MTECH </h2>
                <p>Pace MTECH: Develop holistic leaders for a dynamic business world. (This combines leadership
                    development with industry relevance in one line.) </p>
            </div>

            <div class="course-col">
                <h2>Polytechnic</h2>
                <p>Pace Polytechnic: Launch your career in 5 in-demand fields - EEE, ECE, Civil, Mechanical, CSE.</p>
            </div>
        </div>
    </section>

    <section class="facilities">
        <h1>Our facilities</h1>
        <p>Pace Institute: Empowering Futures

            Pace Institute offers a vibrant learning environment with modern classrooms, well-equipped labs, and
            tech-enabled facilities like air-conditioned
            <br> computer centers. Explore a wide range of B.Tech programs in Engineering, IT, and AI/DS, or pursue an
            MBA for well-rounded leadership development.
            <br> The 12-acre Wi-Fi enabled campus provides furnished hostels, a library, sports facilities, and green
            spaces, fostering a well-rounded student experience..
        </p>


        <div class="row">
            <div class="facilities-col">
                <img src="assets/lib.jpg" alt="">
                <h3>Library</h3>
                <p>Fuel your academic journey at Pace Institute's well-stocked library, the hub of all learning
                    activities on campus. This treasure trove boasts over 38,548 volumes and a wealth of knowledge
                    through 77 National, 10 International Print Journals, 15 Magazines, and 5 Newsletters. Stay
                    ahead of the curve with access to online resources through the user-friendly Web Catalogue
                    (OPAC). </p> <br>
                <a class="f-hero-btn" href="">EXPLORE</a>
            </div>

            <div class="facilities-col">
                <img src="assets/ncc.png" alt="">
                <h3>Shape Your Future with the NCC</h3>
                <p>The NCC is a voluntary youth development program open to school and college students. It fosters a
                    sense of duty, discipline,
                    and leadership through various activities, including social service and adventure training. The
                    program offers three wings: Army (Red),
                    Navy (Deep Blue), and Air Force (Light Blue), allowing cadets to explore their interests. The NCC
                    plays a vital role in shaping responsible and dedicated citizens for the nation.. </p> <br>
                <a class="f-hero-btn" href="">EXPLORE</a>
            </div>

            <div class="facilities-col">
                <img src="assets/labs.jpg" alt="">
                <h3>Well Equipped Labs</h3>
                <p>Pace Institute prides itself on its modern learning environment, featuring well-equipped labs. These
                    labs aren't just filled with the latest gadgets - they're specifically designed for each field of
                    study, ensuring students have access to cutting-edge technology relevant to their chosen career
                    path. This commitment to tech-ready labs empowers students with hands-on learning experiences,
                    preparing them for success in today's ever-evolving world.
                </p> <br>
                <a class="f-hero-btn" href="">EXPLORE</a>
            </div>
        </div>
    </section>


    <section class="cta">
        <h1>TRAINING & PLACEMENTS</h1>
        <a href="" class="hero-btn">Know More</a>
    </section>

    <section class="recruiters">
        <h1>Our Top Recruiters</h1>
    </section>


    <div class="logos-wrapper">
        <div class="logos">
            <div class="logos-slide">
                <img src="assets/New folder/1.png" alt="">
                <img src="assets/New folder/2.png" alt="">
                <img src="assets/New folder/3.png" alt="">
                <img src="assets/New folder/4.png" alt="">
                <img src="assets/New folder/5.jpeg" alt="">
                <img src="assets/New folder/6.png" alt="">
                <img src="assets/New folder/7.jpg" alt="">
                <img src="assets/New folder/8.jpg" alt="">
                <img src="assets/New folder/9.png" alt="">
            </div>
        </div>
    </div>
    <div class="llogos-wrapper">
        <div class="llogos">
            <div class="llogos-slide">
                <img src="assets/New folder/10.jpg" alt="">
                <img src="assets/New folder/12.png" alt="">
                <img src="assets/New folder/13.png" alt="">
                <img src="assets/New folder/14.png" alt="">
                <img src="assets/New folder/15.png" alt="">
                <img src="assets/New folder/16.png" alt="">
                <img src="assets/New folder/17.png" alt="">
                <img src="assets/New folder/18.png" alt="">
                <img src="assets/New folder/19.png" alt="">
            </div>
        </div>
    </div>

    <footer class="footer">
        <div class="footer__addr">
            <h1 class="footer__logo"><img src="./assets/logo.png" alt=""></h1>

            <h2 class="nav__title">Contact</h2>
            <p>+91-9581456310</p>

            <address>
                NH-5, near Valluramma Temple, Ongole, Andhra Pradesh 523272<br>

                <a class="hero-btn " href="mailto:example@gmail.com">Email Us</a>
            </address>
        </div>

        <ul class="footer__nav">
            <li class="nav__item">
                <h2 class="nav__title">DOWNLOAD</h2>

                <ul class="nav__ul">
                    <li>
                        <a href="#">
                            Student Hand Book</a>
                    </li>
                    <li>
                        <a href="#">HR Policy Book</a>
                    </li>
                    <li>
                        <a href="#">Organisation Chart</a>
                    </li>
                    <li>
                        <a href="#">College Brochure</a>
                    </li>
                    <li>
                        <a href="#">Job Application</a>
                    </li>

                    <li>
                        <a href="#">Alternative Ads</a>
                    </li>
                    <li>
                        <a href="#">Institutional DevelopmentPlan</a>
                    </li>
                </ul>
            </li>
            <li class="nav__item">
                <h2 class="nav__title">QUICK LINKS</h2>

                <ul class="nav__ul">
                    <li>
                        <a href="#">
                            Academic Calendar</a>
                    </li>
                    <li>
                        <a href="#">Courses Offered</a>
                    </li>
                    <li>
                        <a href="#">Online Fee Payment</a>
                    </li>
                    <li>
                        <a href="#">Exam Results</a>
                    </li>
                    <li>
                        <a href="#">RTI</a>
                    </li>
                </ul>
            <li class="nav__item">
                <h2 class="nav__title">Legal</h2>

                <ul class="nav__ul">
                    <li>
                        <a href="#">Privacy Policy</a>
                    </li>

                    <li>
                        <a href="#">Terms of Use</a>
                    </li>
                </ul>
            </li>
        </ul>

        <div class="legal">
            <p>&copy;PACE INSTITUTE OF TECHNOLOGY AND SCIENCES (PACE ITS).</p>
        </div>
        <div class="icons">
            <p class="nav__title">Follow Us On</p>
            <i class="fa-brands fa-facebook-f"></i>
            <i class="fa-brands fa-twitter"></i>
            <i class="fa-brands fa-linkedin"></i>
            <i class="fa-brands fa-github"></i>
        </div>
    </footer>

    <script>
        var navLinks = document.getElementById("navLinks");

        function showmenu() {
            navLinks.style.right = "0";
        }
        function hidemenu() {
            navLinks.style.right = "-200px";
        }
    </script>


</body>
</html>