using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Instructor : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
       

            ds = (DataSet)Session["InstructorData"];
            int supervisor = int.Parse(ds.Tables[0].Rows[0][2].ToString());
            string super_Name = BL.GetSupervisor(supervisor);
            Label2.Text = ds.Tables[0].Rows[0][1].ToString();
            Label3.Text = super_Name;
            Label4.Text = ds.Tables[0].Rows[0][5].ToString();
            Label5.Text = ds.Tables[0].Rows[0][3].ToString();
            Label6.Text = ds.Tables[0].Rows[0][4].ToString();
        }
        
    }

