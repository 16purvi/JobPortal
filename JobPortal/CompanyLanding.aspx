<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyLanding.aspx.cs" Inherits="JobPortal.CompanyLanding" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Company Module - Job Portal</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }
        .alert {
            margin-top: 20px;
            padding: 15px;
            border-radius: 5px;
            display: none; /* Initially hidden */
        }
        .alert-success {
            background-color: #d4edda;
            color: #155724;
        }
        .alert-danger {
            background-color: #f8d7da;
            color: #721c24;
        }
        .header {
            background-color: #003366;
            color: #fff;
            padding: 20px 30px;
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
            padding-right: 20px;
        }
        .header h1 {
            margin: 0;
            padding: 0 20px;
            font-size: 24px;
        }
        .header p {
            margin: 0;
            padding: 0 20px;
            font-size: 16px;
        }
        .header .search-bar {
            flex: 1;
            margin: 0 20px;
            max-width: 400px;
            padding: 0 10px;
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
            margin-left: 20px;
            display: inline-block;
        }
        .header .sign-in:hover {
            background-color: #002244;
        }
        .container {
            display: flex;
            width: 90%;
            height: auto;
            margin: 100px auto 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            background-color: #ffffff;
        }
        .left-half {
            flex: 1;
            background-color: #7591ac;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            background-image: url('company-image.jpg');
            background-size: cover;
            background-position: center;
            color: #fff;
        }
        .left-half h2 {
            margin: 0;
            font-size: 24px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }
        .left-half p {
            margin-top: 10px;
            font-size: 16px;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.5);
        }
        .right-half {
            flex: 1;
            background-color: #003466a8;
            padding: 30px;
            box-sizing: border-box;
            overflow-y: auto;
        }
        .form-container {
            max-width: 100%;
            margin: 0 auto;
            padding: 30px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .form-container h2 {
            color: #003366;
            margin-bottom: 20px;
            border-bottom: 2px solid #d0d0d0;
            padding-bottom: 10px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #666;
        }
        .form-group input {
            width: calc(100% - 16px);
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .form-group button {
            padding: 10px 20px;
            border: none;
            background-color: #003366;
            color: #fff;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        .form-group button:hover {
            background-color: #002244;
        }
        .banner {
            background-color: #5f78a087;
            color: #fff;
            padding: 20px;
            text-align: center;
            margin: 20px 0;
        }
        .banner h2 {
            margin: 0;
            font-size: 24px;
        }
        .banner .company-logos {
            margin-top: 10px;
        }
        .banner .company-logos img {
            max-width: 100px;
            margin: 0 10px;
            vertical-align: middle;
        }
        .footer {
            background-color: #0e273ded;
            color: #fff;
            padding: 20px;
            text-align: center;
            box-sizing: border-box;
        }
        .footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <header class="header">
        <img src="../Images/JobThrive.svg" alt="JobThrive" />
        <div>
            <h1>Welcome to the Job Portal</h1>
            <p>Your gateway to discovering new opportunities</p>
        </div>
        <div class="search-bar">
            <input type="text" placeholder="Search jobs or companies..." aria-label="Search jobs or companies"/>
        </div>
        <a href="companylogin.aspx" class="sign-in">Already Registered? Sign IN</a>
    </header>
    <div class="container">
        <section class="left-half">
            <div>
                <h2>Join Us Today</h2>
                <p>Discover the best talent for your company. Get started with our job portal.</p>
            </div>
        </section>
        <section class="right-half">
            <form id="form1" runat="server">
                <div class="form-container">
                    <h2>Company Information</h2>
                    <div class="form-group">
                        <label for="txtCompanyName">Company Name:</label>
                        <asp:TextBox ID="txtCompanyName" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtCompanyEmail">Company Email:</label>
                        <asp:TextBox ID="txtCompanyEmail" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtCompanyPhone">Company Phone:</label>
                        <asp:TextBox ID="txtCompanyPhone" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtCompanyWebsite">Company Website:</label>
                        <asp:TextBox ID="txtCompanyWebsite" runat="server" CssClass="form-control" required></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" CssClass="btn btn-primary"/>
                    </div>
                    <div>
                        <asp:Label ID="lblMessage" runat="server" CssClass="alert" Visible="false"></asp:Label>
                    </div>
                </div>
            </form>
        </section>
    </div>
    <div class="banner">
        <h2>Top Companies Hiring Talent from Our Platform</h2>
        <div class="company-logos">
            <img src="../Images/Tech_Mahindra_New_Logo.png" alt="Tech Mahindra Logo" />
            <img src="../Images/OracleLogo.png" alt="Oracle" />
            <img src="../Images/Airtel-logo.png" alt="Airtel" />
            <img src="../Images/BharatPe_logo.png" alt="BharatPe" />
            <img src="../Images/HCL_Technologies_logo.png" alt="HCL" />
            <img src="../Images/CRON_Systems.png" alt="CRON" />
            <img src="../Images/Myntra-Logo.png" alt="Myntra" />
            <img src="../Images/TCS.NS_BIG.png" alt="TCS" />
            <img src="../Images/Zusys_Tech.jpg" alt="Zusys" />
            
        </div>
    </div>
    <footer class="footer">
        <p>&copy; 2024 Job Portal. All rights reserved.</p>
    </footer>
</body>
</html>
