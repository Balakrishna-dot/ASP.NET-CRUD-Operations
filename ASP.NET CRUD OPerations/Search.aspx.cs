using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection("Data source=LAPTOP-ASDDE140\\MSSQLSERVER6;initial catalog=master;integrated security=sspi");
    protected void Page_Load(object sender, EventArgs e)
    {
        cn.Open();//Page load Method will always executes,It doesnt check whether a request is first Request or PostBackRequest.

    }

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        try
        {


            int pid = Convert.ToInt32(txtid.Text);
            string qry = $"select * from Patient1 where pid={pid}";
            SqlCommand cmd = new SqlCommand(qry, cn);
            SqlDataReader dr = cmd.ExecuteReader();

            GridView.DataSource = dr;//Data source:Used to assign the data to GridView.
            GridView.DataBind();//used to bind data from datasource to a control.
            if (!dr.HasRows)//its a property in SqlDataReader to check atleast one row is availabe.
            {
                lblMsg.Text = "Patient ID Not Found";
            }
            else
            {
                while (dr.Read())
                {



                    string fname = Convert.ToString(dr["Fname"]);
                    string lname = Convert.ToString(dr["Lname"]);
                    int age = Convert.ToInt32(dr["age"]);
                    string Bg = Convert.ToString(dr["Bg"]);
                    long cell = Convert.ToInt64(dr["cell"]);
                    string email = Convert.ToString(dr["email"]);

                    Console.WriteLine(fname);
                    Console.WriteLine(lname);
                    Console.WriteLine(age);
                    Console.WriteLine(Bg);
                    Console.WriteLine(cell);
                    Console.WriteLine(email);
                }
                lblMsg.Text = $"Fetched success Pid= {pid}";
            }

        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error" + ex.Message;
        }
        finally
        {
            cn.Close();
        }
    }

    protected void btnsearchall_Click(object sender, EventArgs e)
    {

        try

        {


            string qry = $"select * from Patient1";
            SqlCommand cmd = new SqlCommand(qry, cn);
            SqlDataReader dr = cmd.ExecuteReader();

            GridView.DataSource = dr;
            GridView.DataBind();
            if (!dr.HasRows)//Hashrow is used to check atleast one row is available,its property of SqlDataReader.
            {
                lblMsg.Text = "Patient ID Not Found";
            }
            else
            {
                while (dr.Read())
                {


                    int pid = Convert.ToInt32(dr["pid"]);
                    string fname = Convert.ToString(dr["Fname"]);
                    string lname = Convert.ToString(dr["Lname"]);
                    int age = Convert.ToInt32(dr["age"]);
                    string Bg = Convert.ToString(dr["Bg"]);
                    long cell = Convert.ToInt64(dr["cell"]);
                    string email = Convert.ToString(dr["email"]);

                    Console.WriteLine(fname);
                    Console.WriteLine(lname);
                    Console.WriteLine(age);
                    Console.WriteLine(Bg);
                    Console.WriteLine(cell);
                    Console.WriteLine(email);
                }
                lblMsg.Text = "Fetched success";
            }

        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error" + ex.Message;
        }
        finally
        {
            cn.Close();
        }
    }

    protected void btnExit_Click(object sender, EventArgs e)
    {
        bool admin = true;
        bool.TryParse(Request["user"], out admin);//Tries to convert that value into boolean.

        if (admin)//true,Redirect user to To Menu.aspx
        {

            Response.Redirect("Menu.aspx");
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }
}