using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class View_Feedback : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Visible = false;
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string m = "select fid,name,email from Feedback";
        da = new SqlDataAdapter(m, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "yes")
        {
            string i = Convert.ToString(e.CommandArgument.ToString());
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            string s = "select msg from Feedback where fid='"+i+"'";
            da = new SqlDataAdapter(s, con);
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                msg.Text = ds.Tables[0].Rows[0][0].ToString();
             
                Panel1.Visible = true;
            }

        }

    }
}