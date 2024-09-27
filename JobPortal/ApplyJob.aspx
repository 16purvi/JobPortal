<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ApplyJob.aspx.cs" Inherits="JobPortal.ApplyJob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Application</title>
     <link rel="stylesheet" type="text/css" href="Styles/ApplyJob.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"/>
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
        <div  class="container mt-4">
            <h2>Job Application Form</h2>
       
            

        <div class="form-group" >
                <label for="txtFirstName">First Name</label>
                <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" 
                    ControlToValidate="txtFirstName" 
                    ErrorMessage="First Name is required." 
                    Display="Dynamic" 
                    ForeColor="Red" />
            </div>
        <div class="form-group">
                <label for="txtLastName">Last Name</label>
                <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvLastName" runat="server" 
                    ControlToValidate="txtLastName" 
                    ErrorMessage="Last Name is required." 
                    Display="Dynamic" 
                    ForeColor="Red" />
            </div>

        <div class="form-group">
                <label for="txtEmail">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Email is required." 
                    Display="Dynamic" 
                    ForeColor="Red" />
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Invalid email format." 
                    Display="Dynamic" 
                    ForeColor="Red" 
                    ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" />
            </div>

         <div class="form-group">
                <label for="txtPhoneNumber">Phone Number</label>
                <asp:TextBox ID="txtPhoneNumber" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server" 
                    ControlToValidate="txtPhoneNumber" 
                    ErrorMessage="Phone Number is required." 
                    Display="Dynamic" 
                    ForeColor="Red" />
                <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server" 
                    ControlToValidate="txtPhoneNumber" 
                    ErrorMessage="Invalid phone number format." 
                    Display="Dynamic" 
                    ForeColor="Red" 
                    ValidationExpression="^\d{10}$" />
            </div>

         <div class="form-group">
                <label for="txtDOB">Date of Birth</label>
                <asp:TextBox ID="txtDOB" runat="server" CssClass="form-control" TextMode="Date" />
                <asp:RequiredFieldValidator ID="rfvDOB" runat="server" 
                    ControlToValidate="txtDOB" 
                    ErrorMessage="Date of Birth is required." 
                    Display="Dynamic" 
                    ForeColor="Red" />
            </div>

        <div class="form-group">
                <label for="ddlPosition">Applied Position</label>
                <asp:DropDownList ID="ddlPosition" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Software Engineer" Value="Software Engineer" />
                    <asp:ListItem Text="Data Analyst" Value="Data Analyst" />
                    <asp:ListItem Text="Web Designer" Value="Web Designer" />
                    <asp:ListItem Text="HR Manager" Value="HR Manager" />
                    <asp:ListItem Text="DevOps Engineer" Value="DevOps Engineer" />
                    <asp:ListItem Text="Full Stack Developer" Value="Full Stack Developer" />
                     <asp:ListItem Text="Database Administrator" Value="Database Administrator" />
                    <asp:ListItem Text="Content Writer" Value="Content Writer" />
                    <asp:ListItem Text="Sales" Value="Sales" />
                    <asp:ListItem Text="UI Designer" Value="UI Designer" />
                    <asp:ListItem Text="Java Developer" Value="Java Developer" />
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvPosition" runat="server" 
                    ControlToValidate="ddlPosition" 
                    InitialValue="" 
                    ErrorMessage="Please select a position." 
                    Display="Dynamic" 
                    ForeColor="Red" />
            </div>

        <div class="form-group">
                <label for="txtMessage">Message</label>
                <asp:TextBox ID="txtMessage" runat="server" CssClass="form-control" TextMode="MultiLine" />
            </div>

        <div class="form-group">
                <label for="fileResume">Upload Resume (PDF only)</label>
                <asp:FileUpload ID="fileResume" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="rfvResume" runat="server" 
                    ControlToValidate="fileResume" 
                    ErrorMessage="Resume is required." 
                    Display="Dynamic" 
                    ForeColor="Red" />
                <asp:CustomValidator ID="cvResume" runat="server" 
                    ControlToValidate="fileResume" 
                    ClientValidationFunction="validateResume" 
                    ErrorMessage="Only PDF files are allowed." 
                    Display="Dynamic" 
                    ForeColor="Red" />
            </div>

            <asp:HiddenField ID="JobIdHiddenField" runat="server" />

<asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click1"  />
            </div>
            
        <script>
            function validateResume(sender, args) {
                var fileExtension = sender.value.split('.').pop().toLowerCase();
                args.IsValid = (fileExtension === 'pdf');
            }
        </script>
    </form>
</body>
</html>
