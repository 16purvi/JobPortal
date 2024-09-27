<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageAppJobs.aspx.cs" Inherits="JobPortal.ManageStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Student</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #4CAF50, #81C784);
            margin: 0;
            padding: 40px; /* Space around the form */
        }

        #form1 {
            background: linear-gradient(to bottom right, #ffffff, #e0f7fa);
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background: linear-gradient(to bottom right, #ffffff, #f0f4c3);
            border-radius: 8px;
            overflow: hidden;
        }

        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        tr {
            transition: transform 0.3s ease;
        }

        tr:hover {
            background-color: #e0f7fa;
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        }

        .action-btn {
            cursor: pointer;
            padding: 5px;
            border: none;
            background-color: transparent;
            transition: transform 0.2s, color 0.2s;
            margin-right: 10px;
            color: #333;
        }

        .action-btn:hover {
            transform: scale(1.1);
            color: #FF5722; /* Color on hover */
        }

        /* Modal styles */
        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgb(0,0,0);
            background-color: rgba(0,0,0,0.4);
            padding-top: 60px;
        }

        .modal-content {
            background-color: #fefefe;
            margin: 5% auto;
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-image:url('../Images/mainimage.jpg'); background-position:center;background-repeat:no-repeat;width:auto; height:300px;">
                <div style="display:flex;justify-content:center;padding-top:80px;">
                    <h1 style=" color:white;text-align:center; ">Manage Student</h1>
                </div>
            </div>
            <h2 style="text-align:center;">Your Job Applications</h2>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="gridview" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="ApplicationID" HeaderText="Application ID" />
                    <asp:BoundField DataField="Company" HeaderText="Company" />
                    <asp:TemplateField HeaderText="First Name">
                        <ItemTemplate>
                            <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtFirstName" runat="server" Text='<%# Bind("FirstName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Last Name">
                        <ItemTemplate>
                            <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtLastName" runat="server" Text='<%# Bind("LastName") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <ItemTemplate>
                            <asp:Label ID="lblEmail" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone Number">
                        <ItemTemplate>
                            <asp:Label ID="lblPhoneNumber" runat="server" Text='<%# Eval("PhoneNumber") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPhoneNumber" runat="server" Text='<%# Bind("PhoneNumber") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Position">
                        <ItemTemplate>
                            <asp:Label ID="lblPosition" runat="server" Text='<%# Eval("Position") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtPosition" runat="server" Text='<%# Bind("Position") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Message">
                        <ItemTemplate>
                            <asp:Label ID="lblMessage" runat="server" Text='<%# Eval("Message") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtMessage" runat="server" Text='<%# Bind("Message") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <button type="button" class="action-btn" onclick="openEditModal('<%# Eval("ApplicationID") %>', '<%# Eval("FirstName") %>', '<%# Eval("LastName") %>', '<%# Eval("Email") %>', '<%# Eval("PhoneNumber") %>', '<%# Eval("Message") %>')">
                                <i class="fas fa-edit"></i>
                            </button>
                            <button type="button" class="action-btn" onclick="confirmDelete('<%# Eval("ApplicationID") %>')">
                                <i class="fas fa-trash-alt"></i>
                            </button>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>

    <!-- Edit Modal -->
    <div id="editModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="document.getElementById('editModal').style.display='none';">&times;</span>
            <h2>Edit Application</h2>
            <input type="hidden" id="editApplicationId" />
            <label for="editFirstName">First Name:</label>
            <input type="text" id="editFirstName" />
            <label for="editLastName">Last Name:</label>
            <input type="text" id="editLastName" />
            <label for="editEmail">Email:</label>
            <input type="email" id="editEmail" />
            <label for="editPhoneNumber">Phone Number:</label>
            <input type="text" id="editPhoneNumber" />
            <label for="editMessage">Message:</label>
            <textarea id="editMessage"></textarea>
            <button onclick="updateApplication()">Update</button>
        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        function confirmDelete(applicationId) {
            if (confirm("Are you sure you want to delete this application?")) {
                window.location.href = 'StudentHome.aspx?deleteId=' + applicationId;
            }
        }

        function openEditModal(applicationId, firstName, lastName, email, phoneNumber, message) {
            document.getElementById('editApplicationId').value = applicationId;
            document.getElementById('editFirstName').value = firstName;
            document.getElementById('editLastName').value = lastName;
            document.getElementById('editEmail').value = email;
            document.getElementById('editPhoneNumber').value = phoneNumber;
            document.getElementById('editMessage').value = message;
            document.getElementById('editModal').style.display = 'block';
        }

        function updateApplication() {
            const applicationId = document.getElementById('editApplicationId').value;
            const firstName = document.getElementById('editFirstName').value;
            const lastName = document.getElementById('editLastName').value;
            const email = document.getElementById('editEmail').value;
            const phoneNumber = document.getElementById('editPhoneNumber').value;
            const message = document.getElementById('editMessage').value;

            $.ajax({
                type: "POST",
                url: "StudentHome.aspx/UpdateApplication",
                data: JSON.stringify({ applicationId, firstName, lastName, email, phoneNumber, message }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    location.reload(); // Refresh the page to see changes
                },
                error: function (xhr, status, error) {
                    alert("Error updating application: " + error);
                }
            });
        }
    </script>
</body>
</html>