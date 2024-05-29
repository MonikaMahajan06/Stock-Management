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
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void CAL_FROM(object sender, EventArgs e)
    {
        Textfrom.Text = Cal_FROM.SelectedDate.ToString();
        Cal_FROM.Visible = false;
        grid_date_r.Visible = false;
    }
    protected void CAL_T(object sender, EventArgs e)
    {
        Textto.Text = Cal_TO.SelectedDate.ToString();
        Cal_TO.Visible = false;
        grid_date_r.Visible = true;
        int sum = 0;
        for (int i = 0; i < grid_date_r.Rows.Count; i++)
        {
            sum += int.Parse(grid_date_r.Rows[i].Cells[11].Text);
        }
        TextBox1.Text = sum.ToString();
    }
    protected void Link_from_Click(object sender, EventArgs e)
    {
        Cal_FROM.Visible = true;
        TextBox1.Text = "";
       

    }
    protected void LINK_TO_Click(object sender, EventArgs e)
    {
        Cal_TO.Visible = true;
        
    }
    protected void cal_false(object sender, EventArgs e)
    {
        Cal_FROM.Visible = false;
    }
}