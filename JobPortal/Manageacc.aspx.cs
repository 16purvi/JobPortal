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
    public partial class Manageacc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadUserData();
            }
        }
        private void LoadUserData()
        {
            if (Session["UserID"] != null)
            {
                int userId = Convert.ToInt32(Session["UserID"]);
                string connectionString = "Server=2Z9T324\\SQLEXPRESS;Database=JobPortal;User Id=sa;Password=manager@123;";



                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    string query = "SELECT Email, PasswordHash, DateOfBirth FROM Users WHERE UserID = @UserID";

                    using (SqlCommand cmd = new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue("@UserID", userId);
                        con.Open();

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                txtEmail.Text = reader["Email"].ToString();
                                txtPassword.Attributes["value"] = reader["PasswordHash"].ToString(); // Show the existing password hash
                                txtDOB.Text = Convert.ToDateTime(reader["DateOfBirth"]).ToString("yyyy-MM-dd");
                                //txtFirstName.Text = reader["FirstName"].ToString();
                                //txtLastName.Text = reader["LastName"].ToString();
                                //txtPhone.Text = reader["PhoneNumber"].ToString();
                            }
                        }
                    }
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                int userId = Convert.ToInt32(Session["UserID"]);
                string connectionString = "Server=2Z9T324\\SQLEXPRESS;Database=JobPortal;User Id=sa;Password=manager@123;";



                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    // Insert into EditProfile table
                    string insertQuery = "INSERT INTO EditProfile (UserID, FirstName, LastName, Email, PasswordHash, DateOfBirth, PhoneNumber, Gender, Language, Twitter, LinkedIn, GooglePlus) " +
                                         "VALUES (@UserID, @FirstName, @LastName, @Email, @PasswordHash, @DateOfBirth, @PhoneNumber, @Gender, @Language, @Twitter, @LinkedIn, @GooglePlus)";

                    using (SqlCommand cmd = new SqlCommand(insertQuery, con))
                    {
                        cmd.Parameters.AddWithValue("@UserID", userId);
                        cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                        cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                        cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                        cmd.Parameters.AddWithValue("@PasswordHash", txtPassword.Text); // Store as-is
                        cmd.Parameters.AddWithValue("@DateOfBirth", txtDOB.Text);
                        cmd.Parameters.AddWithValue("@PhoneNumber", txtPhone.Text);
                        cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                        cmd.Parameters.AddWithValue("@Language", ddlLanguage.SelectedValue);
                        cmd.Parameters.AddWithValue("@Twitter", txtTwitter.Text);
                        cmd.Parameters.AddWithValue("@LinkedIn", txtLinkedin.Text);
                        cmd.Parameters.AddWithValue("@GooglePlus", txtGooglePlus.Text);

                        cmd.ExecuteNonQuery();
                    }

                    // Update Users table
                    //string updateQuery = "UPDATE Users SET FirstName = @FirstName, LastName = @LastName, Email = @Email, PasswordHash = @PasswordHash, " +
                    //                     "DateOfBirth = @DateOfBirth, PhoneNumber = @PhoneNumber, Gender = @Gender, Language = @Language " +
                    //                     "WHERE UserID = @UserID";

                    //using (SqlCommand cmd = new SqlCommand(updateQuery, con))
                    //{
                    //    cmd.Parameters.AddWithValue("@UserID", userId);
                    //    cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                    //    cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                    //    cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                    //    cmd.Parameters.AddWithValue("@PasswordHash", txtPassword.Text); // Store as-is
                    //    cmd.Parameters.AddWithValue("@DateOfBirth", txtDOB.Text);
                    //    cmd.Parameters.AddWithValue("@PhoneNumber", txtPhone.Text);
                    //    cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                    //    cmd.Parameters.AddWithValue("@Language", ddlLanguage.SelectedValue);

                    //    cmd.ExecuteNonQuery();
                    //}
                }

                Response.Write("<script>alert('Profile updated successfully!');</script>");
            }
            else
            {
                Response.Write("<script>alert('User session has expired. Please log in again.');</script>");
            }
        }
    }
    }