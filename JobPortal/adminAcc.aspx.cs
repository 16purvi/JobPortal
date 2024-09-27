using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class adminAcc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string adminID = txtID.Text.Trim();

            if (!string.IsNullOrEmpty(adminID))
            {
                string connectionString = "uid=sa; password=manager@123; database=JobPortal; server=2Z9T324\\SQLEXPRESS";
                string query = "SELECT * FROM Admins WHERE AdminID = @AdminID";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@AdminID", adminID); // Use parameterized queries to prevent SQL injection

                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.Read())
                    {
                        txtName.Text = reader["Name"].ToString();
                        ddlGender.SelectedValue = reader["Gender"].ToString();
                        txtDate.Text = Convert.ToDateTime(reader["DateOfBirth"]).ToString("yyyy-MM-dd");
                        txtPhoneNo.Text = reader["PhoneNo"].ToString();
                        txtAddress.Text = reader["Address"].ToString();
                        txtEmail.Text = reader["Email"].ToString();
                        Label1.Text = "";
                    }
                    else
                    {
                        Label1.Text = "Admin not found.";
                    }
                }
            }
            else
            {
                Label1.Text = "Please enter a valid Admin ID.";
            }
        }

        protected void btnSubmitDetails_Click(object sender, EventArgs e)
        {
            string adminID = txtID.Text.Trim();
            string name = txtName.Text.Trim();
            string gender = ddlGender.SelectedValue;
            string dateOfBirth = txtDate.Text; // Date is already formatted
            string phoneNo = txtPhoneNo.Text.Trim();
            string address = txtAddress.Text.Trim();
            string email = txtEmail.Text.Trim();

            if (!string.IsNullOrEmpty(adminID))
            {
                string connectionString = "uid=sa; password=manager@123; database=JobPortal; server=2Z9T324\\SQLEXPRESS";
                string query = "UPDATE Admins SET Name = @Name, Gender = @Gender, DateOfBirth = @DateOfBirth, PhoneNo = @PhoneNo, Address = @Address, Email = @Email WHERE AdminID = @AdminID";

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@AdminID", adminID);
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@DateOfBirth", dateOfBirth);
                    cmd.Parameters.AddWithValue("@PhoneNo", phoneNo);
                    cmd.Parameters.AddWithValue("@Address", address);
                    cmd.Parameters.AddWithValue("@Email", email);

                    conn.Open();
                    int rowsAffected = cmd.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        Label1.Text = "Admin details updated successfully.";
                    }
                    else
                    {
                        Label1.Text = "Error updating Admin details.";
                    }
                }
            }
            else
            {
                Label1.Text = "Please enter a valid Admin ID.";
            }
        }
    }
}

