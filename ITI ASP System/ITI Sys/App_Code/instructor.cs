using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for instructor
/// </summary>
public class instructor
{
    static DataSet ds = new DataSet();
    public static DataSet SelectAllins()
    {
        string str = "select * from Instuctor";
        ds = DataAccessLayer.RunSelect(str);
        return ds;
    }


    public static int insert(string ins_name, int Supins,int salary,string password)
    {
        string st;
        int aff;
        st = "insert_ins";
        aff = DataAccessLayer.RunDml(st, new SqlParameter("@ins_name", ins_name), new SqlParameter("@Supins", Supins), new SqlParameter("@salary", salary), new SqlParameter("@password", password));
        return aff;

    }
    public static int Del(int ID)
    {
        int aff;
        string st;
        st = "delete_ins";
        aff = DataAccessLayer.RunDml(st, new SqlParameter("@ins_id", ID));
        return aff;

    }
    public static int update(int id, string ins_name, int Supins, int salary, string password)
    {
        string st;
        int aff;
        st = "update_ins";
        aff = DataAccessLayer.RunDml(st, new SqlParameter("@id", id), new SqlParameter("@ins_name", ins_name), new SqlParameter("@Supins", Supins), new SqlParameter("@salary", salary), new SqlParameter("@password", password));
        return aff;

    }

    public static int Edit(int id, string ins_name,string UserName, string password)
    {
        string st;
        int aff;
        st = "Edit_Profile";
        aff = DataAccessLayer.RunDml(st, new SqlParameter("@id", id), new SqlParameter("@name", ins_name), new SqlParameter("@username", UserName), new SqlParameter("@password", password));
        return aff;

    }
}