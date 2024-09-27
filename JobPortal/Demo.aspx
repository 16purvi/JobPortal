<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Demo.aspx.cs" Inherits="JobPortal.Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="
https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
rel="stylesheet" />
<link rel="stylesheet" href="
https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
/>
<style>
        body {
            background-color: #f8f9fa;
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
</style>
</head>
<body>
    <div class="container mt-5">

<div class="side">
<button id="sidebarToggle" class="btn btn-primary">☰ </button>
</div>
</div>
 
    <!-- Sidebar -->
<div id="sidebar" class="sidebar">
<a href="#manageJob">
<i class="fas fa-briefcase"></i> Manage Job
</a>
<a href="#profileMatch">
<i class="fas fa-user-check"></i> Profile Match
</a>
<a href="#messages">
<i class="fas fa-envelope"></i> Messages
</a>
<a href="#manageAccount">
<i class="fas fa-user-cog"></i> Manage Account
</a>
<a href="#changePassword">
<i class="fas fa-lock"></i> Change Password
</a>
<a href="#logout">
<i class="fas fa-sign-out-alt"></i> Logout
</a>
<button type="button" class="btn btn-secondary" id="closeSidebar">Close</button>
</div>
 
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script>
        $(document).ready(function () {
            $('#sidebarToggle').click(function () {
                $('#sidebar').toggleClass('active');
            });
            $('#closeSidebar').click(function () {
                $('#sidebar').removeClass('active');
            });
        });
</script>
</body>
</html>
