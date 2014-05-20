using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class LogIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
         DataSet ds = new DataSet();
         if (TextBox1.Text == "Admin" && TextBox2.Text == "Admin")
         {
             Session["User"]= TextBox1.Text;
             Response.Redirect("Admin.aspx");
         }
         else
         {
             ds = BL.Login(TextBox1.Text, TextBox2.Text);
             if (BL.Student == 1)
             {
                 Session["User"] = TextBox1.Text;
                 Session["StudentData"] = ds;
                 Response.Redirect("Student.aspx");
             }
             else
             {
                 if (BL.Instructor == 1)
                 {
                     Session["User"] = TextBox1.Text;
                     Session["InstructorData"] = ds;
                     Response.Redirect("Instructor.aspx");
                 }
                 else
                 {
                     if (BL.wrongpassword == 1)
                     {
                         Label3.Text = "Enter Correct UserName And Password";
                         Label3.Visible = true;
                     }
                 }
             }
         }
    }
}