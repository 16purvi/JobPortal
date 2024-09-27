<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomepageBoost.aspx.cs" Inherits="JobPortal.HomepageBoost" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Boost - Stand Out to Employees</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
        body {
            background-color: #e9ecef;
            font-family: 'Arial', sans-serif;
        }
        .article-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
        }
        h1 {
            color: White;
            text-align: center;
            margin-bottom: 30px;
        }
        .card {
            border: none;
            border-radius: 15px;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
            position: relative;
            transition: transform 0.3s, box-shadow 0.3s;
            height: 250px; /* Increased card height */
            color: #2c3e50; /* Font color for card text */
            display: flex;
            flex-direction: column; /* Stack icon above text */
            align-items: center;
            padding: 20px;
            background: linear-gradient(135deg, #c8e6c9, #a5d6a7); /* Light green gradient */
            animation: fadeIn 0.5s ease forwards; /* Animation for card appearance */
            margin-bottom: 20px; /* Space between cards */
            opacity: 0; /* Initially hidden for animation */
        }
        @keyframes fadeIn {
            0% {
                opacity: 0;
                transform: translateY(20px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .card-icon {
            width: 80px; /* Increased icon width */
            height: 80px; /* Increased icon height */
            background-color: rgba(255, 255, 255, 0.2);
            color: white;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2em; /* Increased icon font size */
            margin-bottom: 15px; /* Space between icon and text */
            transition: transform 0.3s;
        }
        .card-icon:hover {
            transform: scale(1.1);
        }
</style>
</head>
<body style="background-image:url('../Images/mainimage.jpg'); background-position:center;background-size:cover">
<div class="article-container" >
<h1>Boost (Stand Out to Employees)</h1>
<div class="row">
<div class="col-md-6" style="animation-delay: 0s;">
<div class="card">
<div class="card-icon">
<i class="fas fa-lightbulb"></i>
</div>
<div class="card-body text-center">
<strong>1. Develop Unique Skills:</strong>
<p>Upskilling in niche areas that align with industry demands can significantly boost your employability.</p>
</div>
</div>
</div>
 
            <div class="col-md-6" style="animation-delay: 0.5s;">
<div class="card">
<div class="card-icon">
<i class="fas fa-user-circle"></i>
</div>
<div class="card-body text-center">
<strong>2. Build a Strong Personal Brand:</strong>
<p>Your online presence matters. Use platforms like LinkedIn to showcase your achievements effectively.</p>
</div>
</div>
</div>
</div>
 
        <div class="row">
<div class="col-md-6" style="animation-delay: 2s;">
<div class="card">
<div class="card-icon">
<i class="fas fa-user-friends"></i>
</div>
<div class="card-body text-center">
<strong>3. Network Effectively:</strong>
<p>Attend industry conferences and webinars to connect with peers and industry leaders for new opportunities.</p>
</div>
</div>
</div>
 
            <div class="col-md-6" style="animation-delay: 2.5s;">
<div class="card">
<div class="card-icon">
<i class="fas fa-trophy"></i>
</div>
<div class="card-body text-center">
<strong>4. Showcase Your Achievements:</strong>
<p>Maintain a portfolio of your accomplishments and be ready to discuss them during interviews.</p>
</div>
</div>
</div>
</div>
 
        <div class="row">
<div class="col-md-6" style="animation-delay: 4s;">
<div class="card">
<div class="card-icon">
<i class="fas fa-comments"></i>
</div>
<div class="card-body text-center">
<strong>5. Cultivate Soft Skills:</strong>
<p>Skills such as communication, teamwork, and problem-solving are critical and highly valued by employers.</p>
</div>
</div>
</div>
 
            <div class="col-md-6" style="animation-delay: 4.5s;">
<div class="card">
<div class="card-icon">
<i class="fas fa-comment-dots"></i>
</div>
<div class="card-body text-center">
<strong>6. Seek Feedback:</strong>
<p>Regularly ask for feedback from peers and mentors to identify your strengths and areas for improvement.</p>
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
 