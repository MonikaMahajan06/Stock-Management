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
        DateTime D1 = DateTime.Now;
        TextTdate.Text = D1.ToShortDateString();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataSource5.InsertParameters["date"].DefaultValue = TextTdate.Text;
        
        SqlDataSource5.InsertParameters["company_name"].DefaultValue = DropDownList1.SelectedValue;
        SqlDataSource5.InsertParameters["item_name"].DefaultValue = TextTitem.Text;
        SqlDataSource5.InsertParameters["item_id"].DefaultValue = TextTid.Text;
        SqlDataSource5.InsertParameters["model"].DefaultValue = TextTmodel.Text;
        SqlDataSource5.InsertParameters["size"].DefaultValue = TextTsize.Text;
        SqlDataSource5.InsertParameters["quantity"].DefaultValue = TextTquantity.Text;
        SqlDataSource5.InsertParameters["warranty"].DefaultValue = TextTwarranty.Text;
        SqlDataSource5.InsertParameters["rate"].DefaultValue = TextTrate.Text;
       

        SqlDataSource5.Insert();
       
       TextTitem.Text="";
      TextTid.Text="";
        TextTmodel.Text="";
         TextTsize.Text="";
         TextTquantity.Text="";
         TextTwarranty.Text="";
        TextTrate.Text="";

      
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}