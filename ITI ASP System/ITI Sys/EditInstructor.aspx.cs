using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditInstructor : System.Web.UI.Page
{
    ObjectDataSource obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            obj = new ObjectDataSource();
            obj.TypeName = "instructor";
            obj.SelectMethod = "SelectAllins";
            obj.Select();
            GridView1.DataSource = obj;
            GridView1.DataBind();
            Session.Add("obj", obj);

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         string SuperVisor = TextBox2.Text,Salary=TextBox3.Text;
        int n;
        bool isNumeric = int.TryParse(SuperVisor, out n);
        bool isNumericc = int.TryParse(Salary, out n);
        if (isNumeric && isNumericc)
        {
            obj = (ObjectDataSource)Session["obj"];
            obj.InsertMethod = "insert";
            obj.InsertParameters.Clear();
            obj.InsertParameters.Add("ins_name", TextBox1.Text);
            obj.InsertParameters.Add("Supins", TextBox2.Text);
            obj.InsertParameters.Add("salary", TextBox3.Text);
            obj.InsertParameters.Add("password", TextBox4.Text);
            obj.Insert();
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            Label1.Text = "instructor Added Successfully :)";
            Label1.Visible = true;
            GridView1.DataSource = obj;
            GridView1.DataBind();
            Session["obj"] = obj;
        }
        else
        {
            Label1.Text = "Salary and SuperVisor Must be Numbers";
            Label1.Visible = true;
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        obj = (ObjectDataSource)Session["obj"];
        obj.UpdateMethod = "update";
        obj.UpdateParameters.Clear();
        Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("Edit_ID");
        TextBox name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Edit_Name");
        DropDownList Super = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("Edit_Super");
        TextBox Salary = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Edit_Salary");
        TextBox Password = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Edit_Password");
        obj.UpdateParameters.Add("id", id.Text);
        obj.UpdateParameters.Add("ins_name", name.Text);
        obj.UpdateParameters.Add("Supins", Super.Text);
        obj.UpdateParameters.Add("salary", Salary.Text);
        obj.UpdateParameters.Add("password", Password.Text);
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
        obj.DeleteMethod = "Del";
        obj.DeleteParameters.Clear();
        Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("ID");
        obj.DeleteParameters.Add("ID", id.Text);
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