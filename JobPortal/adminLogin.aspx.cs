using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void LoginButton_Click1(object sender, EventArgs e)
        {
            string username = Username.Text;
            string password = Password.Text;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                Label1.Text = "Username and Password are required.";
                return;
            }

            string connectionString = "uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM adminLogin WHERE Username = @Username AND Password = @Password";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@Password", password);

                    try
                    {
                        con.Open();
                        int count = (int)cmd.ExecuteScalar();
                        if (count > 0)
                        {
                            Label2.ForeColor = System.Drawing.Color.Green;
                            Label2.Text = "Login successful!";
                            // Redirect to another page or dashboard
                            Response.Redirect("Admin.aspx");
                        }
                        else
                        {
                            Label3.Text = "Invalid username or password.";
                        }
                    }
                    catch (Exception ex)
                    {
                        Label4.Text = "An error occurred: " + ex.Message;
                    }
                }


            }
        }
    }
}
