using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class rcompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Calendar1.Visible = true;
        TextBox3.Text = "";
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        Calendar2.Visible = false;
        TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
        int sum = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            sum += int.Parse(GridView1.Rows[i].Cells[10].Text);
        }
        TextBox3.Text = sum.ToString();
    }
}