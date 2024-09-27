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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       
        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            string email = txtEmail.Text.Trim();
            string fullName = txtFullName.Text.Trim();
            string dateOfBirth = txtDateOfBirth.Text.Trim();

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Username and Password are required.";
                return;
            }

            ////string hashedPassword = HashPassword(password);

            string connectionString = "uid=sa;password=manager@123;database=JobPortal;server=2Z9T324\\SQLEXPRESS";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO Users (Username, PasswordHash, Email, FullName, DateOfBirth) VALUES (@Username, @PasswordHash, @Email, @FullName, @DateOfBirth)";
                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.AddWithValue("@Username", username);
                    cmd.Parameters.AddWithValue("@PasswordHash", password);
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.Parameters.AddWithValue("@FullName", fullName);
                    cmd.Parameters.AddWithValue("@DateOfBirth", DateTime.Parse(dateOfBirth));

                    try
                    {
                        con.Open();
                        cmd.ExecuteNonQuery();
                        lblMessage.ForeColor = System.Drawing.Color.Green;
                        lblMessage.Text = "Registration successful!";
                    }
                    catch (Exception ex)
                    {
                        lblMessage.Text = "An error occurred: " + ex.Message;
                    }
                }
            }
        }
        //private string HashPassword(string password)
        //{
        //    using (SHA256 sha256 = SHA256.Create())
        //    {
        //        byte[] bytes = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));
        //        StringBuilder sb = new StringBuilder();
        //        foreach (byte b in bytes)
        //        {
        //            sb.Append(b.ToString("x2"));
        //        }
        //        return sb.ToString();
        //    }
        //}
    }
}
