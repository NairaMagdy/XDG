using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Summary description for DepartemantBL
/// </summary>
public class DepartemantBL
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAllDept()
    {
        string str = "select * from Departement";
        ds = DataAccessLayer.RunSelect(str);
        return ds;
    }

    public static int InsertDept(string Dept_Name)//params string[] Parameters)
    {
  
       int AffectedRows = DataAccessLayer.RunDml("dept_proc",new SqlParameter("@Dept_Name",Dept_Name));

        return AffectedRows;
    }
    public static int DeleteDept(int Dept_No)//params string[] Parameters)
    {
        int AffectedRows = DataAccessLayer.RunDml("dept3_proc", new SqlParameter(@"Dept_No", Dept_No));
        return AffectedRows;
    }
    public static int UpdateDepartement(int Dept_No, string Dept_Name)
    {
        int AffectedRows = DataAccessLayer.RunDml("dept2_proc", new SqlParameter(@"Dept_No", Dept_No), new SqlParameter(@"Dept_Name", Dept_Name));
        return AffectedRows;
    }
}