using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class D_Add_Apps : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["add"] == "add")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype", "alert('Application Details Added !!!')", true);
            Session["add"] = "";
        }
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string m = "select top 1 aid from app order by aid desc";
        da = new SqlDataAdapter(m, constr);
        da.Fill(ds);
        int count = 0;
        if (ds.Tables[0].Rows.Count > 0)
        {
            count = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            count = count + 1;
            appid.Text = Convert.ToString(count);
            appid.ReadOnly = true;
        }
        else
        {
            count = 5001;
            appid.Text = Convert.ToString(count);
            appid.ReadOnly = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        SqlCommand cmd;
        con.Open();
        string op = "insert into app(aid,name,des,star,type,developer_comp,img,downloads,play_store_link,app_store_link,suspect) values('" + appid.Text + "','" + name.Text + "','" + des.Text + "','" + star.SelectedItem.Text + "','" + type.SelectedItem.Text + "','" + cname.Text + "','" + image.ImageUrl + "','" + downloads.Text + "','" + play_store.Text + "','" + app_store.Text + "','no')";
        cmd = new SqlCommand(op, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Session["add"] = "add";
        Response.Redirect("Add-Apps.aspx");

    }


    protected void upload_Click(object sender, EventArgs e)
    {
        String img, path;
        try
        {
            img = FileUpload1.FileName;
            path = Server.MapPath("~\\images\\");
            FileUpload1.SaveAs(path + img);
            image.ImageUrl = "images\\" + img;
        }
        catch (Exception ep)
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please Select your photo');", true);
        }

    }
}