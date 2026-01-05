using System;

using System.Data.SqlClient;

public partial class Registrationt : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data source=LAPTOP-ASDDE140\\MSSQLSERVER6;initial catalog=master;integrated security=sspi");

    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
        
    }

    protected void btnRegister_Click(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        lblSuccess.Text = "";

        try
        {
            

            string user = txtUser.Text;
            string pass = txtPass.Text;
            string confirm = txtConfirm.Text;
            string role = ddlRole.SelectedValue;

            if (pass != confirm)
            {
                lblMsg.Text = "Passwords do not match!";
                return;
            }
            
            if(role=="admin")
            {
                string qry = $"select count(*) from Users where Role='{role}'";
                SqlCommand cmd1 = new SqlCommand(qry, cn);

                int count = (int)cmd1.ExecuteScalar();
                if(count>=1)
                {
                    lblMsg.Text = "Only One Admin is Allowed!";
                    return;
                }
            }

            
            string insertQry = $"INSERT INTO Users VALUES ('{user}','{pass}','{role}')";
            SqlCommand cmd = new SqlCommand(insertQry, cn);

            cmd.ExecuteNonQuery();

            lblSuccess.Text = "Registration Successful!";
        }
        catch (Exception ex)
        {
            lblMsg.Text = ex.Message;
        }
        finally
        {
            cn.Close();
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}
