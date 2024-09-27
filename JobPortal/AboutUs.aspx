<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="JobPortal.AboutUs" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>About Us - Job Portal</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
<style>
        body {
            background:linear-gradient(to right, #c8e6c9, #81c784); /* Gradient background */
            font-family: 'Arial', sans-serif;
        }
        .article-container {
            margin: 50px auto;
            padding: 20px;
        }
        .article-containerr {
    margin: 50px auto;
    padding: 20px;
}
h1 {
    color: #004d40; /* Dark green */
    text-align: center;
    margin-bottom: 30px;
    font-weight: bold;
    text-transform: uppercase;
    letter-spacing: 1px;
}
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s, box-shadow 0.3s;
            margin-bottom: 30px; /* Increased spacing */
            height: 300px; /* Increased height */
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 40px rgba(0, 0, 0, 0.2);
        }
        .card-title {
            color: #004d40; /* Dark green */
            font-weight: bold;
            text-decoration: underline;
            font-size: 1.5rem; /* Larger font size */
        }
        .card-body {
            background: linear-gradient(to bottom right, #ffffff, #e7f3ec); /* Gradient for cards */
            border-radius: 10px;
            padding: 20px;
            text-align: justify;
            height: 100%; /* Full height */
        }
        .card-text {
            font-size: 1.1rem; /* Slightly larger text */
            line-height: 1.5;
        }
        .card-text:last-child {
    margin-bottom: 0;
    margin-top: 40px;
}
  .cardd {
                background-color:azure;
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
            margin-top: 37px;
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
 
    <div class="article-container">
<h1>About Us</h1>
<div class="row">
<div class="col-md-4 mb-4">
<div class="card">
<div class="card-body">
<h5 class="card-title">Our Story</h5>
<p class="card-text"> Our mission is to connect job seekers with their dream opportunities. We believe in the power of talent and the importance of matching skills with the right roles.</p>
</div>
</div>
</div>
<div class="col-md-4 mb-4">
<div class="card">
<div class="card-body">
<h5 class="card-title">Mission & Values</h5>
<p class="card-text">Our mission is to empower individuals to reach their professional goals. We value integrity, innovation, and inclusivity, ensuring everyone has access to quality job opportunities.</p>
</div>
</div>
</div>
<div class="col-md-4 mb-4">
<div class="card">
<div class="card-body">
<h5 class="card-title">Our Team</h5>
<p class="card-text"> Our diverse group of passionate professionals is dedicated to empowering job seekers and fostering connections that lead to fulfilling careers.
     We’re not just colleagues, we’re partners in success, united by the belief that everyone deserves a chance to find their dream opportunity.
</p>
</div>
</div>
</div>
</div>
<div class="article-containerr">
<h1>Our Team</h1>
<div class="row justify-content-center">
<div class="col-md-4" style="margin-right:-55px;">
<div class="cardd">
<img src="../Images/Purvi.jpg" alt="Purvi Goyal" class="profile-image" />
<div class="cardd-body" style="align-content:center;">
<h5 class="cardd-title">Purvi Goyal</h5>
<p class="cardd-text">Associate Software Engineer (Trainee)</p>
<p class="cardd-text"><a href="Goyal.purvi@finthrive.com">Goyal.purvi@finthrive.com</a></p>
</div>
</div>
</div>
<div class="coll-md-4">
<div class="cardd">
<img src="../Images/Sonali.jpg" alt="Sonali Chauhan" class="profile-image" />
<div class="cardd-body" style="align-content:center;">
<h5 class="cardd-title">Sonali Chauhan</h5>
<p class="cardd-text">Associate Software Engineer (Trainee)</p>
<p class="cardd-text"><a href="mailto:Sonali.s1@finthrive.com">Sonali.s1@finthrive.com</a></p>
</div>
</div>
</div>
<div class="coll-md-4">
<div class="cardd">
<img src="../Images/Ayush.jpg" alt="Ayush Rohilla" class="profile-image" />
<div class="cardd-body" style="align-content:center;">
<h5 class="cardd-title">Ayush Rohilla</h5>
<p class="cardd-text">Associate Software Engineer (Trainee)</p>
<p class="cardd-text"><a href="mailto:Rohilla.ayush@finthrive.com">Rohilla.ayush@finthrive.com</a></p>
</div>
</div>
</div>
</div>
</div>
</div>
 
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
