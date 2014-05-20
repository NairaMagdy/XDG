using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for CourseBL
/// </summary>
public class CourseBL
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAllCourses()
    {
        string str = "select * from Course";
        ds = DataAccessLayer.RunSelect(str);
        return ds;
    }
    public static int InsertCourse(string C_Name)
    {

        int AffectedRows = DataAccessLayer.RunDml("insert_course", new SqlParameter("@Crs_Name", C_Name));

        return AffectedRows;
    }
    public static int DeleteCourse(int C_ID)
    {
        int AffectedRows = DataAccessLayer.RunDml("delete_course", new SqlParameter(@"Crs_ID", C_ID));
        return AffectedRows;
    }
    public static int UpdateCourse(int C_ID, string C_Name)
    {
        int AffectedRows = DataAccessLayer.RunDml("update_course", new SqlParameter(@"Crs_ID", C_ID), new SqlParameter(@"Crs_Name", C_Name));
        return AffectedRows;
    }
}