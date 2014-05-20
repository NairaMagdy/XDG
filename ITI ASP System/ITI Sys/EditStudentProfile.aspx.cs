using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class EditStudentProfile : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        ds = (DataSet)Session["StudentData"];
        TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
        TextBox2.Text = ds.Tables[0].Rows[0][2].ToString();
        TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
        TextBox4.Text = ds.Tables[0].Rows[0][4].ToString();
        TextBox5.Text = ds.Tables[0].Rows[0][7].ToString();
        TextBox6.Text = ds.Tables[0].Rows[0][8].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string st;
        int aff;
        st = "Edit_SProfile";
        aff = DataAccessLayer.RunDml(st, new SqlParameter("@id", ds.Tables[0].Rows[0][0].ToString()), new SqlParameter("@fname", TextBox1.Text), new SqlParameter("@lname", TextBox2.Text), new SqlParameter("@Add", TextBox3.Text), new SqlParameter("@Age", TextBox4.Text), new SqlParameter("@username", TextBox5.Text), new SqlParameter("@password", TextBox6.Text));
        if (aff>0)
        {
            Response.Redirect("Student.aspx");
        }
    }
}