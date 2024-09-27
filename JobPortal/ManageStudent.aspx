<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageStudent.aspx.cs" Inherits="JobPortal.MnagaeJobs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Jobs</title>

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

     /* Responsive design */
     @media (max-width: 600px) {
         th, td {
             font-size: 14px;
             padding: 8px;
         }
     }
 </style>

</head>
<body>
    <form id="form1" runat="server">
   <div style="background-image:url('../Images/mainimage.jpg'); background-position:center;background-repeat:no-repeat;width:auto; height:300px;">
               <div style="display:flex;justify-content:center;padding-top:80px;">
  <h1 style=" color:white;text-align:center; ">Manage Student </h1></div>  </div>
        <h2 style="text-align:center;">Job Listings</h2>
        <asp:GridView ID="JobsGridView" runat="server" CssClass="table table-striped job-table" AutoGenerateColumns="False" OnRowCommand="JobsGridView_RowCommand" OnRowUpdating="JobsGridView_RowUpdating">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" />
                <asp:BoundField DataField="PasswordHash" HeaderText="PasswordHash" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="FullName" HeaderText="FullName" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" />
                <asp:BoundField DataField="CreatedAt" HeaderText="CreatedAt" />


              
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <i class="edit-icon fa fa-edit" data-toggle="modal" data-target="#editModal" title="Edit"></i>
                        <i class="update-icon fa fa-save" data-toggle="modal" data-target="#updateModal" title="Update"></i>
                        <i class="delete-icon fa fa-trash" title="Delete" onclick="deleteJob(<%# Eval("UserID") %>)"></i>
                        <asp:HiddenField ID="JobIdHiddenField" runat="server" Value='<%# Eval("UserID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <!-- Edit Modal -->
        <div class="modal fade" id="editModal" tabindex="-1" role="dialog" aria-labelledby="editModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="editModalLabel">Edit Job</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:Panel ID="EditPanel" runat="server">
                            <!-- Form fields for editing job -->
                            <div class="form-group">
                                <label for="editUserID">UserID</label>
                                <asp:TextBox ID="editUserID" runat="server" CssClass="form-control" />
                            </div>
                            <div class="form-group">
                                 <label for="editUsername">Username</label>
                                   <asp:TextBox ID="editUsername" runat="server" CssClass="form-control" />
                                    </div>

                            <div class="form-group">
                                 <label for="editPasswordHash">PasswordHash</label>
                                    <asp:TextBox ID="editPasswordHash" runat="server" CssClass="form-control" />
                                </div>
                            <div class="form-group">
                                 <label for="editEmail">Email</label>
                                 <asp:TextBox ID="editEmail" runat="server" CssClass="form-control" />
                                    </div>
                            <div class="form-group">
                                <label for="editFullName">DOB</label>
                                 <asp:TextBox ID="editFullName" runat="server" CssClass="form-control" />
                                </div>
                            <div class="form-group">
                                <label for="editDateOfBirth">DOB</label>
                                <asp:TextBox ID="editDateOfBirth" runat="server" CssClass="form-control" />
                            </div>
                            
                            <div class="form-group">
                                <label for="editCreatedAt">CreatedAt</label>
                                <asp:TextBox ID="editCreatedAt" runat="server" CssClass="form-control" />
                            </div>
                        </asp:Panel>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <asp:Button ID="btnSaveChanges" runat="server" Text="Save Changes" CssClass="btn btn-primary"  />
                    </div>
                </div>
            </div>
        </div>

        <!-- Update Modal -->
        <div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="updateModalLabel">Update Job</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <asp:Panel ID="UpdatePanel" runat="server">
                            <!-- Form fields for updating job -->
                                        <div class="form-group">
                                             <label for="updateUserID">UserID</label>
                                             <asp:TextBox ID="updateUserID" runat="server" CssClass="form-control" />
                                        </div>
                                        <div class="form-group">
                                            <label for="updateUsername">Userame</label>
                                             <asp:TextBox ID="updateUsername" runat="server" CssClass="form-control" />
                                       </div>

                                    <div class="form-group">
                                         <label for="updatePasswordHash">PasswordHash</label>
                                          <asp:TextBox ID="updatePasswordHash" runat="server" CssClass="form-control" />
                                    </div>
                                    <div class="form-group">
                                          <label for="updateEmail">Email</label>
                                         <asp:TextBox ID="updateEmail" runat="server" CssClass="form-control" />
                                     </div>
                                <div class="form-group">
                                    <label for="updateFullName">Fullname</label>
                                      <asp:TextBox ID="updateFullName" runat="server" CssClass="form-control" />
                                   </div>
                                    <div class="form-group">
                                        <label for="updateDateOfBirth">DOB</label>
                                        <asp:TextBox ID="updateDateOfBirth" runat="server" CssClass="form-control" />
                                    </div>

                            <div class="form-group">
                                     <label for="updateCreatedAt">CreatedAt</label>
                                     <asp:TextBox ID="updateCreatedAt" runat="server" CssClass="form-control" />
                            </div>

                        </asp:Panel>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <asp:Button ID="btnUpdateChanges" runat="server" Text="Update Changes" CssClass="btn btn-primary" OnClick="btnUpdateChanges_Click" />
                    </div>
                </div>
            </div>
        </div>


    </form>
</body>
</html>
