using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Check;

public partial class Add__Feedback : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        #region System Generated . . .
        Class1 c = new Class1();
        bool c1 = c.checkLoad("S139", con);
        if (!c1)
        {
            Response.Redirect("Login.aspx");
        }
        #endregion

        if (Session["fadd"]=="fadd")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Feedback Succesfully Submitted !!!')", true);
            Session["fadd"] = "";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string m = "select top 1 fid from Feedback order by fid desc";
        da = new SqlDataAdapter(m, con);
        da.Fill(ds);
        int count = 0;
        if (ds.Tables[0].Rows.Count > 0)
        {
            count = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            count = count + 1;

        }
        else
        {
            count = 90001;
        }
        string uid = Session["uid"].ToString();
        SqlDataAdapter da1;
        DataSet ds1 = new DataSet();
        string m1 = "select name,email from register where user_id='"+uid+"'";
        da1 = new SqlDataAdapter(m1, con);
        da1.Fill(ds1);
        string name = "", email = "";
        if (ds1.Tables[0].Rows.Count > 0)
        {
            name = ds1.Tables[0].Rows[0][0].ToString();
            email = ds1.Tables[0].Rows[0][1].ToString();
            SqlCommand cmd;
            con.Open();
            string j = "insert into Feedback values('" + count + "','" + uid + "','" + name + "','" + email + "','" + msg.Text + "')";
            cmd = new SqlCommand(j, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["fadd"] = "fadd";
            Response.Redirect("Add- Feedback.aspx");

        }
        
    }
}