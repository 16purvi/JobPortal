<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePass.aspx.cs" Inherits="JobPortal.ChangePass" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>User Profile</title>
<link rel="stylesheet" type="text/css" href="Styles/site.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
<style>
        body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
}
 
.container {
    display: flex;
    height: 100vh;
}
 
.sidebar {
    margin-left: 167px;
    width: 220px;
    /* background: linear-gradient(180deg, #4CAF50 0%, #45a049 100%); */
    /* color: white; */
    padding: 20px;
    box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
}
 
.sidebar h2 {
    margin: 0;
    font-size: 1.5em;
}
 
.sidebar ul {
    list-style: none;
    padding: 0;
}
 
.sidebar ul li {
    margin: 10px 0;
}
 
.sidebar ul li a {
   border-radius: 5px;
    padding: 10px;
    background-color: green;
    height: 30px;
    color: white;
    text-decoration: none;
    display: flex;
    align-items: center;
    transition: color 0.3s;
}
 
.sidebar ul li a i {
    margin-right: 8px; /* Space between icon and text */
}
 
.sidebar ul li a:hover {
    color: #d9d9d9; /* Light gray on hover */
}
 
.form-panel {
    height:173px;
    background: #ffffff;
    border-radius: 8px;
    padding: 20px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
}
 
.form-row {
    display: flex; /* Use flexbox for rows */
    margin-bottom: 15px;
}
 
.form-group {
    flex: 1; /* Make each form group take equal space */
    margin-right: 10px; /* Space between form groups */
}
 
.form-group:last-child {
    margin-right: 0; /* Remove margin for the last item */
}
 
.form-group label {
    display: block;
    margin-bottom: 5px;
    color: #333;
}
 
.form-group input {
    width: 91%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: border-color 0.3s;
}
 
.form-group input:focus {
    border-color: #4CAF50; /* Change border color on focus */
}
 
 
    </style>
</head>
<body>
<form id="form1" runat="server">
<div class="container">
<div class="sidebar" style="padding-top:59px;">
<h2>Profile Menu</h2>
<ul>
<li><a href="Manageacc.aspx"><i class="fas fa-user-edit"></i> Edit Profile</a></li>
<li><a href="ChangePassword.aspx"><i class="fas fa-key"></i> Change Password</a></li>
<li><a href="Logout.aspx"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
</ul>
</div>
<div class="main-content" style="padding-left: 40px; width: 57%;padding-top: 40px;">
<h2 style="text-align:center">Change Password</h2>
<p class="description" style="text-align:center">Please enter your old password and your new password:</p>
<asp:Panel ID="pnlChangePassword" runat="server" CssClass="form-panel">
<div class="form-row">
<div class="form-group">
<label for="txtOldPassword">Old Password:</label>
<asp:TextBox ID="txtOldPassword" runat="server" TextMode="Password"></asp:TextBox>
</div>
<div class="form-group">
<label for="txtNewPassword">New Password:</label>
<asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
</div>
<div class="form-group">
<label for="txtConfirmPassword">Confirm Password:</label>
<asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
</div>
</div>
<div class="form-row">
<asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn-update" Style=" font-size: large;background-color: green; color: white; border-radius: 5px;" OnClick="btnSubmit_Click"/>
</div>
</asp:Panel>
</div>
</div>
</form>
</body>
</html>