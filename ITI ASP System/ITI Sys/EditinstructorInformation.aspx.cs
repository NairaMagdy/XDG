using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    DataSet ds = new DataSet();
    ObjectDataSource obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        ds = (DataSet)Session["InstructorData"];
        TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
        TextBox2.Text = ds.Tables[0].Rows[0][3].ToString();
        TextBox3.Text = ds.Tables[0].Rows[0][4].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        obj = new ObjectDataSource();
        obj.TypeName = "instructor";
        obj.UpdateMethod = "Edit";
        obj.UpdateParameters.Clear();
        int id =int.Parse(ds.Tables[0].Rows[0][0].ToString());
        string name = ds.Tables[0].Rows[0][1].ToString();
        string userName = ds.Tables[0].Rows[0][3].ToString();
        string Password= ds.Tables[0].Rows[0][4].ToString();
        obj.UpdateParameters.Add("id", id.ToString());
        obj.UpdateParameters.Add("ins_name", name);
        obj.UpdateParameters.Add("UserName", userName);
        obj.UpdateParameters.Add("password", Password);
        obj.Update();

        Session["obj"] = obj;

        Response.Redirect("Instructor.aspx");
    }
}