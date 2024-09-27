<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="JobPortal.StudentHome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>My Web Form</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        body {
        }

         [data-overlay="8"]:before {
/*            opacity: 0.8;*/
        }

        [data-overlay]:before {
            position: absolute;
            content: '';
            background: linear-gradient(to right, rgba(50, 50, 50, 1) 20%, rgba(50, 50, 50, .95) 50%, rgba(50, 50, 50, 0.1) 80%, rgba(50, 50, 50, 0) 100%);
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
        }
        @media (max-width: 992px) {
    nav.navbar.bootsnav .navbar-header {
        float: none;
        display: block;
        text-align: center;
        padding-left: 20px;
        padding-right: 20px;
    }
}
        .search-container {
            margin-top: 100px;
            margin-left: 280px;
            height: 40px;
            display: flex;
            align-items: center;
            background-color: #ffffff;
            border-radius: 25px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            padding: 5px 15px;
            width: 80%;
            max-width: 600px;
        }
        .search-container input {
            border: none;
            outline: none;
            padding: 10px;
            font-size: 16px;
            width: 100%;
            border-radius: 25px;
        }
        .search-container button {
            border: none;
            background-color: green;
            color: #fff;
            border-radius: 50%;
            padding: 10px 15px;
            margin-left: 10px;
            cursor: pointer;
            font-size: 16px;
        }

        .btn {
/*    border: none;
    cursor: pointer;
    padding: 10px 20px;
    border-radius: 4px;
    font-size: 14px;
    font-weight: bold;
    text-align: center;
    text-decoration: none;*/

border: none;
background-color: green;
color: #fff;
border-radius: 10%;
padding: 10px 15px;
margin-left: 10px;
cursor: pointer;
font-size: 16px;
display:block;
}
        .button{
 background-color: green;
color: #fff;
border-radius: 10%;
display:block;
margin-top: -51px;
margin-left: 10px;
}
        

        .fa-magnifying-glass:before, .fa-search:before {
    content: "\f002";
    color: black;
}

        .search-container button:hover {
            background-color: black;
        }
         .search-container .icon {
                margin-right: 10px;
                margin-bottom: 15px;
                margin-left: 5px;/* Spacing between icon and text */
        }
        @media (min-width: 768px) {
    .container-fluid>.navbar-collapse, .container-fluid>.navbar-header, .container>.navbar-collapse, .container>.navbar-header {
        margin-right: 0;
        margin-left: 0;
    }
}
        @media screen and (max-width: 992px) {
            .utf_main_banner_area h2 {
                font-size: 50px;
                font-weight: 700;
                margin-bottom: 10px;
            }
        }

        @media (min-width: 768px) {
            .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9 {
                float: left;
            }
        }

        .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
            position: relative;
            min-height: 1px;
            padding-right: 15px;
            padding-left: 15px;
        }

        @media (min-width: 768px) {
            .col-sm-10 {
                width: 83.33333333%;
            }
        }

        /* Main Banner Area */
.utf_main_banner_area {
    position: relative;
    background-size: cover;
    background-position: center;
    color: #ffffff;
    padding: 60px 0;
    height: 100vh;
    text-align: center;
}

.utf_main_banner_area::before {
    content: '';
   
   
    background: rgba(0, 0, 0, 0.5); /* Overlay effect */
    z-index: 1;
}

.utf_main_banner_area .container {
    position: relative;
    z-index: 2;
}


.caption {
    margin: 0 auto;
    max-width: 800px;
}

.caption h2 {
    font-size: 4.5em;
    font-weight: 700;
    color: whitesmoke;
    padding-top: 80px;
    margin-bottom: 15px;
}

.caption h2 span.theme-cl {
    color: green;
}

.caption p {
    color: whitesmoke;
    font-size: 1.2em;
    margin-bottom: 20px;
}

.caption .trending_key a {
    color: #27d773;
    background: rgba(38, 174, 97, 0.15);
    border-radius: 4px;
    padding: 5px 8px;
    text-decoration: none;
}

.caption .trending_key a:hover {
    background: rgba(38, 174, 97, 0.25);
}

