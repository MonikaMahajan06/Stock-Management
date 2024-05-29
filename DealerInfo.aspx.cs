using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (con.State == ConnectionState.Closed)
        {
            con.Open();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into MASTER_DEALER(D_ID,D_NAME,D_ADDRESS,HOME_NO,STREET_NO,AREA,LANKMARK,CITY,STATE,PINCODE,M_NO,LAND)VALUES ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "')", con);
        
        cmd.ExecuteNonQuery();
        fillrv();
    }
    public void fillrv()
    {
        SqlCommand cmdd = new SqlCommand("select * from MASTER_DEALER", con);
       SqlDataAdapter adpp = new SqlDataAdapter(cmdd);
        DataSet dss = new DataSet();
        adpp.Fill(dss);
        if (dss.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = dss;
            GridView1.DataBind();


        }
        else
        {
            dss.Tables[0].Rows.Add(dss.Tables[0].NewRow());
            GridView1.DataSource = dss;
            GridView1.DataBind();
            int columncount = GridView1.Rows[0].Cells.Count;
            GridView1.Rows[0].Cells.Clear();
            GridView1.Rows[0].Cells.Add(new TableCell());
            GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
            GridView1.Rows[0].Cells[0].Text = "No Records Found";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}