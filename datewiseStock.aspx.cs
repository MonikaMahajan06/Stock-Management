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
  
    protected void CalendarS_from_SelectionChanged(object sender, EventArgs e)
    {
        TextS_from.Text = CalendarS_from.SelectedDate.ToString();
        CalendarS_from.Visible = false;
        GridView1.Visible = false;
    }
    protected void LinkS_from_Click(object sender, EventArgs e)
    {
        CalendarS_from.Visible = true;
        TextBox1.Text = "";
    }
    protected void CalendarS_to_SelectionChanged(object sender, EventArgs e)
    {
        TextS_to.Text = CalendarS_to.SelectedDate.ToString();
        CalendarS_to.Visible = false;
        GridView1.Visible = true;
        int sum = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            sum += int.Parse(GridView1.Rows[i].Cells[5].Text);
        }
        TextBox1.Text = sum.ToString();
    }
    protected void LinkS_to_Click(object sender, EventArgs e)
    {
        CalendarS_to.Visible = true;
    }
}