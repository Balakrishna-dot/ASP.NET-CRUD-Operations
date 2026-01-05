using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=LAPTOP-ASDDE140\\MSSQLSERVER6;Initial Catalog=master;Integrated Security=sspi");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
    }

   

    protected void btnLogin_Click(object sender, EventArgs e)
    {

        try
        {

            string username = txtUser.Text;
            string password = txtPass.Text;

            string qry = $"select Role from Users where Username='{username}' and Password='{password}'";//Its used
            SqlCommand cmd = new SqlCommand(qry, con);
            string opt = Convert.ToString(cmd.ExecuteScalar());//Its Written single value.

            if (opt == "admin")
            {
                Response.Redirect("Menu.aspx");
            }
            else if (opt == "user")
            {
                Response.Redirect("Search.aspx?user=false");
            }
            else
            {
                lblMsg.Text = "Username and Password Not Matched!";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }

        }
        catch(Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }




    }

    protected void lnkSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registrationt.aspx");

    }
}
