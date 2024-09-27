<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BrowseJobs.aspx.cs" Inherits="JobPortal.BrowseJobs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Browse Jobs</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            padding: 20px;
        }
        .sidebar {
            background: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            width: 284px;
            padding: 40px;
            display: flex;
            flex-direction: column;
            gap: 20px;
            margin-left: 45px;
            overflow: scroll;
            height: 100%;
            margin-top: 21px;
                
        }
        .card {
            background: #f9f9f9;
            border-radius: 8px;
            padding: 15px;
            transition: transform 0.2s, box-shadow 0.2s;
            box-shadow: 0 1px 5px rgba(0, 0, 0, 0.1);
                width: 250px;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }
        .card h4 {
            margin: 0 0 10px 0;
            display: flex;
            align-items: center;
        }
        .card h4 i {
            margin-right: 10px;
            color: #007bff;
        }
        .radio-group {
            display: flex;
            flex-direction: column;
        }
        .radio-group label {
            margin: 5px 0;
        }
        .dropdown {
            width: 100%;
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #ccc;
            background: white;
        }
        .card-container {
            flex-grow: 1;
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            padding: 20px;
        }
        .job-card {
            width: 100%;
            margin-bottom: 20px;
            margin-left: 25px;
            margin-right: 500px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            position: relative;
            background-color: white;
            box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);

        }
        .job-icon {
            color: #087826;
            font-size: 24px;
            position: absolute;
            top: 10px;
            left: 30px;
        }
        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }
        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-size: large;
            color: white;
            cursor: pointer;
        }
        .btn-primary {
            background-color: darkgreen;
        }
        .btn-outline-secondary {
            background-color: darkgreen;
            opacity: 0.8;
        }
        .no-jobs-message {
            text-align: center;
            font-size: larger;
            margin-top: 20px;
            color: #ff0000; /* Red color */
            
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="display: flex; width: 100%;">
            <div class="sidebar">
                <!-- Job Type Card -->
                <div class="card">
                    <h4><i class="fas fa-briefcase"></i> Job Type</h4>
                    <div class="radio-group">
                        <label><input type="radio" name="jobType" value="Full Time"/> Full Time</label>
                        <label><input type="radio" name="jobType" value="Part Time"/> Part Time</label>
                        <label><input type="radio" name="jobType" value="Internship"/> Internship</label>
                        <label><input type="radio" name="jobType" value="Freelancer"/> Freelancer</label>
                        <label><input type="radio" name="jobType" value="Contract"/> Contract Based</label>
                    </div>
                </div>

                <!-- Designation Card -->
                <div class="card">
                    <h4><i class="fas fa-user-tie"></i> Designation</h4>
                    <div class="radio-group">
                        <label><input type="radio" name="designation" value="Web Developer"/> Web Developer</label>
                        <label><input type="radio" name="designation" value="Software Developer"/> Software Developer</label>
                        <label><input type="radio" name="designation" value="Project Manager"/> Project Manager</label>
                        <label><input type="radio" name="designation" value="Human Resource"/> Human Resource</label>
                        <label><input type="radio" name="designation" value="CMS Developer"/> CMS Developer</label>
                        <label><input type="radio" name="designation" value="App Developer"/> App Developer</label>
                    </div>
                </div>

                <!-- Experience Card -->
                <div class="card">
                    <h4><i class="fas fa-clock"></i> Experience</h4>
                    <div class="radio-group">
                        <label><input type="radio" name="experience" value="1-2 Years"/> 1 Year to 2 Years</label>
                        <label><input type="radio" name="experience" value="2-3 Years"/> 2 Years to 3 Years</label>
                        <label><input type="radio" name="experience" value="3-4 Years"/> 3 Years to 4 Years</label>
                        <label><input type="radio" name="experience" value="4+ Years"/> 4+ Years</label>
                    </div>
                </div>

                <!-- Qualification Card -->
                <div class="card">
                    <h4><i class="fas fa-graduation-cap"></i> Qualification</h4>
                    <select class="dropdown">
                        <option value="High School">High School</option>
                        <option value="Intermediate">Intermediate</option>
                        <option value="Graduation">Graduation</option>
                        <option value="Master Degree">Master Degree</option>
                    </select>
                </div>
            </div>

            <div class="card-container">
                <asp:Repeater ID="JobsRepeater" runat="server" OnItemCommand="JobsRepeater_ItemCommand">
                    <ItemTemplate>
                        <div class="job-card">
                            <div class="job-icon">👤</div>
                            <h5><%# Eval("Title") %></h5>
                            <p><strong><%# Eval("Company") %></strong></p>
                            <p>Location: <%# Eval("Location") %></p>
                            <p>Experience: <%# Eval("Experience") %></p>
                            <p>Skills: <%# Eval("Skills") %></p>
                            <div class="button-container">
                               <asp:Button ID="ApplyJobButton" runat="server" Text="Apply Job" CssClass="btn btn-primary" 
                                 CommandName="Apply" CommandArgument='<%# Eval("JobId") %>' />

                                <asp:Button ID="ViewJobButton" runat="server" Text="View Job" CssClass="btn btn-outline-secondary" />
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

               <asp:Label ID="NoJobsLabel" runat="server" Text="No jobs available." 
           CssClass="no-jobs-message" Visible="false" 
           Style="color: red; font-weight: bold; text-align: center; margin-top: 20px;"></asp:Label>

            </div>
        </div>
    </form>
</body>
</html>