using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    
    SqlConnection Conns = new SqlConnection(Conn.con);
    protected void Page_Load(object sender, EventArgs e)
    {
        Conns.Open();
        ShowD();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into Student_reg values (@fname,@lname,@age)",Conns);
        cmd.Parameters.AddWithValue("@fname",txtfname.Text);
        cmd.Parameters.AddWithValue("@lname", txtlname.Text);
        cmd.Parameters.AddWithValue("@age", txtage.Text);
        int a = cmd.ExecuteNonQuery();
        if(a>0)
        {
            Response.Write("Record Inserted");
            ShowD();
        }

      
    }
    public void ShowD()
    {
        SqlCommand cmd = new SqlCommand("select * from Student_reg", Conns);
        SqlDataAdapter dt = new SqlDataAdapter(cmd);
        DataTable da = new DataTable();
        dt.Fill(da);
        GridView1.DataSource =da ;
        GridView1.DataBind();
        
    }
}