/* Form Styles */
.utf_main_banner_area fieldset .form-control, .utf_main_banner_area fieldset .seub-btn, .utf_main_banner_area fieldset select.selectpicker {
    width: 100%;
    padding: 12px 20px;
    border: none;
    border-radius: 0px;
    height: auto;
    line-height: 1.5;
    font-size: 14px;
    font-weight: 500;
    height: 60px;
    display: flex;
    flex-direction: row;
    align-items: center;
    flex-wrap: wrap;
}

.theme-btn {
    background-color: #27d773;
    color: #fff;
}

.theme-btn:hover {
    background-color: #1f9d60;
}

.seub-btn {
    margin-top: 0;
}

.padd-0 {
    padding: 0;
}

.m-clear {
    margin: 0;
}

/* Responsive Styles */
@media (max-width: 767px) {
    .utf_main_banner_area {
        padding: 30px 0;
    }

    .caption h2 {
        font-size: 1.8em;
    }
}
       
/* Navbar Styles */
 .navbar {
    background-color: #ffffff;
    border: none;
    border-radius: 0;
    margin-bottom: 0;
    padding: 0;
    position: relative;
}

.navbar-default {
    border: none;
}
.navbar-header {
    float: left;
}

.navbar-toggle {
    border: none;
    background: none;
}

.navbar-toggle .fa {
    font-size: 24px;
    color: #333;
}

.fa, .fa-brands, .fa-duotone, .fa-light, .fa-regular, .fa-solid, .fa-thin, .fab, .fad, .fal, .far, .fas, .fat {
    -moz-osx-font-smoothing: grayscale;
    -webkit-font-smoothing: antialiased;
    display: var(--fa-display, inline-block);
    font-style: normal;
    font-variant: normal;
    line-height: 1;
    text-rendering: auto;
    margin-top: 15px;
    font-size: x-large;
}

.fa-bars:before, .fa-navicon:before {
    content: "\f0c9";
    color: whitesmoke;
}

@media (max-width: 768px) {
    .navbar-toggle {
        display: block;
    }

    .navbar-collapse {
        border-top: 1px solid #ddd;
    }

    .navbar-nav {
        float: none;
        margin: 0;
        padding: 0;
        display: block;
    }

    .navbar-nav > li {
        float: none;
    }

    .navbar-nav > li > a {
        padding: 15px 20px;
    }

    .navbar-nav .dropdown-menu {
/*        position: static;
        float: none;*/
        display: none;
        box-shadow: none;
    }
}
.navbar-brand {
    float: left;
}

.navbar-brand img {
    max-height: 50px;
    height: auto;
        margin-top: 10px;
    margin-left: 10px;
}

.navbar-collapse {
    padding: 0;
}

.navbar-nav {
    margin: 0;
    padding: 0;
    list-style: none;
}

.navbar-nav > li {
    padding-right: 15px;
    float: left;
    position: relative;
}

.navbar-nav > li > a {
    display: block;
    padding: 15px 20px;
    color: #ffffff;
    text-decoration: none;
}
.navbar-nav > li:hover > .dropdown-menu {
            display: block; /* Show dropdowns on hover */ 
        }

.navbar-nav > li > a:hover,
.navbar-nav > li > a:focus {
   text-decoration:underline;
}

