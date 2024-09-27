using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace JobPortal
{
    public partial class BrowseJobs : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] == null)
            {
                // User is not logged in, redirect to the registration page
                Response.Redirect("Register.aspx");
                return; // Ensure the rest of the code doesn't run
            }

            if (!IsPostBack)
            {

                DataTable jobsTable = HttpContext.Current.Session["JobsData"] as DataTable;

                if (jobsTable != null && jobsTable.Rows.Count > 0)
                {
                    JobsRepeater.DataSource = jobsTable;
                    JobsRepeater.DataBind();
                    NoJobsLabel.Visible = false; // Hide no jobs message
                }
                else
                {
                    NoJobsLabel.Visible = true; // Show no jobs message
                }

                string category = Request.QueryString["category"];

                if (!string.IsNullOrEmpty(category))
                {
                    LoadJobsByCategory(category);
                }

            }
        }

        protected void JobsRepeater_ItemCommand(object source, System.Web.UI.WebControls.RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "Apply")
            {
                // Get the JobId from CommandArgument
                string jobId = e.CommandArgument.ToString();

                // Redirect to ApplyJob.aspx with the JobId as a query parameter
                Response.Redirect($"ApplyJob.aspx?jobId={jobId}");
            }
        }

        private string GetCompanyName(string jobId)
        {
            string companyName = string.Empty;
            using (SqlConnection conn = new SqlConnection("uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS"))
            {
                conn.Open();
                string query = "SELECT Company FROM Jobs WHERE JobId = @JobId"; // Assuming JobId is the primary key in Jobs table

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@JobId", jobId);
                    companyName = cmd.ExecuteScalar()?.ToString() ?? string.Empty;
                }
            }
            return companyName;
        }

        private void LoadJobsByCategory(string category)
        {
            DataTable jobsTable = new DataTable();

            using (SqlConnection conn = new SqlConnection("uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS"))
            {
                conn.Open();
                string query = "";

                // Determine the SQL query based on the category
                switch (category)
                {
                    case "WebDev":
                        query = "SELECT * FROM Jobs WHERE Title LIKE '%Developer%' OR Title LIKE '%Designer%'";
                        break;
                    case "DataScience":
                        query = "SELECT * FROM Jobs WHERE Title LIKE '%Data%'";
                        break;
                    case "Accounting":
                        query = "SELECT * FROM Jobs WHERE Title LIKE '%Account%' OR Title LIKE '%Finance%'";
                        break;
                    case "Writing":
                        query = "SELECT * FROM Jobs WHERE Title LIKE '%Writer%' OR Title LIKE '%Content%'";
                        break;
                    case "Sales":
                        query = "SELECT * FROM Jobs WHERE Title LIKE '%Sales%'";
                        break;
                    case "Graphics":
                        query = "SELECT * FROM Jobs WHERE Title LIKE '%Graphic%'";
                        break;
                    case "DigitalMarketing":
                        query = "SELECT * FROM Jobs WHERE Title LIKE '%Marketing%'";
                        break;
                    case "Education":
                        query = "SELECT * FROM Jobs WHERE Title LIKE '%Teacher%' OR Title LIKE '%Trainer%'";
                        break;
                }

                SqlDataAdapter adapter = new SqlDataAdapter(query, conn);
                adapter.Fill(jobsTable);
            }

            // Bind jobs to the repeater or display control
            if (jobsTable != null && jobsTable.Rows.Count > 0)
            {
                JobsRepeater.DataSource = jobsTable;
                JobsRepeater.DataBind();
                NoJobsLabel.Visible = false; // Hide no jobs message
            }
            else
            {
                NoJobsLabel.Visible = true; // Show no jobs message
            }
        }

    }
}