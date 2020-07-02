using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Admin_Login : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string kl = "select pass from admin where id='" + id.Text + "'";
        da = new SqlDataAdapter(kl, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            string pass = ds.Tables[0].Rows[0][0].ToString();
            if (apass.Text == pass)
            {
                Session["type"] = "admin";
                Response.Redirect("Add-Apps.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid Password !!!')", true);
            }

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid ID!!!')", true);
        }

    }
}