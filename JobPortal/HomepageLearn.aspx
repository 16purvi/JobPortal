<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomepageLearn.aspx.cs" Inherits="JobPortal.HomepageLearn" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Learn - Upskill to Get Ahead</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<style>
        body {
            background-position: center;
            font-family: 'Arial', sans-serif;
            color: #333;
        }
        .article-container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0 4px 30px rgba(0, 0, 0, 0.2);
        }
        h1 {
            color: white;
            text-align: center;
            margin-bottom: 30px;
        }
        .card {
            background: linear-gradient(135deg, #c8e6c9, #a5d6a7);
            border-radius: 10px;
            margin: 15px;
            transition: transform 0.3s, box-shadow 0.3s;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.15);
        }
        .card-header {
            background: transparent;
            border: none;
            text-align: center;
            font-size: 1.5em;
            color: #0056b3;
        }
        .card-body {
            text-align: left;
        }
        .icon-container {
            text-align: center;
            margin: 15px 0;
        }
        .icon-container i {
            font-size: 50px;
            color: #007bff;
            border-radius: 50%;
            background: white;
            padding: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .link-button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .link-button:hover {
            background-color: #0056b3;
        }
        @media (min-width: 576px) {
            .card-columns {
                column-count: 2;
            }
        }
</style>
</head>
<body style="background-image:url('../Images/mainimage.jpg'); background-position:center;background-size:cover">
<div class="article-container">
<h1>Learn (Upskill to Get Ahead)</h1>
<div class="card-columns">
<div class="card">
<div class="icon-container">
<i class="fas fa-lightbulb"></i>
</div>
<div class="card-header">1. Identify In-Demand Skills</div>
<div class="card-body">
<p>Research the skills that are currently in high demand in your industry. Focus on technologies and methodologies that employers are seeking.</p>
</div>
</div>
 
            <div class="card">
<div class="icon-container">
<i class="fas fa-laptop"></i>
</div>
<div class="card-header">2. Enroll in Online Courses</div>
<div class="card-body">
<p>Take advantage of online learning platforms that offer courses in trending technologies. Here are some valuable resources:</p>
<ul>
<li><a href="https://www.coursera.org/" target="_blank">Coursera</a></li>
<li><a href="https://www.udacity.com/" target="_blank">Udacity</a></li>
<li><a href="https://www.pluralsight.com/" target="_blank">Pluralsight</a></li>
</ul>
</div>
</div>
 
            <div class="card">
<div class="icon-container">
<i class="fas fa-video"></i>
</div>
<div class="card-header">3. Explore YouTube Channels</div>
<div class="card-body">
<p>YouTube has countless channels dedicated to programming and technology. Some popular ones include:</p>
<ul>
<li><a href="https://www.youtube.com/user/Academind" target="_blank">Academind</a></li>
<li><a href="https://www.youtube.com/c/TraversyMedia" target="_blank">Traversy Media</a></li>
<li><a href="https://www.youtube.com/c/TheNetNinja" target="_blank">The Net Ninja</a></li>
</ul>
</div>
</div>
 
            <div class="card">
<div class="icon-container">
<i class="fas fa-code"></i>
</div>
<div class="card-header">4. Participate in Coding Challenges</div>
<div class="card-body">
<p>Join platforms that offer coding challenges and competitions to sharpen your skills and gain experience.</p>
<ul>
<li><a href="https://www.leetCode.com/" target="_blank">LeetCode</a></li>
<li><a href="https://www.hackerrank.com/" target="_blank">HackerRank</a></li>
</ul>
</div>
</div>
 
            <div class="card">
<div class="icon-container">
<i class="fas fa-project-diagram"></i>
</div>
<div class="card-header">5. Build Real Projects</div>
<div class="card-body">
<p>Apply what you've learned by working on real projects. This not only solidifies your understanding but also enhances your portfolio.</p>
</div>
</div>
 
            <div class="card">
<div class="icon-container">
<i class="fas fa-newspaper"></i>
</div>
<div class="card-header">6. Stay Updated with Industry Trends</div>
<div class="card-body">
<p>Follow tech blogs, podcasts, and webinars to stay current on industry trends and best practices.</p>
<ul>
<li><a href="https://www.techcrunch.com/" target="_blank">TechCrunch</a></li>
<li><a href="https://www.wired.com/" target="_blank">Wired</a></li>
</ul>
</div>
</div>
</div>
</div>
 
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>