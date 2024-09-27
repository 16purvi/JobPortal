using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobPortal
{
    public partial class CompanyLogin : System.Web.UI.Page
    {
        string username, password, admin_uname, admin_pass;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            admin_uname = "admin";
            admin_pass = "admin";

            if (TextBox1.Text == admin_uname && TextBox2.Text == admin_pass)
            {
                Response.Redirect("Homepage.aspx");

            }
            else
            {
                ErrorMessageLabel.Text = "Invalid username or password.";
                ErrorMessageLabel.Visible = true;
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }
    }
}