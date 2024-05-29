using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    public string u, p;
    protected void Page_Load(object sender, EventArgs e)
    {
        u = "admin";
        p = "admin";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == u && TextBox2.Text == p)
        {
            Response.Redirect("Intro.aspx");
        }
        else
        {
            Response.Write("WRONG PASSWORD OR USERNAME");
        }


    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}