using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;

namespace JobPortal
{
    public partial class ManageStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadJobApplications();
            }
        }

        private void LoadJobApplications()
        {
            // Get the current user's ID from the session
            int userId = Convert.ToInt32(Session["UserID"]);
            string connectionString = "Server=2Z9T324\\SQLEXPRESS;Database=JobPortal;User Id=sa;Password=manager@123;";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"
                    SELECT ja.ApplicationID, ja.JobID, j.Company, ja.FirstName, ja.LastName, 
                           ja.Email, ja.PhoneNumber, ja.Position, ja.Message 
                    FROM JobApplications ja
                    JOIN Jobs j ON ja.JobID = j.JobID
                    WHERE ja.UserID = @UserID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@UserID", userId);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    con.Open();
                    da.Fill(dt);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
        }

        [WebMethod]
        public static string UpdateApplication(string applicationId, string firstName, string lastName, string email, string phoneNumber, string message)
        {
            string connectionString = "Server=2Z9T324\\SQLEXPRESS;Database=JobPortal;User Id=sa;Password=manager@123;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"
                    UPDATE JobApplications
                    SET FirstName = @FirstName, 
                        LastName = @LastName, 
                        Email = @Email, 
                        PhoneNumber = @PhoneNumber, 
                        Message = @Message
                    WHERE ApplicationID = @ApplicationID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@FirstName", firstName);
                    cmd.Parameters.AddWithValue("@LastName", lastName);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    cmd.Parameters.AddWithValue("@Message", message);
                    cmd.Parameters.AddWithValue("@ApplicationID", applicationId);

                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        return "Success";
                    }
                    else
                    {
                        return "Error: No rows updated.";
                    }
                }
            }
        }

        public static string DeleteApplication(string applicationId)
        {
            string connectionString = "Server=2Z9T324\\SQLEXPRESS;Database=JobPortal;User Id=sa;Password=manager@123;";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM JobApplications WHERE ApplicationID = @ApplicationID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@ApplicationID", applicationId);
                    con.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();
                    return rowsAffected > 0 ? "Success" : "Error: No rows deleted.";
                }
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
