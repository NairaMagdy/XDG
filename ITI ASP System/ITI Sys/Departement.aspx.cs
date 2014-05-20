using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Departementt : System.Web.UI.Page
{
    ObjectDataSource obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            obj = new ObjectDataSource();
            obj.TypeName = "DepartemantBL";
            obj.SelectMethod = "SelectAllDept";
            obj.Select();
            GridView1.DataSource = obj;
            GridView1.DataBind();
            Session.Add("obj", obj);

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            obj = (ObjectDataSource)Session["obj"];
            obj.TypeName = "DepartemantBL";
            obj.InsertMethod = "InsertDept";
            obj.InsertParameters.Clear();
            obj.InsertParameters.Add("Dept_Name", TextBox1.Text);
            obj.Insert();
            TextBox1.Text= "";
            Label1.Text = "Departement Added Successfully :)";
            Label1.Visible = true;
            GridView1.DataSource = obj;
            GridView1.DataBind();
            Session["obj"] = obj;
     
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        obj = (ObjectDataSource)Session["obj"];
        obj.UpdateMethod = "UpdateDepartement";
        obj.UpdateParameters.Clear();
        Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("ID_Lbl2");
        TextBox name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Name_txtbox");


        obj.UpdateParameters.Add("Dept_No", id.Text);
        obj.UpdateParameters.Add("Dept_Name", name.Text);
        obj.Update();

        GridView1.EditIndex = -1;
        GridView1.DataSource = obj;
        GridView1.DataBind();
        Session["obj"] = obj;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        obj = (ObjectDataSource)Session["obj"];
        GridView1.EditIndex = e.NewEditIndex;
        GridView1.DataSource = obj;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        obj = (ObjectDataSource)Session["obj"];
        obj.DeleteMethod = "DeleteDept";
        obj.DeleteParameters.Clear();
        Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("ID_Lbl");
        obj.DeleteParameters.Add("Dept_No", id.Text);
        obj.Delete();
        GridView1.DataSource = obj;
        GridView1.DataBind();
        Session["obj"] = obj;
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        obj = (ObjectDataSource)Session["obj"];
        GridView1.EditIndex = -1;
        GridView1.DataSource = obj;
        GridView1.DataBind();
    }
}