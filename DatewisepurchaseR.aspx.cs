using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void CalendarP_from_SelectionChanged(object sender, EventArgs e)
    {
        TextPFORM.Text = CalendarP_from.SelectedDate.ToString();
        CalendarP_from.Visible = false;
        GridView1.Visible = false;
        
    }
    protected void LinkP_from_Click(object sender, EventArgs e)
    {
        CalendarP_from.Visible = true;
        TextBox1.Text = "";
    }
    protected void LinkP_TO_Click(object sender, EventArgs e)
    {
        CalendarP_to.Visible = true;
    }
    protected void CalendarP_to_SelectionChanged(object sender, EventArgs e)
    {
        TextPTO.Text = CalendarP_to.SelectedDate.ToString();
        CalendarP_to.Visible = false;
        GridView1.Visible = true;
        int sum = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            sum += int.Parse(GridView1.Rows[i].Cells[10].Text);
        }
        TextBox1.Text = sum.ToString();
    }
}