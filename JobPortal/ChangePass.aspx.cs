using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class ChangePass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                int userId = Convert.ToInt32(Session["UserID"]);
                string connectionString = "Server=2Z9T324\\SQLEXPRESS;Database=JobPortal;User Id=sa;Password=manager@123;";

                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    // Check the old password
                    string checkPasswordQuery = "SELECT PasswordHash FROM Users WHERE UserID = @UserID";
                    string oldPasswordHash = string.Empty;

                    using (SqlCommand cmd = new SqlCommand(checkPasswordQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@UserID", userId);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                oldPasswordHash = reader["PasswordHash"].ToString();
                            }
                        }
                    }

                    // Compare with the entered old password
                    if (txtOldPassword.Text == oldPasswordHash) // Assuming PasswordHash is stored as plain text
                    {
                        if (txtNewPassword.Text == txtConfirmPassword.Text)
                        {
                            // Update the password
                            string updatePasswordQuery = "UPDATE Users SET PasswordHash = @NewPassword WHERE UserID = @UserID";
                            using (SqlCommand cmd = new SqlCommand(updatePasswordQuery, con))
                            {
                                cmd.Parameters.AddWithValue("@NewPassword", txtNewPassword.Text); // Store new password directly
                                cmd.Parameters.AddWithValue("@UserID", userId);
                                cmd.ExecuteNonQuery();
                            }

                            // Log user out and redirect to login page or inform the user
                            Session.Abandon();
                            Response.Write("<script>alert('Password changed successfully! Please log in with your new password.'); window.location='Login.aspx';</script>");
                        }
                        else
                        {
                            // New password and confirm password do not match
                            Response.Write("<script>alert('New password and confirm password do not match.');</script>");
                        }
                    }
                    else
                    {
                        // Old password is incorrect
                        Response.Write("<script>alert('Old password is incorrect.');</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('User session has expired. Please log in again.');</script>");
            }
        }
    }
    
}