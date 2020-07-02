using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Rating : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["add"] == "add")
        {
            Page.ClientScript.RegisterStartupScript(GetType(), "msgtype()", "alert('Data Updated !!!')", true);
            Session["add"] = "";
        }
        fraud.Visible = true;
        genuine.Visible = true;
        string aid = Request.QueryString["id"];
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string m = "select img,des,developer_comp,downloads,name,rate,star,flag from app where aid='" + aid + "'";
        da = new SqlDataAdapter(m, con);
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {

            app_img.ImageUrl = ds.Tables[0].Rows[0][0].ToString();
            des.Text = ds.Tables[0].Rows[0][1].ToString();
            cname.Text = ds.Tables[0].Rows[0][2].ToString();
            downloads.Text = ds.Tables[0].Rows[0][3].ToString();
            name.Text = ds.Tables[0].Rows[0][4].ToString();
            int rate = 0;
            if (ds.Tables[0].Rows[0][5].ToString() != "")
            {
                rate = Convert.ToInt32(ds.Tables[0].Rows[0][5].ToString());
            }
                if (rate == 0)
                {
                    urate.ImageUrl = "~/images/0.png";
                }
                else if (rate == 1)
                {
                    urate.ImageUrl = "~/images/1.png";

                }
                else if (rate == 2)
                {
                    urate.ImageUrl = "~/images/2.png";
                }
                else if (rate == 3)
                {
                    urate.ImageUrl = "~/images/3.png";
                }
                else if (rate == 4)
                {
                    urate.ImageUrl = "~/images/4.png";
                }
                else if (rate == 5)
                {
                    urate.ImageUrl = "~/images/5.png";
                }
            
            double adrate = 0;
            if (ds.Tables[0].Rows[0][6].ToString() != "")
            {
                adrate = Convert.ToDouble(ds.Tables[0].Rows[0][6].ToString());
            }
                if (adrate > 0 && adrate<1)
                {
                    arate.ImageUrl = "~/images/0.png";
                }
                else if (adrate >= 1 && adrate < 2)
                {
                    arate.ImageUrl = "~/images/1.png";

                }
                else if (adrate >= 2 && adrate < 3)
                {
                    arate.ImageUrl = "~/images/2.png";
                }
                else if (adrate >= 3 && adrate < 4)
                {
                    arate.ImageUrl = "~/images/3.png";
                }
                else if (adrate >= 4 && adrate < 5)
                {
                    arate.ImageUrl = "~/images/4.png";
                }
                else if (adrate >=5)
                {
                    arate.ImageUrl = "~/images/5.png";
                }
            
            if (ds.Tables[0].Rows[0][7].ToString() != "")
            {
                fraud.Visible = false;
                genuine.Visible = false;
            }
           
        }

        SqlDataAdapter da1;
        DataSet ds1 = new DataSet();
        string t = "select r.name,c.comment from comment c,register r where c.uid=r.user_id and c.aid='" + aid + "'";
        da1 = new SqlDataAdapter(t, con);
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
            {
               
                TableRow tRow = new TableRow();
                TableCell tcell = new TableCell();



                tcell.HorizontalAlign = HorizontalAlign.Left;

                tcell.ForeColor = System.Drawing.Color.CornflowerBlue;
                tcell.Text = ds1.Tables[0].Rows[i][0].ToString();
                tRow.Cells.Add(tcell);
                Table1.Rows.Add(tRow);
                TableRow tR1 = new TableRow();
                TableCell t1 = new TableCell();
                t1.Text = "<br>";

                tR1.Cells.Add(t1);


                Table1.Rows.Add(tR1);

                TableRow tRow1 = new TableRow();
                TableCell tcell1 = new TableCell();
                tcell1.HorizontalAlign = HorizontalAlign.Left;
                tcell1.CssClass = "pa";
                tcell1.Text = ds1.Tables[0].Rows[i][1].ToString();

                tRow1.Cells.Add(tcell1);


                Table1.Rows.Add(tRow1);





                TableRow trr = new TableRow();
                TableCell tc2 = new TableCell();
                tc2.ColumnSpan = 2;
                tc2.Text = "<hr>";
                trr.Cells.Add(tc2);
                Table1.Rows.Add(trr);
            }

        }
        else
        {
            Label6.Text = "No Comments";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string aid = Request.QueryString["id"].ToString();
        SqlCommand cmd;
        con.Open();
        string op = "update app set flag='Fraud' where aid='" + aid + "'";
        cmd = new SqlCommand(op, con);
        cmd.ExecuteNonQuery();
        con.Close();
        SqlCommand cmd1;
        con.Open();
        string op1 = "update app set suspect='' where aid='" + aid + "'";
        cmd1 = new SqlCommand(op1, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Session["add"] = "add";
        Response.Redirect("Admin-Rating.aspx?id=" + aid + "");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string aid = Request.QueryString["id"].ToString();
        SqlCommand cmd;
        con.Open();
        string op = "update app set flag='Genuine' where aid='" + aid + "'";
        cmd = new SqlCommand(op, con);
        cmd.ExecuteNonQuery();
        con.Close();
        SqlCommand cmd1;
        con.Open();
        string op1 = "update app set suspect='no' where aid='" + aid + "'";
        cmd1 = new SqlCommand(op1, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        Session["add"] = "add";
        Response.Redirect("Admin-Rating.aspx?id=" + aid + "");
    }
}