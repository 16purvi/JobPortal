using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace JobPortal
{
    public partial class MnagaeJobs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindJobs();
            }

            // Check if a delete action was requested
            if (Request.QueryString["delete"] != null)
            {
                int UserID = int.Parse(Request.QueryString["delete"]);
                DeleteJob(UserID);
                BindJobs(); // Re-bind to refresh the list
            }
        }

        private void BindJobs()
        {
            string connectionString = "uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Users";
                SqlDataAdapter da = new SqlDataAdapter(query, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                JobsGridView.DataSource = dt;
                JobsGridView.DataBind();
            }
        }

        protected void JobsGridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "EditJob")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                GridViewRow row = JobsGridView.Rows[rowIndex];
                int UserID = Convert.ToInt32(((HiddenField)row.FindControl("JobIdHiddenField")).Value);

                // Populate the edit form with the job's details
                LoadJobDetails(UserID);
            }
        }
        private void LoadJobDetails(int UserID)
        {
            string connectionString = "uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM Users WHERE UserID = @UserID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserID", UserID);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    editUserID.Text = reader["UserID"].ToString();
                    editUsername.Text = reader["Username"].ToString();
                    editPasswordHash.Text = reader["PasswordHash"].ToString();
                    editEmail.Text = reader["Email"].ToString();
                    editFullName.Text = reader["FullName"].ToString();
                    editDateOfBirth.Text = reader["DateOfBirth"].ToString();
                    editCreatedAt.Text = reader["CreatedAt"].ToString();

                    //editDatePosted.Text = Convert.ToDateTime(reader["DatePosted"]).ToString("MM/dd/yyyy");
                }
                con.Close();
            }
        }
        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            int UserID = GetJobIdFromHiddenField();
            UpdateJob(UserID, editUsername.Text, editPasswordHash.Text, editEmail.Text, editFullName.Text, editDateOfBirth.Text, editCreatedAt.Text );
            BindJobs();
        }

        protected void btnUpdateChanges_Click(object sender, EventArgs e)
        {
            int UserID = GetJobIdFromHiddenField();
            UpdateJob(UserID, editUsername.Text, editPasswordHash.Text, editEmail.Text, editFullName.Text, editDateOfBirth.Text, editCreatedAt.Text);
            BindJobs();
        }

        private void UpdateJob(int UserID, string Username, string PasswordHash,  string Email, string FullName, string DateOfBirth, string CreatedAt)
        {
            string connectionString = "uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "UPDATE Users SET Username = @Username, PasswordHash = @PasswordHash,  Email = @Email , FullName = @FullName, DateOfBirth = @DateOfBirth, CreatedAt = @CreatedAt WHERE UserID = @UserID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@Username", Username);
                cmd.Parameters.AddWithValue("@PasswordHash", PasswordHash);
                cmd.Parameters.AddWithValue("@Email", Email);
                cmd.Parameters.AddWithValue("@FullName", FullName);
                cmd.Parameters.AddWithValue("@DateOfBirth", DateOfBirth);
                cmd.Parameters.AddWithValue("@CreatedAt", CreatedAt);

                
                cmd.Parameters.AddWithValue("@UserID", UserID);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        private void DeleteJob(int UserID)
        {
            string connectionString = "uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Users WHERE UserID = @UserID";
                SqlCommand cmd = new SqlCommand(query, con);
                cmd.Parameters.AddWithValue("@UserID", UserID);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        private int GetJobIdFromHiddenField()
        {
            // You need to implement a way to get the JobId from the hidden field.
            // This might involve capturing the ID when the edit button is clicked.
            return 0; // Placeholder; replace with actual logic
        }

        protected void JobsGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
        }
    }
}