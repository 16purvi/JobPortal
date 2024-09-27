<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="JobPortal.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="Styles/admin.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
       <div class="admin-container" style="background-image:url('../Images/mainimage.jpg'); background-position:center;background-repeat:no-repeat;width:auto; height:500px;">
<div class="main-content">
<h1>Welcome to the Admin Dashboard</h1>
<p>Select an option from the cards below to manage the respective sections.</p>
<div class="card-container">
<div class="card">
<i class="fas fa-user-graduate"></i>
<h3>Manage Students</h3>
<p>View and manage student information.</p>
<a href="ManageStudent.aspx" class="btn">Go</a>
</div>
<div class="card">
<i class="fas fa-building"></i>
<h3>Manage Companies</h3>
<p>View and manage company details.</p>
<a href="#" class="btn">Go</a>
</div>
<div class="card">
<i class="fas fa-user-cog"></i>
<h3>Account</h3>
<p>Manage your account settings.</p>
<a href="adminAcc.aspx" class="btn">Go</a>
</div>
</div>
</div>
</div>
<div class="containerr">
<div class="quote">
<i class="fas fa-lightbulb"></i>
<p>"Unlock your potential—find a job that inspires you and a future that excites you."</p>
</div>
<div style="padding-top:50px">
<footer>
<div class="footer-content">
<div class="footer-section">
<h4>About Us</h4>
<ul>
<li><a href="#">Our Story</a></li>
<li><a href="#">Mission & Values</a></li>
<li><a href="#">Team</a></li>
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
<p>&copy; 2024 Your Company Name. All rights reserved.</p>
</div>
</footer>
</div>
</div>
    </form>
</body>
</html>
