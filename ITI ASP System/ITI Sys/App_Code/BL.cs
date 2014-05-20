using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for BL
/// </summary>
public class BL
{
    static public int Student = 0;
    static public int Instructor = 0;
    static public int wrongpassword = 0;
    static SqlConnection con = new SqlConnection(@"Data Source=.;Initial Catalog=Online Examination;Integrated Security=True");
    static DataSet Ds=new DataSet();
	public BL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static string getCourseName(int corse_id)
    {
        string query = "select C_Name from Course where C_ID=" + corse_id;
        Ds = DataAccessLayer.RunSelect(query);
        string Course = Ds.Tables[0].Rows[0][0].ToString();
        return Course;
    }
    public static int getExam(int corse_id)
    {
        int Exam_ID = 0;
        string query = "select top(1)Exam_Id from Exam where C_ID="+ corse_id+"order by newid()";
        Ds = DataAccessLayer.RunSelect(query);
        //Dr.Read();
        Exam_ID = int.Parse(Ds.Tables[0].Rows[0][0].ToString());
        return Exam_ID;
    }
    public static DataSet GetExamQuestions(int corse_id)
    {
        int Exam_ID = getExam(corse_id);
        string Query = "MCQExam";
        Ds= DataAccessLayer.RunSelectProcedure(Query, new SqlParameter("@Exam_ID", Exam_ID));
        return Ds;

    }

    public static DataSet Login(string UserName,string Password)
    {
        string Query = "Select * from Student where UserName='" + UserName + "' and Password='" + Password+"'";
        Ds = DataAccessLayer.RunSelect(Query);

        if (!(Ds.Tables[0].Rows.Count > 0))
        {
            Query = "Select * from Instuctor where UserName='" + UserName + "' and Password='" + Password + "'";
            Ds = DataAccessLayer.RunSelect(Query);
            if(!(Ds.Tables[0].Rows.Count > 0))
            {
                wrongpassword=1;
            }
            else
            {
                    Instructor = 1;
            }
        }
        
        else
        {
            Student = 1;
        }

        return Ds;
    }

    public static int GenerateExam(string Course_Name, int NOtf, int NOmcQ)
    {

        int AffectedRows = DataAccessLayer.RunDml("GenerateExam", new SqlParameter("@Course_Name", Course_Name), new SqlParameter("@NOtf", NOtf), new SqlParameter("@NOmcQ", NOmcQ));

        return AffectedRows;
    }
    public static string DeptName(int deptNo)//student Profile
    {
        string query = "select Dept_Name from Departement where Dept_No=" + deptNo;
        Ds = DataAccessLayer.RunSelect(query);
        string dept = Ds.Tables[0].Rows[0][0].ToString();
        return dept;
    }


    public static string LeaderName(int leaderNo)//Student Profile
    {
        string query = "select St_Fname+' '+St_Lname from Student where St_ID=" + leaderNo;
        Ds = DataAccessLayer.RunSelect(query);
        string Leader = Ds.Tables[0].Rows[0][0].ToString();
        return Leader;
    }

    public static int InsertStudentAnswers(int St_ID, int ExamId, string ans1, string ans2, string ans3, string ans4, string ans5, string ans6, string ans7, string ans8, string ans9, string ans10)
    {
        string Query = "StudentAnswers";
        int AffectedRows = DataAccessLayer.RunDml(Query, new SqlParameter("@St_ID", St_ID), new SqlParameter("@ExamId", ExamId), new SqlParameter("@ans1", ans1), new SqlParameter("@ans2", ans2), new SqlParameter("@ans3", ans3), new SqlParameter("@ans4", ans4), new SqlParameter("@ans5", ans5), new SqlParameter("@ans6", ans6), new SqlParameter("@ans7", ans7), new SqlParameter("@ans8", ans8), new SqlParameter("@ans9", ans9), new SqlParameter("@ans10", ans10));
        return AffectedRows;
    }
    public static string GetSupervisor(int super_id)
    {
        string query = "select Ins_Name from Instuctor where Ins_ID="+super_id;
        Ds = DataAccessLayer.RunSelect(query);
        string supervisor = Ds.Tables[0].Rows[0][0].ToString();
        return supervisor;
    }

    public static int InsertGrad(int ST_ID, int Exam_ID,int grade)
    {
        string Query = "StuGrade";
        int AffectedRows = DataAccessLayer.RunDml(Query, new SqlParameter("@St_ID", ST_ID), new SqlParameter("@Exam_ID", Exam_ID), new SqlParameter("@grade", grade));
        return AffectedRows;
    }
}