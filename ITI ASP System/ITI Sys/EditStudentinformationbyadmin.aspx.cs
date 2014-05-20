using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EditStudentinformationbyadmin : System.Web.UI.Page
{
    ObjectDataSource obj;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            obj = new ObjectDataSource();
            obj.TypeName = "Student";
            obj.SelectMethod = "SelectAllStudent";
            obj.Select();
            GridView1.DataSource = obj;
            GridView1.DataBind();
            Session.Add("obj", obj);

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {    
        string Leader = TextBox5.Text;
        int n;
        bool isNumeric = int.TryParse(Leader, out n);
        if (isNumeric)
        {
            obj = (ObjectDataSource)Session["obj"];
            obj.TypeName = "Student";
            obj.InsertMethod = "InsertStudent";
            obj.InsertParameters.Clear();
            obj.InsertParameters.Add("F_Name", TextBox1.Text);
            obj.InsertParameters.Add("L_Name", TextBox2.Text);
            obj.InsertParameters.Add("Address", TextBox3.Text);
            obj.InsertParameters.Add("Age", TextBox4.Text);
            obj.InsertParameters.Add("Dept_No", DropDownList1.SelectedValue);
            obj.InsertParameters.Add("Leader", TextBox5.Text);
            obj.InsertParameters.Add("password", TextBox6.Text);
            obj.InsertParameters.Add("UserName", TextBox7.Text);
            obj.Insert();
            TextBox1.Text = TextBox2.Text = TextBox3.Text = TextBox4.Text = TextBox5.Text = TextBox6.Text = TextBox7.Text = "";
            Label1.Text = "student Added Successfully :)";
            Label1.Visible = true;
            GridView1.DataSource = obj;
            GridView1.DataBind();
            Session["obj"] = obj;
        }
        else
        {
            Label1.Text = "Please enter Id of Leader";
            Label1.Visible = true;
        }
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        obj = (ObjectDataSource)Session["obj"];
        obj.UpdateMethod = "UpdateStudent";
        obj.UpdateParameters.Clear();
        Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("EditID");
        TextBox F_name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Edit_F_Name");
        TextBox L_Name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Edit_L_Name");
        TextBox Address = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Edit_Address");
        TextBox Age = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Edit_Age");
        DropDownList Dept = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("Edit_Dept");
        DropDownList Leader = (DropDownList)GridView1.Rows[e.RowIndex].FindControl("Edit_Leader");
        TextBox password = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Edit_Password");
        TextBox UserName = (TextBox)GridView1.Rows[e.RowIndex].FindControl("Edit_UserName");

        obj.UpdateParameters.Add("St_ID", id.Text);
        obj.UpdateParameters.Add("F_Name", F_name.Text);
        obj.UpdateParameters.Add("L_Name", L_Name.Text);
        obj.UpdateParameters.Add("Address", Address.Text);
        obj.UpdateParameters.Add("Age", Age.Text);
        obj.UpdateParameters.Add("Dept_No", Dept.SelectedValue);
        obj.UpdateParameters.Add("Leader", Leader.SelectedValue);
        obj.UpdateParameters.Add("password", password.Text);
        obj.UpdateParameters.Add("UserName", UserName.Text);
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
        obj.DeleteMethod = "DeleteStudent";
        obj.DeleteParameters.Clear();
        Label id = (Label)GridView1.Rows[e.RowIndex].FindControl("ID");
        obj.DeleteParameters.Add("St_ID", id.Text);
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