using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class Home_Screen : System.Web.UI.Page
{
    public static string constr = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
    SqlConnection con = new SqlConnection(constr);
    protected void Page_Load(object sender, EventArgs e)
    {
        int count = 0;
        Panel1.Visible = false;
        Panel2.Visible = false;
        Panel3.Visible = false;

        if (!Page.IsPostBack)
        {
            f1.Visible = false;
            f2.Visible = false;
            f3.Visible = false;
            f4.Visible = false;
            f5.Visible = false;
            f6.Visible = false;

            f7.Visible = false;
            f8.Visible = false;
            f9.Visible = false;
            f10.Visible = false;
            f11.Visible = false;
            f12.Visible = false;
            f13.Visible = false;
            f14.Visible = false;
            f15.Visible = false;
            f16.Visible = false;
            f17.Visible = false;
            f18.Visible = false;
            f19.Visible = false;
            f20.Visible = false;
            f21.Visible = false;
            f22.Visible = false;
            f23.Visible = false;
            f24.Visible = false;
            f25.Visible = false;
            f26.Visible = false;
            f27.Visible = false;
            SqlDataAdapter da;
            DataSet ds = new DataSet();
            string s = "select aid,star,rate from app";
            da = new SqlDataAdapter(s, con);
            da.Fill(ds);
            int total = 0;
            if (ds.Tables[0].Rows.Count > 0)
            {
                total = ds.Tables[0].Rows.Count;
                if (total > 9)
                {
                    n1.Visible = true;
                }
                else
                {
                    n1.Visible = false;
                }

                Panel1.Visible = true;
                Panel2.Visible = false;
                Panel3.Visible = false;

                string s1 = ImageFiller1(0, count + 0);

                I1.ImageUrl = s1;

                f1.ImageUrl = "~/images/fraud.jpg";


                if (s1 == "")
                {
                    I1.Visible = false;
                    L1.Visible = false;
                    f1.Visible = false;

                }

                string s2 = ImageFiller1(1, count + 1);


                I2.ImageUrl = s2;

                f2.ImageUrl = "~/images/fraud.jpg";

                if (s2 == "")
                {
                    I2.Visible = false;
                    L2.Visible = false;
                    f2.Visible = false;


                }


                string s3 = ImageFiller1(2, count + 2);

                I3.ImageUrl = s3;

                f3.ImageUrl = "~/images/fraud.jpg";

                if (s3 == "")
                {
                    I3.Visible = false;
                    L3.Visible = false;


                }


                string s4 = ImageFiller1(3, count + 3);

                I4.ImageUrl = s4;

                f4.ImageUrl = "~/images/fraud.jpg";

                if (s4 == "")
                {
                    I4.Visible = false;
                    L4.Visible = false;


                }


                string s5 = ImageFiller1(4, count + 4);

                I5.ImageUrl = s5;

                f5.ImageUrl = "~/images/fraud.jpg";

                if (s5 == "")
                {
                    I5.Visible = false;
                    L5.Visible = false;


                }


                string s6 = ImageFiller1(5, count + 5);

                I6.ImageUrl = s6;

                f6.ImageUrl = "~/images/fraud.jpg";


                if (s6 == "")
                {
                    I6.Visible = false;
                    L6.Visible = false;

                }

                string s7 = ImageFiller1(6, count + 6);

                I7.ImageUrl = s7;

                f7.ImageUrl = "~/images/fraud.jpg";

                if (s7 == "")
                {
                    I7.Visible = false;
                    L7.Visible = false;


                }
                string s8 = ImageFiller1(7, count + 7);

                I8.ImageUrl = s8;

                f8.ImageUrl = "~/images/fraud.jpg";

                if (s8 == "")
                {
                    I8.Visible = false;
                    L8.Visible = false;


                }
                string s9 = ImageFiller1(8, count + 8);

                I9.ImageUrl = s9;

                f9.ImageUrl = "~/images/fraud.jpg";

                if (s9 == "")
                {
                    I9.Visible = false;
                    L9.Visible = false;


                }
                string s10 = ImageFiller1(9, count + 9);

                I10.ImageUrl = s10;

                f10.ImageUrl = "~/images/fraud.jpg";

                if (s10 == "")
                {
                    I10.Visible = false;
                    L10.Visible = false;


                }
                string s11 = ImageFiller1(10, count + 10);

                I11.ImageUrl = s11;

                f11.ImageUrl = "~/images/fraud.jpg";

                if (s11 == "")
                {
                    I11.Visible = false;
                    L11.Visible = false;


                }
                string s12 = ImageFiller1(11, count + 11);

                I12.ImageUrl = s12;

                f12.ImageUrl = "~/images/fraud.jpg";

                if (s12 == "")
                {
                    I12.Visible = false;
                    L12.Visible = false;


                }
                string s13 = ImageFiller1(12, count + 12);

                I13.ImageUrl = s13;

                f13.ImageUrl = "~/images/fraud.jpg";

                if (s13 == "")
                {
                    I13.Visible = false;
                    L13.Visible = false;


                }
                string s14 = ImageFiller1(13, count + 13);

                I14.ImageUrl = s14;

                f14.ImageUrl = "~/images/fraud.jpg";

                if (s14 == "")
                {
                    I14.Visible = false;
                    L14.Visible = false;


                }
                string s15 = ImageFiller1(14, count + 14);


                I15.ImageUrl = s15;

                f15.ImageUrl = "~/images/fraud.jpg";

                if (s15 == "")
                {
                    I15.Visible = false;
                    L15.Visible = false;


                }
                string s16 = ImageFiller1(15, count + 15);

                I16.ImageUrl = s16;

                f16.ImageUrl = "~/images/fraud.jpg";

                if (s16 == "")
                {
                    I16.Visible = false;
                    L16.Visible = false;


                }
                string s17 = ImageFiller1(16, count + 16);
                I17.ImageUrl = s17;

                f17.ImageUrl = "~/images/fraud.jpg";

                if (s17 == "")
                {
                    I17.Visible = false;
                    L17.Visible = false;


                }
                string s18 = ImageFiller1(17, count + 17);

                I18.ImageUrl = s18;

                f18.ImageUrl = "~/images/fraud.jpg";

                if (s18 == "")
                {
                    I18.Visible = false;
                    L18.Visible = false;


                }
                string s19 = ImageFiller1(18, count + 18);

                I19.ImageUrl = s19;

                f19.ImageUrl = "~/images/fraud.jpg";


                if (s19 == "")
                {
                    I19.Visible = false;
                    L19.Visible = false;


                }
                string s20 = ImageFiller1(19, count + 19);

                I20.ImageUrl = s20;

                f20.ImageUrl = "~/images/fraud.jpg";

                if (s20 == "")
                {
                    I20.Visible = false;
                    L20.Visible = false;


                }
                string s21 = ImageFiller1(20, count + 20);
                I21.ImageUrl = s21;


                f21.ImageUrl = "~/images/fraud.jpg";

                if (s21 == "")
                {
                    I21.Visible = false;
                    L21.Visible = false;


                }
                string s22 = ImageFiller1(21, count + 21);
                I22.ImageUrl = s22;


                f22.ImageUrl = "~/images/fraud.jpg";

                if (s22 == "")
                {
                    I22.Visible = false;
                    L22.Visible = false;


                }
                string s23 = ImageFiller1(22, count + 22);
                I23.ImageUrl = s23;


                f23.ImageUrl = "~/images/fraud.jpg";

                if (s23 == "")
                {
                    I23.Visible = false;
                    L23.Visible = false;


                }
                string s24 = ImageFiller1(23, count + 23);
                I24.ImageUrl = s24;


                f24.ImageUrl = "~/images/fraud.jpg";

                if (s24 == "")
                {
                    I24.Visible = false;
                    L24.Visible = false;


                }
                string s25 = ImageFiller1(24, count + 24);
                I25.ImageUrl = s25;


                f25.ImageUrl = "~/images/fraud.jpg";

                if (s25 == "")
                {
                    I25.Visible = false;
                    L25.Visible = false;


                }
                string s26 = ImageFiller1(25, count + 25);
                I26.ImageUrl = s26;


                f26.ImageUrl = "~/images/fraud.jpg";

                if (s26 == "")
                {
                    I26.Visible = false;
                    L26.Visible = false;


                }
                string s27 = ImageFiller1(26, count + 26);
                I27.ImageUrl = s27;


                f27.ImageUrl = "~/images/fraud.jpg";

                if (s27 == "")
                {
                    I27.Visible = false;
                    L27.Visible = false;


                }

            }
            ImageFillerf();

        }

    }
    protected void ImageFillerf()
    {



        string s0 = " ";
        string s = "";
        string s1 = "";

        s1 = "select distinct aid from app where flag='Fraud'";
        //  s0 = "Rs. ";

        SqlDataAdapter sda = new SqlDataAdapter(s1, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        int count = 0;
        count = ds.Tables[0].Rows.Count;
        for (int i = 0; i < count; i++)
        {
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h1.Value)
                {
                    f1.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h2.Value)
                {
                    f2.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h3.Value)
                {
                    f3.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h4.Value)
                {
                    f4.Visible = true;
                }

            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h5.Value)
                {
                    f5.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h6.Value)
                {
                    f6.Visible = true;
                }

            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h7.Value)
                {
                    f7.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h8.Value)
                {
                    f8.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h9.Value)
                {
                    f9.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h10.Value)
                {
                    f10.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h11.Value)
                {
                    f11.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h12.Value)
                {
                    f12.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h13.Value)
                {
                    f13.Visible = true;
                }

            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h14.Value)
                {
                    f14.Visible = true;
                }

            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h15.Value)
                {
                    f15.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h16.Value)
                {
                    f16.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h17.Value)
                {
                    f17.Visible = true;
                }

            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h18.Value)
                {
                    f18.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h19.Value)
                {
                    f19.Visible = true;
                }

            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h20.Value)
                {
                    f20.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h21.Value)
                {
                    f21.Visible = true;
                }

            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h22.Value)
                {
                    f22.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h23.Value)
                {
                    f23.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h24.Value)
                {
                    f24.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h25.Value)
                {
                    f25.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h26.Value)
                {
                    f26.Visible = true;
                }


            }
            if (ds.Tables[0].Rows[i][0].ToString() != null)
            {

                if (ds.Tables[0].Rows[i][0].ToString() == h27.Value)
                {
                    f27.Visible = true;
                }


            }
        }

    }
    protected String ImageFiller1(int i, int count)
    {



        string s0 = " ";
        string s = "";
        string s1 = "";

        s1 = "select distinct img,name,aid from app";
        //  s0 = "Rs. ";

        SqlDataAdapter sda = new SqlDataAdapter(s1, con);
        DataSet ds = new DataSet();
        sda.Fill(ds);
        try
        {
            if (ds.Tables[0].Rows[0][0] != null)
            {

                if (count == 0)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L1.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h1.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I1.Visible = true;
                    L1.Visible = true;


                }
                // Label8.Text = Convert.ToString(ds.Tables[0].Rows[i][4]);
            }

            if (ds.Tables[0].Rows[1][0] != null)
            {
                if (count == 1)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L2.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h2.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I2.Visible = true;
                    L2.Visible = true;


                }
            }

            if (ds.Tables[0].Rows[2][0] != null)
            {
                if (count == 2)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L3.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h3.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I3.Visible = true;
                    L3.Visible = true;


                }
            }
            if (ds.Tables[0].Rows[3][0] != null)
            {
                if (count == 3)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L4.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h4.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I4.Visible = true;
                    L4.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[4][0] != null)
            {
                if (count == 4)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L5.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h5.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I5.Visible = true;
                    L5.Visible = true;

                }
            }

            if (ds.Tables[0].Rows[5][0] != null)
            {
                if (count == 5)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L6.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h6.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I6.Visible = true;
                    L6.Visible = true;

                }
            }

            if (ds.Tables[0].Rows[6][0] != null)
            {
                if (count == 6)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L7.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h7.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I7.Visible = true;
                    L7.Visible = true;

                }
            }

            if (ds.Tables[0].Rows[7][0] != null)
            {
                if (count == 7)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L8.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h8.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I8.Visible = true;
                    L8.Visible = true;

                }
            }

            if (ds.Tables[0].Rows[8][0] != null)
            {
                if (count == 8)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L9.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h9.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I9.Visible = true;
                    L9.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[9][0] != null)
            {
                if (count == 9)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L10.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h10.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I10.Visible = true;
                    L10.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[10][0] != null)
            {
                if (count == 10)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L11.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h11.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I11.Visible = true;
                    L11.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[11][0] != null)
            {
                if (count == 11)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L12.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h12.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I12.Visible = true;
                    L12.Visible = true;

                }
            }

            if (ds.Tables[0].Rows[12][0] != null)
            {
                if (count == 12)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L13.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h13.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I13.Visible = true;
                    L13.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[13][0] != null)
            {
                if (count == 13)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L14.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h14.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I14.Visible = true;
                    L14.Visible = true;

                }
            }

            if (ds.Tables[0].Rows[14][0] != null)
            {
                if (count == 14)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L15.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h15.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I15.Visible = true;
                    L15.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[15][0] != null)
            {
                if (count == 15)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L16.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h16.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I16.Visible = true;
                    L16.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[16][0] != null)
            {
                if (count == 16)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L17.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h17.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I17.Visible = true;
                    L17.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[17][0] != null)
            {
                if (count == 17)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L18.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h18.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I18.Visible = true;
                    L18.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[18][0] != null)
            {
                if (count == 18)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L19.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h19.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I19.Visible = true;
                    L19.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[19][0] != null)
            {
                if (count == 19)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L20.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h20.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I20.Visible = true;
                    L20.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[20][0] != null)
            {
                if (count == 20)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L21.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h21.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I21.Visible = true;
                    L21.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[21][0] != null)
            {
                if (count == 21)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L22.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h22.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I22.Visible = true;
                    L22.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[22][0] != null)
            {
                if (count == 22)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L23.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h23.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I23.Visible = true;
                    L23.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[23][0] != null)
            {
                if (count == 23)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L24.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h24.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I24.Visible = true;
                    L24.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[24][0] != null)
            {
                if (count == 24)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L25.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h25.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I25.Visible = true;
                    L25.Visible = true;

                }

            }
            if (ds.Tables[0].Rows[25][0] != null)
            {
                if (count == 25)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L26.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h26.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I26.Visible = true;
                    L26.Visible = true;

                }
            }
            if (ds.Tables[0].Rows[26][0] != null)
            {
                if (count == 26)
                {
                    s = Convert.ToString(ds.Tables[0].Rows[i][0]);
                    L27.Text = Convert.ToString(ds.Tables[0].Rows[i][1]);
                    h27.Value = Convert.ToString(ds.Tables[0].Rows[i][2]);
                    I27.Visible = true;
                    L27.Visible = true;

                }
            }



            return (s);
        }
        catch (Exception e)
        {
            return (s);
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string s = "select aid from app";
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);
        int total = 0;
        if (ds.Tables[0].Rows.Count > 0)
        {
            total = ds.Tables[0].Rows.Count;
            if (total > 18)
            {
                n2.Visible = true;
                p2.Visible = true;
            }
            else
            {
                p2.Visible = true;
                n2.Visible = false;

            }
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
    }

    protected void n2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string s = "select aid from app";
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);
        int total = 0;
        if (ds.Tables[0].Rows.Count > 0)
        {

            p3.Visible = true;



            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = true;
        }
    }

    protected void p3_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string s = "select aid from app";
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);
        int total = 0;
        if (ds.Tables[0].Rows.Count > 0)
        {

            p3.Visible = true;



            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }
    }

    protected void p2_Click(object sender, EventArgs e)
    {
        SqlDataAdapter da;
        DataSet ds = new DataSet();
        string s = "select aid from app";
        da = new SqlDataAdapter(s, con);
        da.Fill(ds);
        int total = 0;
        if (ds.Tables[0].Rows.Count > 0)
        {





            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

    }

    protected void I1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h1.Value + "");

    }

    protected void L1_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h1.Value + "");
    }

    protected void L2_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h2.Value + "");
    }

    protected void I2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h2.Value + "");
    }

    protected void I3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h3.Value + "");
    }

    protected void L3_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h3.Value + "");
    }

    protected void I4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h4.Value + "");
    }

    protected void L4_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h4.Value + "");
    }

    protected void I5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h5.Value + "");
    }

    protected void L5_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h5.Value + "");
    }

    protected void I6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h6.Value + "");
    }

    protected void L6_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h6.Value + "");
    }

    protected void I7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h7.Value + "");
    }

    protected void L7_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h7.Value + "");
    }

    protected void I8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h8.Value + "");
    }

    protected void L8_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h8.Value + "");
    }

    protected void I9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h9.Value + "");
    }

    protected void L9_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h9.Value + "");
    }

    protected void I10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h10.Value + "");
    }

    protected void L10_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h10.Value + "");
    }

    protected void I11_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h11.Value + "");
    }

    protected void L11_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h11.Value + "");
    }

    protected void I12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h12.Value + "");
    }

    protected void L12_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h12.Value + "");
    }

    protected void I13_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h13.Value + "");
    }

    protected void L13_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h13.Value + "");
    }

    protected void I14_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h14.Value + "");
    }

    protected void L14_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h14.Value + "");
    }

    protected void I15_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h15.Value + "");
    }

    protected void L15_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h15.Value + "");
    }

    protected void I16_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h16.Value + "");
    }

    protected void L16_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h16.Value + "");
    }

    protected void I17_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h17.Value + "");
    }

    protected void L17_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h17.Value + "");
    }

    protected void I18_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h18.Value + "");
    }

    protected void L18_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h18.Value + "");
    }

    protected void I19_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h19.Value + "");
    }

    protected void L19_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h19.Value + "");
    }

    protected void I20_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h20.Value + "");
    }

    protected void L20_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h20.Value + "");
    }

    protected void I21_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h21.Value + "");
    }

    protected void L21_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h21.Value + "");
    }

    protected void I22_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h22.Value + "");
    }

    protected void L22_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h22.Value + "");
    }

    protected void I23_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h23.Value + "");
    }

    protected void L23_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h23.Value + "");
    }

    protected void I24_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h24.Value + "");
    }

    protected void L24_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h24.Value + "");
    }

    protected void I25_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h25.Value + "");
    }

    protected void L25_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h25.Value + "");
    }

    protected void I26_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h26.Value + "");
    }

    protected void L26_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h26.Value + "");
    }

    protected void I27_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h27.Value + "");
    }

    protected void L27_Click(object sender, EventArgs e)
    {
        Response.Redirect("User-Comment.aspx?id=" + h27.Value + "");
    }
}