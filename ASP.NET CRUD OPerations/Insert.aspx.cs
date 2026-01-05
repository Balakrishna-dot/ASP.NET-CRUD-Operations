using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Insert : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data source=LAPTOP-ASDDE140\\MSSQLSERVER6;initial catalog=master;integrated security=sspi");
    private object lblMsg4;

    protected void Page_Load(object sender, EventArgs e)
    {
        ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        cn.Open();
    }

    protected void Insert1_Click(object sender, EventArgs e)
    {
        try
        {
            string id = txtId.Text;
            string fname = txtFname.Text;
            string lname = txtLname.Text;
            string age = txtAge.Text;
            string Bg = txtBg.Text;
            string cell = txtCell.Text;
            string email = txtEmail.Text;

            string qry = $"INSERT INTO Patient1 VALUES({id},'{fname}','{lname}',{age},'{Bg}',{cell},'{email}')";
            SqlCommand cmd = new SqlCommand(qry, cn);



            cmd.ExecuteNonQuery();

            lblMsg0.Text = "Inserted Successfully";

        }
        catch (Exception ex)
        {
            lblMsg0.Text = "Error: " + ex.Message;
        }
        finally
        {
            cn.Close();
        }
    }

    protected void btnExit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }
}
