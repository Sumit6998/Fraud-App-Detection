using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class HomePage : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
    SqlConnection con = new SqlConnection(constr);


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    
    protected void Button5_Click(object sender, EventArgs e)
    {
        
    }

   
    protected void Button2_Click1(object sender, EventArgs e)
    {
       
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
      
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string kl = "select pass,user_id from register where uname='" + uname.Text + "'";
        da = new SqlDataAdapter(kl, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            if (pass.Text == ds.Tables[0].Rows[0][0].ToString())
            {
                Session["type"] = "user";
                Session["uid"] = ds.Tables[0].Rows[0][1].ToString();
                Response.Redirect("Home-Screen.aspx");
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(GetType(),"msgtype()", "alert('Invalid Password !!!')", true);
            }

        }
        else
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Invalid Username!!!')", true);
        }
    }
}