.navbar-nav .dropdown-menu {
    display: none;
    position: absolute;
    top: 100%;
    left: 0;
    margin: 0;
    padding: 0;
    list-style: none;
    background-color: #ffffff;
    border: 1px solid #ddd;
    border-radius: 4px;
    box-shadow: 0 8px 16px rgba(0,0,0,0.2);
}
.dropdown-menu {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

.navbar-nav .dropdown-menu > li > a {
    padding: 10px 20px;
    color: #333;
    text-decoration: none;
}

.navbar-nav .dropdown-menu > li > a:hover {
    background-color: #f1f1f1;
}

.navbar-nav .dropdown:hover .dropdown-menu {
    display: block;
}

.navbar-right {
    float: inline-end;
    padding-top: 5px;
    padding-right: 40px;
}

.btn-signup {
    display: inline-block;
    padding: 10px 20px;
    color: #fff;
    text-decoration: none;
    border-radius: 4px;
    font-weight: bold;
    text-align: center;
}

.red-btn {
    background-color: green;
}

.red-btn:hover {
    background-color: #c0392b;
}

.navbar-mobile .navbar-nav > li > a {
    padding: 15px 10px;
}

.navbar-fixed {
    
    width: 100%;
    top: 0;
    z-index: 1030;
}

.white {
    background-color: #ffffff;
}

.no-background {
    background: transparent;
}

/*CSS for browse by category*/

  .category-section {
            text-align: center;
            margin: 40px 0;
        }
        .category-title {
            font-size: 36px;
            margin-bottom: 30px;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .category-card {
            position: relative;
            background: #fff;
            box-shadow: 0 5px 25px 0 rgba(41, 128, 185, .15);
            border-radius: 10px;
            text-align: center;
            padding: 30px 15px;
            box-sizing: border-box;
            margin: 40px; /* Adjust margin for spacing */
            overflow: hidden;
            transition: .6s linear;
            display: flex;
            flex-direction: column; /* Align items vertically */
            justify-content: center;
            align-items: center;
            width: 230px; /* Fixed width for uniformity */
            height : 200px;
        }
        .icon-container {
            background: #26ae61;
            font-size: 40px;
            color: #ffffff;
            width: 80px;
            height: 80px;
            line-height: 72px;
            border: 2px solid #26ae61;
            border-radius: 50px;
            text-align: center;
            margin: 0 auto 10px auto; /* Margin between icon and title */
            transition: 0.6s cubic-bezier(0.45, 0.01, 0.1, 1.49);
        }
        .icon-container:hover {
            background: #1e8e49; /* Darker shade on hover */
            cursor: pointer;
        }
        h4 {
            font-size: 18px; /* Adjust heading size */
            margin: 0; /* Remove default margin */
        }

/*CSS for Footer*/

footer {
    background-color: #e9ede8;
    color: #080808;
    padding: 40px 20px;
    padding-top: 30px;
}
 
.footer-content {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    max-width: 1200px;
    margin: 0 auto;
}
 
.footer-section {
    flex: 1;
    min-width: 200px;
    margin-right: 20px;
}
 
    .footer-section h4 {
        border-bottom: 2px solid #26ae61;
        padding-bottom: 10px;
        margin-bottom: 20px;
        font-size: 1.2em;
    }
 
    .footer-section ul {
        list-style: none;
    }
 
        .footer-section ul li {
            margin-bottom: 10px;
        }
 
            .footer-section ul li a {
                color: #080808;
                text-decoration: none;
            }
 
                .footer-section ul li a:hover {
                    color: #26ae61;
                }
 
.footer-social {
    text-align: center;
    margin: 20px 0;
}
 
    .footer-social a {
        color: #080808;
        font-size: 1.5em;
        margin: 0 10px;
        text-decoration: none;
    }
 
        .footer-social a:hover {
            color: #26ae61;
        }
 
.footer-bottom {
    text-align: center;
    margin-top: 20px;
    border-top: 1px solid #444;
    padding-top: 10px;
}
 
    .footer-bottom p {
        font-size: 0.9em;
    }

        .sidebar {
            width: 250px;
            position: fixed;
            top: 0;
            left: -250px; /* Hidden by default */
            height: 100%;
            background-color: #343a40;
            transition: left 0.3s;
            padding-top: 20px;
            z-index: 1000;
        }
        .sidebar a {
            padding: 10px 15px;
            color: white;
            text-decoration: none;
            display: flex;
            align-items: center;
            transition: background-color 0.3s, transform 0.3s;
        }
        .sidebar a:hover {
            background-color: #495057;
            transform: scale(1.05);
        }
        .sidebar i {
            width: 24px; /* Icon size */
            margin-right: 10px; /* Space between icon and text */
        }
        .sidebar.active {
            left: 0; /* Show the sidebar */
        }

        /* CSS for Page Content */
        .page-content {
            transition: margin-left 0.3s; /* Slide effect */
            margin-left: 0; /* Default position */
        }
        .page-content.active {
            margin-left: 250px; /* Move right when sidebar is active */
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#sidebarToggle').click(function (e) {
                e.preventDefault(); // Prevent default action
                $('#sidebar').toggleClass('active');
                $('.page-content').toggleClass('active'); // Slide the content
            });

            // Close the sidebar when close button is clicked
            $('#closeSidebar').click(function () {
                $('#sidebar').removeClass('active');
                $('.page-content').removeClass('active'); // Slide back the content
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">

            
        
        <!-- Sidebar -->
        <div id="sidebar" class="sidebar">
            <a href="ManageAppJobs.aspx">
                <i class="fas fa-briefcase"></i> Manage Job
            </a>
            <a href="#profileMatch">
                <i class="fas fa-user-check"></i> Profile Match
            </a>
            <a href="#messages">
                <i class="fas fa-envelope"></i> Messages
            </a>
            <a href="Manageacc.aspx">
                <i class="fas fa-user-cog"></i> Manage Account
            </a>
            <a href="Manageacc.aspx">
                <i class="fas fa-lock"></i> Change Password
            </a>
            <a href="LogOut.aspx">
                <i class="fas fa-sign-out-alt"></i> Logout
            </a>
            <button type="button" class="btn btn-secondary" id="closeSidebar">Close</button>
            <script>
                document.getElementById('logoutButton').addEventListener('click', function () {
                    window.location.href = 'LogOut.aspx'; // Redirect to logout page
                });
</script>
        </div>

        <!-- Main Page Content -->
        <div class="page-content">
            <nav class="navbar navbar-default navbar-mobile navbar-fixed white bootsnav on no-background">
                <div class="container">
          
                    <a class="navbar-brand" href="Homepage.aspx">
                        <img src="../Images/JobThrive.svg" class="logo logo-display"  style="width:150px; margin-left : 52px; position:absolute ;" />
                     
                    </a>
                </div>
                <div class="collapse navbar-collapse" id="navbar-menu">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="br-right">
                            <asp:LinkButton ID="LoginButton" CssClass="btn-signup red-btn" runat="server" OnClick="LoginButton_Click">
                                <i class="login-icon ti-user"></i>Login
                            </asp:LinkButton>
                        </li>
                        <li class="sign-up">
                            <asp:LinkButton ID="RegisterButton" CssClass="btn-signup red-btn" runat="server" PostBackUrl="~/Register.aspx">
                                <span class="ti-briefcase"></span>Register
                            </asp:LinkButton>
                        </li>
                    </ul>
                </div>
            </nav>
            </div>

        <div class="utf_main_banner_area" style="background-image:url(../Images/stu.jpg);" data-overlay="8">
              <div class="container mt-5">
                    <div class="text-center">
                         <button id="sidebarToggle" class="button btn-primary">☰ </button>
                     </div>
               </div>
  <div class="container">
    <div class="col-md-8 col-sm-10">
      <div class="caption cl-white home_two_slid">
        <h2>Search Between More Than <span class="theme-cl">10,000</span> Open Jobs.</h2>
        <p>Trending Jobs Keywords: <span class="trending_key"><a href="#">Web Designer</a></span> <span class="trending_key"><a href="#">Web Developer</a></span> <span class="trending_key"><a href="#">IOS Developer</a></span> <span class="trending_key"><a href="#">Android Developer</a></span></p>
      </div>
      <div class="search-container">
        <asp:TextBox ID="SearchTextBox" runat="server" placeholder="Search for jobs..." CssClass="form-control" />
    <asp:Button ID="SearchButton" runat="server" CssClass="btn" Text="Search" OnClick="SearchButton_Click"  />
            <span class="icon">
        <i class="fas fa-search"></i>
    </span>
    </div>
        <script type="text/javascript">
            document.getElementById('<%= SearchButton.ClientID %>').innerHTML = '<i class="fas fa-search"></i> Search';
</script>
    
    </div>
  </div>
</div>

        <div class="category-section">
    <h2 class="category-title">Browse Jobs by Categories</h2>
    <div class="card-container">
    <div class="category-card">
        <a href="BrowseJobs.aspx?category=WebDev" style="text-decoration : none">
            <div class="icon-container">
                <i class="fas fa-laptop-code"></i>
            </div>
            <h4>Web & Software Dev</h4>
        </a>
    </div>
    <div class="category-card">
        <a href="BrowseJobs.aspx?category=DataScience" style="text-decoration : none">
            <div class="icon-container">
                <i class="fas fa-chart-line"></i>
            </div>
            <h4>Data Science & Analytics</h4>
        </a>
    </div>
    <div class="category-card">
        <a href="BrowseJobs.aspx?category=Accounting" style="text-decoration : none">
            <div class="icon-container">
                <i class="fas fa-briefcase"></i>
            </div>
            <h4>Accounting & Consulting</h4>
        </a>
    </div>
    <div class="category-card">
        <a href="BrowseJobs.aspx?category=Writing" style="text-decoration : none">
            <div class="icon-container">
                <i class="fas fa-pencil-alt"></i>
            </div>
            <h4>Writing & Translation</h4>
        </a>
    </div>
    <div class="category-card">
        <a href="BrowseJobs.aspx?category=Sales" style="text-decoration : none">
            <div class="icon-container">
                <i class="fas fa-comments"></i>
            </div>
            <h4>Sales & Marketing</h4>
        </a>
    </div>
    <div class="category-card">
        <a href="BrowseJobs.aspx?category=Graphics" style="text-decoration : none">
            <div class="icon-container">
                <i class="fas fa-paint-brush"></i>
            </div>
            <h4>Graphics & Design</h4>
        </a>
    </div>
    <div class="category-card">
        <a href="BrowseJobs.aspx?category=DigitalMarketing" style="text-decoration : none">
            <div class="icon-container">
                <i class="fas fa-bullhorn"></i>
            </div>
            <h4>Digital Marketing</h4>
        </a>
    </div>
    <div class="category-card">
        <a href="BrowseJobs.aspx?category=Education" style="text-decoration : none">
            <div class="icon-container">
                <i class="fas fa-chalkboard-teacher"></i>
            </div>
            <h4>Education & Training</h4>
        </a>
    </div>
</div>
</div>

        <div style="padding-top:50px">
<footer>
<div class="footer-content">
<div class="footer-section">
<h4>About Us</h4>
<ul>
<li><a href="AboutUs.aspx">Our Story</a></li>
<li><a href="AboutUs.aspx">Mission & Values</a></li>
<li><a href="AboutUs.aspx">Team</a></li>
</ul>
</div>
<div class="footer-section">
<h4>Post a Job</h4>
<ul>
<li><a href="#">Job Posting</a></li>
<li><a href="#">Pricing</a></li>
</ul>
</div>
<div class="footer-section">
<h4>Career Insight</h4>
<ul>
<li><a href="#">Career Tips</a></li>
<li><a href="#">Industry News</a></li>
</ul>
</div>
<div class="footer-section">
<h4>FAQ</h4>
<ul>
<li><a href="#">General Questions</a></li>
<li><a href="#">Help Center</a></li>
</ul>
</div>
<div class="footer-section">
<h4>Advice</h4>
<ul>
<li><a href="#">Job Searching Tips</a></li>
<li><a href="#">Resume Building</a></li>
</ul>
</div>
<div class="footer-section">
<h4>Interview Insight</h4>
<ul>
<li><a href="#">Interview Tips</a></li>
<li><a href="#">Common Questions</a></li>
</ul>
</div>
<div class="footer-section">
<h4>Contact Us</h4>
<ul>
<li><a href="#">Email</a></li>
<li><a href="#">Phone</a></li>
</ul>
</div>
</div>
<div class="footer-social">
<a href="
https://www.linkedin.com"
target="_blank" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
<a href="
https://www.facebook.com"
target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a>
<a href="
https://twitter.com"
target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a>
<a href="
https://www.google.com"
target="_blank" title="Google"><i class="fab fa-google"></i></a>
</div>
<div class="footer-bottom">
<p>&copy; 2024 JobThrive. All rights reserved.</p>
</div>
</footer>
</div>
    </form>
</body>
</html>