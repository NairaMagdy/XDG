using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DataAccessLayer
/// </summary>
public class DataAccessLayer
{
    static SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=Online Examination;Integrated Security=True");
    static SqlCommand cmd;
    static SqlDataReader DR;

    public static DataSet RunSelect(string selectQur)
    {
        cmd = new SqlCommand();
        DataSet ds = new DataSet();
        cmd.CommandText = selectQur;
        cmd.Connection = conn;
        SqlDataAdapter adapt = new SqlDataAdapter(cmd);
        adapt.SelectCommand = cmd;
        adapt.Fill(ds);
        return ds; 
    }
    public static int RunDml(string Stored, params dynamic[] parameters)
    {
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = Stored;
        cmd.Connection = conn;
        for (int i = 0; i < parameters.Length; i++)
        {
            cmd.Parameters.Add(parameters[i]);
        }
        conn.Open();
        int AffectedRows = cmd.ExecuteNonQuery();
        conn.Close();

        return AffectedRows;
    }
    public static DataSet RunSelectProcedure(string procedure, params dynamic[] paramters)
    {
        cmd = new SqlCommand();
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = procedure;
        cmd.Connection = conn;
        for (int i = 0; i < paramters.Length; i++)
        {
            cmd.Parameters.Add(paramters[i]);
        }
        DataSet ds=new DataSet();
        SqlDataAdapter adapt = new SqlDataAdapter(cmd);
        adapt.SelectCommand = cmd;
        adapt.Fill(ds);
        return ds;         
    }


    public static SqlDataReader ConSelect(string selectQur)
    {
        cmd = new SqlCommand();
        cmd.CommandText = selectQur;
        cmd.Connection = conn;
        conn.Open();
        DR=cmd.ExecuteReader();
        DR.Read();
        conn.Close();

        return DR;
    }


    public static DataTable Select(string selectQur)
    {
        DataTable dt = new DataTable();
        cmd = new SqlCommand();
        cmd.CommandText = selectQur;
        cmd.Connection = conn;
        conn.Open();
        DR = cmd.ExecuteReader();
        DR.Read();
        dt.Load(DR);
        conn.Close();

        return dt;
    }
	public DataAccessLayer()
	{
		//
		// TODO: Add constructor logic here
		//
	}
}