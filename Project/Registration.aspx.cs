using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["add"] == "add")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Registration Successful !!!')", true);
            Session["add"] = "";
        }
        Label7.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da1;
        DataSet ds1 = new DataSet();
        string we = "select uname from register";
        da1 = new SqlDataAdapter(we, con);
        da1.Fill(ds1);
        string flag= "0";
        if (ds1.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
            {
                if (uname.Text == ds1.Tables[0].Rows[i][0].ToString())
                {
                    flag = "1";
                }
                else
                {
                    flag = "0";
                }
            }


        }
        if (flag == "1")
        {
            Label7.Visible = true;

        }
        else
        {
            Label7.Visible = false;
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            string m = "select top 1 user_id from register order by user_id desc";
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
                count = 10001;
            }
            SqlCommand cmd;
            con.Open();
            string ml = "insert into register values('" + count + "','" + name.Text + "','" + mobno.Text + "','" + email.Text + "','" + uname.Text + "','" + pass.Text + "')";
            cmd = new SqlCommand(ml, con);
            cmd.ExecuteNonQuery();
            con.Close();
            Session["add"] = "add";
            Response.Redirect("Registration.aspx");
        }
    }
}