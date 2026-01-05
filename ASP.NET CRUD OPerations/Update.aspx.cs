using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Update : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data source=LAPTOP-ASDDE140\\MSSQLSERVER6;initial catalog=master;integrated security=sspi");
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
    }

    protected void btnUpdate1_Click(object sender, EventArgs e)
    {
        try
        {
            int pid = Convert.ToInt32(txtId.Text);//used to take input from browser.
            string fname = Convert.ToString(txtFname.Text);
            string lname = Convert.ToString(txtLname.Text);
            int age = Convert.ToInt32(txtAge.Text);
            string Bg = Convert.ToString(txtBg.Text);

            string qry = $"update Patient1 set Fname='{fname}',Lname='{lname}',age={age},Bg='{Bg}' where pid={pid}";
            SqlCommand cmd = new SqlCommand(qry, cn);


            int row = cmd.ExecuteNonQuery();//Row stores no of rows affected.

            if (row > 0)
            {
                lblMsg.Text = "Updated Successfully..";
            }
            else
            {
                lblMsg.Text = "Patient ID Not Found..";
            }




        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error: " + ex.Message;
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
