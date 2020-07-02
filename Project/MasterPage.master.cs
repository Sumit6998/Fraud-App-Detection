using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["type"].ToString() == "admin")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        else if (Session["type"].ToString() == "user")
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }
    }
}
