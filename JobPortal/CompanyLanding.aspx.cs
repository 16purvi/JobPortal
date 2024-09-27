using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class CompanyLanding : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string companyName = txtCompanyName.Text.Trim();
            string companyEmail = txtCompanyEmail.Text.Trim();
            string companyPhone = txtCompanyPhone.Text.Trim();
            string companyWebsite = txtCompanyWebsite.Text.Trim();

            string connectionString = "Server=2Z9T324\\SQLEXPRESS;Database=JobPortal;User Id=sa;Password=manager@123;";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                try
                {
                    con.Open();
                    string query = "INSERT INTO CompanyInformation (CompanyName, CompanyEmail, CompanyPhone, CompanyWebsite) " +
                                   "VALUES (@CompanyName, @CompanyEmail, @CompanyPhone, @CompanyWebsite)";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@CompanyName", companyName);
                        cmd.Parameters.AddWithValue("@CompanyEmail", companyEmail);
                        cmd.Parameters.AddWithValue("@CompanyPhone", companyPhone);
                        cmd.Parameters.AddWithValue("@CompanyWebsite", companyWebsite);

                        int rowsAffected = cmd.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            lblMessage.Visible = true;

                            lblMessage.Text = "Company information submitted successfully!";
                            lblMessage.CssClass = "alert alert-success"; // Success class
                            //lblMessage.Visible = true;
                        }
                        else
                        {
                            lblMessage.Visible = true;
                            lblMessage.Text = "Submission failed. Please try again.";
                            lblMessage.CssClass = "alert alert-danger"; // Danger class
                            //lblMessage.Visible = true;
                        }
                    }
                }
                catch (SqlException sqlEx)
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = $"Database error: {sqlEx.Message}";
                    lblMessage.CssClass = "alert alert-danger"; // Danger class
                    //lblMessage.Visible = true;
                }
                catch (Exception ex)
                {
                    lblMessage.Visible = true;
                    lblMessage.Text = $"Error: {ex.Message}";
                    lblMessage.CssClass = "alert alert-danger"; // Danger class
                    //lblMessage.Visible = true;
                }
            }
        }
    }
}