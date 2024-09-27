<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminLogin.aspx.cs" Inherits="JobPortal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login page</title>
    <link rel="stylesheet" type="text/css" href="Styles/adminLogin.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
</head>
<body>
    <form id="form1" runat="server">
<div class="login-container">
<div class="login-form">
<h2>Login</h2>
<div class="form-group">
<label for="Username">Username</label>
<asp:TextBox ID="Username" runat="server" CssClass="form-control" />
</div>
<div class="form-group">
<label for="Password">Password</label>
<asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" />
</div>
<asp:Button ID="LoginButton" runat="server" CssClass="btn btn-primary" Text="Login" OnClick="LoginButton_Click1" />
    <br />
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label2" runat="server" ForeColor="#009900"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
    <br />
    <asp:Label ID="Label4" runat="server" ForeColor="Red"></asp:Label>
    <br />
<div class="forgot-password">
<a href="#">Forgot Password?</a>
</div>
</div>
</div>
</form>
</body>
</html>
