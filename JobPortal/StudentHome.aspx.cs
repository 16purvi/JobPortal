using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class StudentHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("StudentLogin.aspx");
        }

        protected void SearchButton_Click(object sender, EventArgs e)
        {
            string searchQuery = SearchTextBox.Text.Trim();
            LoadJobs(searchQuery);
        }

        private void LoadJobs(string jobTitle)
        {
            string connectionString = "uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT * FROM Jobs WHERE Title LIKE @Title";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Title", "%" + jobTitle + "%");

                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    DataTable jobsTable = new DataTable();
                    adapter.Fill(jobsTable);

                    // Store the jobsTable in session for later use
                    HttpContext.Current.Session["JobsData"] = jobsTable;

                    // Redirect to the BrowseJobs page
                    Response.Redirect("BrowseJobs.aspx");
                }
            }
        }
    }
}
