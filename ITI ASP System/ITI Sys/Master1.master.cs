using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class Master1 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            LinkButton1.Visible = false;
        }
       try
       {
            if (Session["User"] != null)
            {
                LinkButton1.Visible = true;
                Label1.Text = Session["User"].ToString();
                Label1.Visible = true;
            }
       }
       catch(Exception ee)
       {
           Response.Redirect("Login.aspx");
       }
        
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Remove("User");
        Response.Redirect("Login.aspx");
        LinkButton1.Visible =false;
    }
}
