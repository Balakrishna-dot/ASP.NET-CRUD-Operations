using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Delete : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data source=LAPTOP-ASDDE140\\MSSQLSERVER6;initial catalog=master;integrated security=sspi");
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        try
        {
            string pid = txtid.Text;
            string qry = $"DELETE FROM Patient1 WHERE pid={pid}";
            SqlCommand cmd = new SqlCommand(qry, cn);

            int row = cmd.ExecuteNonQuery();
            if (row > 0)
            {
                lblMsg.Text = "Deleted Successfully!";
            }
            else
            {
                lblMsg.Text = "Patient ID Not Found";
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

    protected void btndeleteall_Click(object sender, EventArgs e)
    {
        try
        {

            string qry = $"delete from Patient1";
            SqlCommand cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();

            lblMsg.Text = "All Records Deleted!";
            //LoadAll();
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