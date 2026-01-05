using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btninsert_Click(object sender, EventArgs e)
    {
        Response.Redirect("Insert.aspx");
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        Response.Redirect("Update.aspx");
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        Response.Redirect("Delete.aspx");
    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("Search.aspx?user=true");
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx");
    }
}