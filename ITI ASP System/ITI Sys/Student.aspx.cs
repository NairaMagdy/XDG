using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Student : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["StudentData"] != null)
        {
            ds = (DataSet)Session["StudentData"];
            int Dept_No = int.Parse(ds.Tables[0].Rows[0][5].ToString());
           // int LeaderNo = int.Parse(ds.Tables[0].Rows[0][6].ToString());
            Label2.Text = ds.Tables[0].Rows[0][1].ToString();
            Label3.Text = ds.Tables[0].Rows[0][2].ToString();
            Label4.Text = ds.Tables[0].Rows[0][3].ToString();
            Label5.Text = ds.Tables[0].Rows[0][4].ToString();
            Label6.Text = BL.DeptName(Dept_No);
           // Label7.Text = BL.LeaderName(LeaderNo);
        }
    }
}