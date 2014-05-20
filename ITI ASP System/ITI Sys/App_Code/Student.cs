using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Student
/// </summary>
public class Student
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAllStudent()
    {
        string str = "select * from Student";
        ds = DataAccessLayer.RunSelect(str);
        return ds;
    }
    public static int InsertStudent(string F_Name, string L_Name, string Address, int Age,int Dept_No,int Leader,string password,string UserName)
    {

        int AffectedRows = DataAccessLayer.RunDml("insert_Student", new SqlParameter("@stu_fname", F_Name), new SqlParameter("@stu_lname", L_Name), new SqlParameter("@Add", Address), new SqlParameter("@age", Age), new SqlParameter("@dept", Dept_No), new SqlParameter("@Leader", Leader), new SqlParameter("@password", password), new SqlParameter("@UserName", UserName));

        return AffectedRows;
    }
    public static int DeleteStudent(int ST_ID)
    {
        int AffectedRows = DataAccessLayer.RunDml("delete_student", new SqlParameter("@stu_id", ST_ID));
        return AffectedRows;
    }
    public static int UpdateStudent(int St_ID, string F_Name, string L_Name, string Address, int Age, int Dept_No, int Leader, string password, string UserName)
    {
        int AffectedRows = DataAccessLayer.RunDml("update_student", new SqlParameter("@stu_id", St_ID), new SqlParameter("@stu_fname", F_Name), new SqlParameter("@stu_lname", L_Name), new SqlParameter("@Add", Address), new SqlParameter("@age", Age), new SqlParameter("@dept", Dept_No), new SqlParameter("@Leader", Leader), new SqlParameter("@password", password), new SqlParameter("@UserName", UserName));
        return AffectedRows;
    }

}