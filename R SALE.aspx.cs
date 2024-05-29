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
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        int sum = 0;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            sum += int.Parse(GridView1.Rows[i].Cells[10].Text);
        }
        TextBox1.Text = sum.ToString();
    }
}