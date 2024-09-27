<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyLogin.aspx.cs" Inherits="JobPortal.CompanyLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Login - Job Portal</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
        }
        
        .header {
            background-color: #003366; /* Royal Blue */
            color: #fff;
            padding: 20px 30px; /* Increased padding for better spacing */
            text-align: center;
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            box-sizing: border-box;
        }
        .header img {
            max-width: 150px;
            height: auto;
            padding-right: 20px; /* Padding to the right for spacing */
        }
        .header h1 {
            margin: 0;
            padding: 0 20px; /* Padding on left and right for spacing */
            font-size: 24px; /* Adjusted font size */
        }
        .header p {
            margin: 0;
            padding: 0 20px; /* Padding on left and right for spacing */
            font-size: 16px; /* Adjusted font size */
        }
        .header .search-bar {
            flex: 1;
            margin: 0 20px;
            max-width: 400px;
            padding: 0 10px; /* Padding inside search bar container */
        }
        .header .search-bar input[type="text"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            box-sizing: border-box;
        }
        .header .sign-in {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border: 1px solid #fff;
            border-radius: 5px;
            background-color: #003366;
            transition: background-color 0.3s;
            margin-left: 20px; /* Margin for spacing between elements */
            display: inline-block; /* Ensure it fits well within the layout */
        }
        .header .sign-in:hover {
            background-color: #002244;
        }

        .login-container {
            background: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 30px;
            width: 360px;
            text-align: center;
            margin-top: 80px; /* Space for header, adjusted to prevent overlap */
        }

        .login-container h1 {
            color: #003366; /* Royal Blue */
            margin-bottom: 20px;
            font-size: 28px;
            font-weight: bold;
        }

        .login-container h2 {
            color: #666;
            font-size: 18px;
            margin-top: 0;
        }

        .login-container label {
            display: block;
            margin-bottom: 10px;
            font-size: 18px;
            color: #333333;
        }

        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 8px 0;
            border: 1px solid #ddd;
            border-radius: 5px;
            background: #f9f9f9;
            color: #333333;
            font-size: 16px;
            outline: none;
        }

        .login-container input[type="text"]:focus,
        .login-container input[type="password"]:focus {
            border-color: #003366; /* Royal Blue */
        }

        .login-container input[type="submit"] {
            background-color: #003366; /* Royal Blue */
            border: none;
            padding: 10px;
            color: #ffffff;
            font-size: 18px;
            cursor: pointer;
            border-radius: 5px;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        .login-container input[type="submit"]:hover {
            background-color: #002244; /* Darker Royal Blue */
        }

        .footer {
            text-align: center;
            color: #333333;
            margin-top: 20px;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="header">
        <img src="../Images/JobThrive.svg" alt="JobThrive" />
        <div>
            <h1>Welcome to the Job Portal</h1>
            <p>Your gateway to discovering new opportunities</p>
        </div>
        <div class="search-bar">
            <input type="text" placeholder="Search jobs or companies..."/>
        </div>
        <a href="landing page.aspx" class="sign-in">Sign-Up your Company Here.</a>
    </div>

    <form id="form1" runat="server">
        <div class="login-container">
            <h1>Company Login</h1>
            <h2>Sign-In to Your Account</h2>
            
            <asp:TextBox ID="TextBox1" runat="server" CssClass="textBox" Placeholder="Username"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="textBox" TextMode="Password" Placeholder="Password"></asp:TextBox>
            <asp:Button ID="LoginButton" runat="server" Text="Login" CssClass="submitButton" OnClick="LoginButton_Click" />
            <asp:Label ID="ErrorMessageLabel" runat="server" ForeColor="Red" Visible="False"></asp:Label>
        </div>
        
        <div class="footer">
            <p>&copy; 2024 Job Portal. All rights reserved.</p>
        </div>
    </form>
</body>
</html>