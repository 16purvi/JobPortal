<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Manageacc.aspx.cs" Inherits="JobPortal.Manageacc" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>User Profile</title>

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
 
.main-content {
    flex: 1;
    padding: 20px;
    background: white;
    overflow-y: auto;
}
 
.form-panel {
    width:80%;
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
 
.form-group input,
.form-group select {
    width: 92%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: border-color 0.3s;
}
 
.form-group input:focus,
.form-group select:focus {
    border-color: #4CAF50; /* Change border color on focus */
}
 
.btn-update {
    background: linear-gradient(90deg, #4CAF50 0%, #45a049 100%); /* Gradient effect */
    color: white;
    border: none;
    padding: 10px 15px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
}
 
.btn-update:hover {
    background: linear-gradient(90deg, #45a049 0%, #4CAF50 100%); /* Reversed gradient on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}
 
    </style>
</head>
<body>
<form id="form1" runat="server">
<div class="container">
<div class="sidebar" style="padding-top:59px;">
<h2>Profile Menu</h2>
<ul>
<li><a href="EditProfile.aspx"><i class="fas fa-user-edit"></i> Edit Profile</a></li>
<li><a href="ChangePass.aspx"><i class="fas fa-key"></i> Change Password</a></li>
<li><a href="Logout.aspx"><i class="fas fa-sign-out-alt"></i> Logout</a></li>
</ul>
</div>
<div class="main-content">
<h2>User Information</h2>
<asp:Panel ID="pnlUserInfo" runat="server" CssClass="form-panel">
<div class="form-row">
<div class="form-group">
<label for="txtFirstName">First Name:</label>
<asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
</div>
<div class="form-group">
<label for="txtLastName">Last Name:</label>
<asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-row">
<div class="form-group">
<label for="txtEmail">Email:</label>
<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
</div>
<div class="form-group">
<label for="txtPassword">Password:</label>
<asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
</div>
</div>
<div class="form-row">
<div class="form-group">
<label for="txtPhone">Phone:</label>
<asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
</div>
<div class="form-group">
<label for="ddlGender">Gender:</label>
<asp:DropDownList ID="ddlGender" runat="server" style="width:98%;">
<asp:ListItem Text="Select" Value=""></asp:ListItem>
<asp:ListItem Text="Male" Value="Male"></asp:ListItem>
<asp:ListItem Text="Female" Value="Female"></asp:ListItem>
</asp:DropDownList>
</div>
</div>
<div class="form-row">
<div class="form-group">
<label for="ddlLanguage">Language:</label>
<asp:DropDownList ID="ddlLanguage" runat="server" style="width:98%;">
<asp:ListItem Text="Select" Value=""></asp:ListItem>
<asp:ListItem Text="English" Value="English"></asp:ListItem>
<asp:ListItem Text="Spanish" Value="Spanish"></asp:ListItem>
</asp:DropDownList>
</div>
<div class="form-group">
<label for="txtDOB">Date of Birth:</label>
<asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
</div>
</div>
<div class="form-row">
<div class="form-group">
<label for="txtTwitter">Twitter:</label>
<asp:TextBox ID="txtTwitter" runat="server"></asp:TextBox>
</div>
<div class="form-group">
<label for="txtLinkedin">LinkedIn:</label>
<asp:TextBox ID="txtLinkedin" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-row">
<div class="form-group">
<label for="txtGooglePlus">Google +:</label>
<asp:TextBox ID="txtGooglePlus" runat="server"></asp:TextBox>
</div>
</div>
<div class="form-row">
<asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn-update" OnClick="btnUpdate_Click"  />
</div>
</asp:Panel>
</div>
</div>
</form>
</body>
</html>
