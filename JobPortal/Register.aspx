<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="JobPortal.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Registration</title>
    <link rel="stylesheet" type="text/css" href="Styles/Register.css" />
    <script>
        function togglePopup() {
            const overlay = document.getElementById('overlay');
            const popup = document.getElementById('registrationPopup');
            const isOpen = overlay.style.display === 'block';
 
            overlay.style.display = isOpen ? 'none' : 'block';
            popup.classList.toggle('show', !isOpen);
        }
</script>
</head>
<body>
   <form id="form1" runat="server" style="width:75%;">
        <div class="container">
            <div style="background-image: url('../Images/register.jpg'); display: flex; justify-content: center; align-items: center; background-repeat: no-repeat; height: 60vh; width: 45%; text-align: center;">
                <h1 style="padding-top: 320px; padding-right: 30px">Please Register to Continue..</h1>
            </div> 
            <div class="form-container" style="background:linear-gradient(to right, #c8e6c9, #81c784); padding: 20px;">
                <h2>Student Registration Form</h2>
                <asp:Label ID="lblMessage" runat="server" CssClass="message" ForeColor="Red" />
                
                <div class="form-group">
                    <asp:Label ID="lblUsername" runat="server" Text="Username:" CssClass="form-label" />
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvUsername" runat="server" ControlToValidate="txtUsername" 
                        ErrorMessage="Username is required" CssClass="error-message" Display="Dynamic" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="form-label" />
                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" 
                        ErrorMessage="Password is required" CssClass="error-message" Display="Dynamic" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" CssClass="form-label" />
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" 
                        ErrorMessage="Email is required" CssClass="error-message" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" 
                        ErrorMessage="Invalid email format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        CssClass="error-message" Display="Dynamic" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblFullName" runat="server" Text="Full Name:" CssClass="form-label" />
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" />
                    <asp:RequiredFieldValidator ID="rfvFullName" runat="server" ControlToValidate="txtFullName" 
                        ErrorMessage="Full Name is required" CssClass="error-message" Display="Dynamic" />
                </div>
                <div class="form-group">
                    <asp:Label ID="lblDateOfBirth" runat="server" Text="Date of Birth:" CssClass="form-label" />
                    <asp:TextBox ID="txtDateOfBirth" runat="server" CssClass="form-control" placeholder="YYYY-MM-DD" />
                    <asp:RequiredFieldValidator ID="rfvDateOfBirth" runat="server" ControlToValidate="txtDateOfBirth" 
                        ErrorMessage="Date of Birth is required" CssClass="error-message" Display="Dynamic" />
                    <asp:RegularExpressionValidator ID="revDateOfBirth" runat="server" ControlToValidate="txtDateOfBirth" 
                        ErrorMessage="Invalid date format. Use YYYY-MM-DD." ValidationExpression="^\d{4}-\d{2}-\d{2}$" 
                        CssClass="error-message" Display="Dynamic" />
                </div>
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn-register" OnClick="btnRegister_Click1" style="height: 40px;
    border-radius: 10px;
    font-size: large;
    background-color: green;
    color: white;" />
                <div class="login-link">
                    <p style="color:white;">Already registered? <a href="StudentLogin.aspx">Please login</a></p>
                </div>
            </div>
        </div>
    </form>
    
</body>
</html>
