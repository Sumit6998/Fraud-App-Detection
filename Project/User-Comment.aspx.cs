using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class User_Comment : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
    SqlConnection con = new SqlConnection(constr);

    string[] mkeys = new string[40];
    string[] skeys = new string[40];
    int percent = 0;
    double rate = 0;
    double total = 0;
    int count = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        string aid = Request.QueryString["id"];
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string m = "select name,des,developer_comp,img,downloads,play_store_link,app_store_link,rate from app where aid='" + aid + "'";
        da = new SqlDataAdapter(m, con);
        da.Fill(ds);
        int rate = 0;
        if (ds.Tables[0].Rows.Count > 0)
        {
            name.Text = ds.Tables[0].Rows[0][0].ToString();
            Image1.ImageUrl = ds.Tables[0].Rows[0][3].ToString();
            download.Text= ds.Tables[0].Rows[0][4].ToString();
            des.Text= ds.Tables[0].Rows[0][1].ToString();
            cname.Text = ds.Tables[0].Rows[0][2].ToString();
            google_play.PostBackUrl = ds.Tables[0].Rows[0][5].ToString();
            ios_play.PostBackUrl= ds.Tables[0].Rows[0][6].ToString();
            if (ds.Tables[0].Rows[0][7].ToString() != "")
            {
                rate = Convert.ToInt32(ds.Tables[0].Rows[0][7].ToString());
            }
            if (rate == 0)
            {
                Image2.ImageUrl = "~/images/0.png";
            }
            else if(rate==1)
            {
                Image2.ImageUrl = "~/images/1.png";

            }
            else if (rate == 2)
            {
                Image2.ImageUrl = "~/images/2.png";
            }
            else if (rate == 3)
            {
                Image2.ImageUrl = "~/images/3.png";
            }
            else if (rate == 4)
            {
                Image2.ImageUrl = "~/images/4.png";
            }
            else if (rate == 5)
            {
                Image2.ImageUrl = "~/images/5.png";
            }


        }
        
        SqlDataAdapter da1;
        DataSet ds1 = new DataSet();
        string t = "select r.name,c.comment from comment c,register r where c.uid=r.user_id and c.aid='"+aid+"'";
        da1 = new SqlDataAdapter(t, con);
        da1.Fill(ds1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            for (int i = 0; i < ds1.Tables[0].Rows.Count; i++)
            {
                TableRow tRow = new TableRow();
                TableCell tcell = new TableCell();



                tcell.HorizontalAlign = HorizontalAlign.Left;
                tcell.CssClass = "pa";
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


    }

    protected void com_Click(object sender, EventArgs e)
    {
        string aid = Request.QueryString["id"];
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string m = "select top 1 cid from comment order by cid desc";
        da = new SqlDataAdapter(m, con);
        da.Fill(ds);
        int cid = 0;
        if (ds.Tables[0].Rows.Count > 0)
        {
            cid = Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString());
            cid = cid + 1;


        }
        else
        {
            cid = 5001;
        }
        string uid = Session["uid"].ToString();
       
        SqlCommand cmd1;
        con.Open();
        string op = "update Multikey set flag=0";
        cmd1 = new SqlCommand(op, con);
        cmd1.ExecuteNonQuery();
        string op1 = "update Singlekey set flag=0";
        cmd1 = new SqlCommand(op1, con);
        cmd1.ExecuteNonQuery();
        con.Close();
        string str = comment.Text;
        String a1 = rankmaster(str);
        SqlCommand cmd;
        con.Open();
        string t = "insert into comment values('" + cid + "','"+uid+"','" + aid + "','" + name.Text + "','" + comment.Text + "')";
        cmd = new SqlCommand(t, con);
        cmd.ExecuteNonQuery();
        con.Close();
        con.Open();
        string s = "update app set rate='" + a1 + "' where aid='" + aid + "'";
        cmd = new SqlCommand(s, con);
        cmd.ExecuteNonQuery();
        con.Close();
        Session["add"] = "add";
        Response.Redirect("User-Comment.aspx?id="+aid+"");

    }
    public string rankmaster(String s)
    {
        String k1 = "", s1 = "", k2 = "", s2 = "", loopstr;

        int score = 0;
        Array.Clear(mkeys, 0, mkeys.Length);
        Array.Clear(skeys, 0, skeys.Length);
        mkeyfiller();
        skeyfiller();
        SqlDataAdapter odb = new SqlDataAdapter("select * from Multikey where flag = '0'", con);
        DataSet adb2 = new DataSet();
        odb.Fill(adb2);
        SqlDataAdapter odc = new SqlDataAdapter("select * from Singlekey where flag = '0'", con);
        DataSet adc2 = new DataSet();
        odc.Fill(adc2);
        String mkcount = Convert.ToString(adb2.Tables[0].Rows.Count);
        String skcount = Convert.ToString(adc2.Tables[0].Rows.Count);
        /*       for (int j = 0; j < Convert.ToInt32(ads2.Tables[0].Rows.Count); j++)
               {
                   ListBox1.Items.Add(keys[j]);

               }  */



        //Mkey detection and marking
        for (int i = 0; i <= Convert.ToInt32(mkcount) - 1; i++)
        {

            if (s.Contains(mkeys[i]))
            {
                score = score + Convert.ToInt32(getmultiscore(mkeys[i]));
                con.Open();
                SqlCommand cmd = new SqlCommand("Update Multikey set flag = '1' where keyword = '" + mkeys[i] + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                //set flag for skeys contained in matched mkey
                for (int j = 0; j <= Convert.ToInt32(skcount) - 1; j++)
                {
                    if (mkeys[i].Contains(skeys[j]))
                    {

                        con.Open();
                        SqlCommand cmd2 = new SqlCommand("Update Singlekey set flag = '1' where keyword = '" + skeys[j] + "'", con);
                        cmd2.ExecuteNonQuery();
                        con.Close();

                    }
                }
            }
        }
        Array.Clear(skeys, 0, skeys.Length);
        skeyfiller();
        SqlDataAdapter odd = new SqlDataAdapter("select * from Singlekey where flag = '0'", con);
        DataSet add2 = new DataSet();
        odd.Fill(add2);
        skcount = Convert.ToString(add2.Tables[0].Rows.Count);
        //Skey detection and marking
        for (int i = 0; i <= Convert.ToInt32(skcount) - 1; i++)
        {
            if (s.Contains(skeys[i]))
            {
                score = score + Convert.ToInt32(getsinglescore(skeys[i]));
                con.Open();
                SqlCommand cmd = new SqlCommand("Update Singlekey set flag = '1' where keyword = '" + skeys[i] + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();

            }

        }

        return Convert.ToString(score);


    }

    public String getsinglescore(String s)
    {
        SqlDataAdapter oda = new SqlDataAdapter("select score from Singlekey where keyword= '" + s + "'", con);
        DataSet ads2 = new DataSet();
        oda.Fill(ads2);
        return (Convert.ToString(ads2.Tables[0].Rows[0][0]));
    }

    public String getmultiscore(String s)
    {
        SqlDataAdapter oda = new SqlDataAdapter("select score from Multikey where keyword= '" + s + "'", con);
        DataSet ads2 = new DataSet();
        oda.Fill(ads2);
        return (Convert.ToString(ads2.Tables[0].Rows[0][0]));
    }

    public void mkeyfiller()
    {
        SqlDataAdapter oda = new SqlDataAdapter("select keyword,score from Multikey where flag = '0'", con);
        DataSet ads2 = new DataSet();
        oda.Fill(ads2);
        for (int i = 0; i < Convert.ToInt32(ads2.Tables[0].Rows.Count); i++)
        {
            mkeys[i] = ads2.Tables[0].Rows[i][0].ToString();
        }

    }

    public void skeyfiller()
    {
        SqlDataAdapter oda3 = new SqlDataAdapter("select keyword,score from Singlekey where flag = '0'", con);
        DataSet ads3 = new DataSet();
        oda3.Fill(ads3);
        for (int i = 0; i < Convert.ToInt32(ads3.Tables[0].Rows.Count); i++)
        {
            skeys[i] = ads3.Tables[0].Rows[i][0].ToString();
        }
    }
}