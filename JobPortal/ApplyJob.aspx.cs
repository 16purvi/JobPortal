using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class ApplyJob : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string jobId = Request.QueryString["jobId"];
                JobIdHiddenField.Value = jobId;
            }

        }

      
        private void SaveApplication(string userId, string jobId, string firstName, string lastName, string email, string phoneNumber, string dob, string position, string message, string resumePath)
        {
            // Code to save the application to the database
            string connectionString = "uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO JobApplications (UserID, JobID, FirstName, LastName, Email, PhoneNumber, DOB, Position, Message, ResumePath) VALUES (@UserID, @JobID, @FirstName, @LastName, @Email, @PhoneNumber, @DOB, @Position, @Message, @ResumePath)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@UserID", userId);
                    cmd.Parameters.AddWithValue("@JobID", jobId);
                    cmd.Parameters.AddWithValue("@FirstName", firstName);
                    cmd.Parameters.AddWithValue("@LastName", lastName);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    cmd.Parameters.AddWithValue("@DOB", dob);
                    cmd.Parameters.AddWithValue("@Position", position);
                    cmd.Parameters.AddWithValue("@Message", message);
                    cmd.Parameters.AddWithValue("@ResumePath", resumePath);
                   
                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }
            Response.Write("<script>alert('Application submitted successfully.'); window.location='StudentHome.aspx';</script>");

            //Response.Redirect("StudentHome.aspx");
        }

        protected void btnSubmit_Click1(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string email = txtEmail.Text;
            string phoneNumber = txtPhoneNumber.Text;
            string dob = txtDOB.Text;
            string position = ddlPosition.SelectedValue;
            string message = txtMessage.Text;

            string resumePath = string.Empty;
            string jobId = JobIdHiddenField.Value;

            // Get the current user's ID from the session
            string userId = Session["UserID"]?.ToString();

            if (string.IsNullOrEmpty(userId))
            {
                Response.Write("<script>alert('User is not logged in.');</script>");
                return;
            }

            if (fileResume.HasFile)
            {
                if (Path.GetExtension(fileResume.FileName).ToLower() != ".pdf")
                {
                    Response.Write("<script>alert('Only PDF files are allowed for upload.');</script>");
                    return;
                }

                string fileName = Path.GetFileName(fileResume.PostedFile.FileName);
                resumePath = Server.MapPath("~/Uploads/" + fileName);

                // Ensure the directory exists
                string uploadDir = Server.MapPath("~/Uploads/");
                if (!Directory.Exists(uploadDir))
                {
                    Directory.CreateDirectory(uploadDir);
                }

                // Save the file
                fileResume.SaveAs(resumePath);
            }
            
            // You can now use these variables to save to the database or perform other operations
            SaveApplication(userId, jobId, firstName, lastName, email, phoneNumber, dob, position, message, resumePath);
        }
    }
}