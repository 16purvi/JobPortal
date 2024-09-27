<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="JobPortal.Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Styles/homepage.css" />
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
      <style>
                .article-containerr {
    margin: 50px auto;
    padding: 20px;
}
          .cardd {
               max-inline-size:fit-content;
           background-color:lightblue;
      height: 245px;
     flex-direction: row;
     display: flex;
border-radius: 10px;
box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
transition: transform 0.3s;
margin: 20px;
text-align: center;
border: none;
width: 375px;/* Fixed width for cards */
    }
    .cardd:hover {
        transform: translateY(-5px);
    }
    .profile-image {
            margin-top: 12px;
width: 176px;
height: 143px;
border-radius: 50%;
margin-bottom: 15px;
margin-left: 10px; /* Space below the image */
    }
    .cardd-title {
        color: #004d40; /* Dark green */
        font-weight: bold;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
       <div style="background-image:url('../Images/mainimage.jpg'); background-position:center;background-repeat:no-repeat;width:auto; height:760px;">
              <nav class="navbar" style="justify-content:space-evenly;">
     <div class="navbar-left">
           <img src="../Images/JobThrive.svg"   style="width:150px; margin-left : -128px; position:absolute ;" />
         <a href="Homepage.aspx" class="logo"></a>
         <a href="studentHome.aspx" class="nav-item">Student</a>
         <a href="CompanyLanding.aspx" class="nav-item">Company</a>
     </div>
     <div class="navbar-right">
        
         <a onclick="window.location.href='AboutUs.aspx'" class="nav-item"><i class="fas fa-user-plus"></i> About Us</a>
         <!-- <a onclick="window.location.href='adminLogin.aspx'" class="nav-item"><i class="fas fa-user-shield"></i> Admin</a>
             -->
     </div>
 </nav>
             <div style="display:flex;justify-content:center;padding-top:80px;">
             <h1 style=" color:white;text-align:center;  ">Welcome To Our </h1><h1 style="color:darkgreen; background-color: floralwhite;
    border-radius: 5px;
    padding: 5px;
    margin-left: 12px;">JobThrive !!! </h1> </div>
<h2 style="padding-top:20px; color:white; text-align:center; margin-bottom:120px ">Find Jobs, Employment and Career Opportunities...</h2>
                   <div class="container mt-11" style="max-width:1246px;">
    <div class="carddd-container">
        <div class="carddd text-center" style="width: 18rem;" >
            <div class="carddd-body" onclick="window.location.href='HomepageBoost.aspx'">
                <div class="carddd-icon">
                    <i class="fas fa-bullhorn"></i>
                </div>
                <h5 class="carddd-title">Boost</h5>
                <p class="carddd-text">Stand out to employees</p>
            </div>
        </div>

        <div class="carddd text-center" style="width: 18rem;">
            <div class="carddd-body" onclick="window.location.href='HomepagePrep.aspx'">
                <div class="carddd-icon">
                    <i class="fas fa-check-circle"></i>
                </div>
                <h5 class="carddd-title">Prep</h5>
                <p class="carddd-text">Up your interview success rate</p>
            </div>
        </div>

        <div class="carddd text-center" style="width: 18rem;">
            <div class="carddd-body" onclick="window.location.href='HomepageLearn.aspx'">
                <div class="carddd-icon">
                    <i class="fas fa-graduation-cap"></i>
                </div>
                <h5 class="carddd-title">Learn</h5>
                <p class="carddd-text">Upskill to get ahead</p>
            </div>
        </div>

        <div class="carddd text-center" style="width: 18rem;">
            <div class="carddd-body" onclick="window.location.href='HomepageNetwork.aspx'">
                <div class="carddd-icon">
                    <i class="fas fa-network-wired"></i>
                </div>
                <h5 class="carddd-title">Network</h5>
                <p class="carddd-text">Grow with mentors and peers</p>
            </div>
        </div>
    </div>
</div>
         </div>
        

 <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <div><h1 style="text-align:center; color:darkgreen; padding-top:30px; text-decoration:underline">Find Jobs In Categories</h1></div>
        <div class="container" style="padding-bottom:40px;">
        <div class="card" style="background-color:aliceblue;" >
            <i class="fas fa-money-bill-wave icon" style="color:darkgreen;"></i>
            <h2>Accounts and Finance</h2>
           <a href="StudentHome.aspx" class="apply-button">Apply</a>
        </div>
        <div class="card" style="background-color:aliceblue;">
            <i class="fas fa-chart-line icon" style="color:darkgreen;"></i>
            <h2>Marketing and Sales</h2>
           <a href="StudentHome.aspx" class="apply-button">Apply</a>
        </div>
        <div class="card" style="background-color:aliceblue;">
            <i class="fas fa-users icon" style="color:darkgreen;"></i>
            <h2>Human Resource</h2>
           <a href="StudentHome.aspx" class="apply-button">Apply</a>
        </div>
        <div class="card" style="background-color:aliceblue;">
            <i class="fas fa-cogs icon" style="color:darkgreen;"></i>
            <h2>Operations</h2>
           <a href="StudentHome.aspx" class="apply-button">Apply</a>
        </div>
        <div class="card" style="background-color:aliceblue;">
            <i class="fas fa-code icon" style="color:darkgreen;"></i>
            <h2>Development</h2>
            <a href="StudentHome.aspx" class="apply-button">Apply</a>
        </div>
        <div class="card" style="background-color:aliceblue;">
            <i class="fas fa-cloud icon" style="color:darkgreen;"></i>
            <h2>AL and ML (Cloud)</h2>
           <a href="StudentHome.aspx" class="apply-button">Apply</a>
        </div>
        <div class="card" style="background-color:aliceblue;">
            <i class="fas fa-paint-brush icon" style="color:darkgreen;"></i>
            <h2>Designing</h2>
           <a href="StudentHome.aspx" class="apply-button">Apply</a>
        </div>
        <div class="card" style="background-color:aliceblue;" >
            <i class="fas fa-calculator icon" style="color:darkgreen;"></i>
            <h2>Accounts and Finance</h2>
           <a href="StudentHome.aspx" class="apply-button">Apply</a>
        </div>
        <div class="card" style="background-color:aliceblue;">
            <i class="fas fa-server icon" style="color:darkgreen;"></i>
            <h2>Technology Services</h2>
            <a href="StudentHome.aspx" class="apply-button">Apply</a>
        </div>
    </div>
          <div class="containerr">
            <div class="quote">
                <i class="fas fa-lightbulb"></i>
                <p>"Invest in your dreams, Grind now. Shine later."</p>
            </div>
        </div>
      
        <div class="article-containerr">
<h1 style="text-align: center;
    color: darkgreen;">Our Mentors</h1>
<div style="justify-content:space-around; display:flex;">
<div class="col-md-4" style="margin-right:-81px;">
<div class="cardd">
<img src="../Images/PankajSir.jpg" alt="Pankaj Ahuja" class="profile-image" />
<div class="cardd-body" style="align-content:center;">
<h5 class="cardd-title">Pankaj Ahuja</h5>
<p class="cardd-text">Vice President</p>
<p class="cardd-text"><a href="Ahuja.Pankaj@finthrive.com">Ahuja.Pankaj@finthrive.com</a></p>
</div>
</div>
</div>
<div class="coll-md-4">
<div class="cardd">
<img src="../Images/AtulSir.jpg" alt="Atul Jain" class="profile-image" />
<div class="cardd-body" style="align-content:center;">
<h5 class="cardd-title">Atul Kumar Jain</h5>
<p class="cardd-text">Director</p>
<p class="cardd-text"><a href="mailto:Jain.atul@finthrive.com">Jain.atul@finthrive.com</a></p>
</div>
</div>
</div>
<div class="coll-md-4">
<div class="cardd">
<img src="../Images/SaurabhSir.jpg" alt="Saurabh Dhandha" class="profile-image" />
<div class="cardd-body" style="align-content:center;">
<h5 class="cardd-title">Saurabh Dhandha</h5>
<p class="cardd-text">General Manager</p>
<p class="cardd-text"><a href="mailto:Dhandha.Saurabh@finthrive.com" style="overflow-wrap: anywhere;">Dhandha.Saurabh@finthrive.com</a></p>
</div>
</div>
</div>
</div>
</div>

        <div style="padding-top:50px">
         <footer>
            <div class="footer-content">
                <div class="footer-section">
                    <h4 onclick="window.location.href='AboutUs.aspx'">About Us</h4>
                    <ul>
                        <li ><a onclick="window.location.href='AboutUs.aspx'">Our Story</a></li>
                        <li><a onclick="window.location.href='AboutUs.aspx'">Mission & Values</a></li>
                        <li><a onclick="window.location.href='AboutUs.aspx'">Team</a></li>
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
                        <li><a href="https://finthrive.com/">Career Tips</a></li>
                        <li><a href="https://finthrive.com/">Industry News</a></li>
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
                        <li><a href="HomepagePrep.aspx">Interview Tips</a></li>
                        <li><a href="HomepagePrep.aspx">Common Questions</a></li>
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
                <a href="https://www.linkedin.com" target="_blank" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                <a href="https://www.facebook.com" target="_blank" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="https://twitter.com" target="_blank" title="Twitter"><i class="fab fa-twitter"></i></a>
                <a href="https://www.google.com" target="_blank" title="Google"><i class="fab fa-google"></i></a>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2024 JobThrive Private Limited. All rights reserved.</p>
            </div>
        </footer>
            </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
