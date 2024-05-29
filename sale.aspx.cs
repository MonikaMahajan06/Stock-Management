using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    public double oqt, uqt,pqt;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    public double tamt, pamt,vt,dis;
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime D1 = DateTime.Now;
        Textsdate.Text = D1.ToShortDateString();
        

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {



        SqlCommand com;
        string str1;

        con.Open();

        str1 = "select * from totalstock where item_id='" + DropDownList1.SelectedValue + "'";
        com = new SqlCommand(str1, con);


        SqlDataReader reader = com.ExecuteReader();

        if (reader.Read())
        {
            oqt = Convert.ToDouble(reader["quantity"]);
           
            reader.Close();
           
        }
        pqt = Convert.ToDouble(Textsquantity.Text);
        uqt = oqt - pqt;


        SqlCommand cmd = new SqlCommand("update totalstock set quantity='" + uqt + "' where item_id='" + DropDownList1.SelectedValue + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
//******************************************************************************************************************************************************
        tamt = Convert.ToDouble(Textsquantity.Text) * Convert.ToDouble(DropDownList3.SelectedValue);
        vt = tamt * 20 / 100;
        dis = tamt * 5 / 100;
        Textsvat.Text = vt.ToString();
        Textsdiscount.Text = dis.ToString();
        pamt = tamt + vt - dis;
        Textsamount.Text = pamt.ToString();
//***********************************************************************************************************************************************************
     SqlDataSource3.InsertParameters["customer_name"].DefaultValue= Textsname.Text;
        SqlDataSource3.InsertParameters["Address"].DefaultValue=Textsaddress.Text;
       SqlDataSource3.InsertParameters["Contact"].DefaultValue=Textscontact.Text;
       SqlDataSource3.InsertParameters["Email"].DefaultValue=Textsmail.Text;
       SqlDataSource3.InsertParameters["Item_no"].DefaultValue= DropDownList1.SelectedValue;
    SqlDataSource3.InsertParameters["Product_name"].DefaultValue= DropDownList2.SelectedValue;
       SqlDataSource3.InsertParameters["Quantity"].DefaultValue=Textsquantity.Text;
        SqlDataSource3.InsertParameters["Price"].DefaultValue=DropDownList3.SelectedValue;
        SqlDataSource3.InsertParameters["Vat"].DefaultValue=Textsvat.Text;
       SqlDataSource3.InsertParameters["Discount"].DefaultValue=Textsdiscount.Text;
       SqlDataSource3.InsertParameters["Total_amount"].DefaultValue=Textsamount.Text;
        SqlDataSource3.InsertParameters["Date"].DefaultValue=Textsdate.Text;
     

        SqlDataSource3.Insert();


        Textsname.Text = "";
        Textsaddress.Text = "";
        Textscontact.Text = "";
        Textsmail.Text = "";
        
        
        Textsquantity.Text = "";
      
        Textsvat.Text = "";
        Textsdiscount.Text = "";
        Textsamount.Text = "";
        


    }
  
  
}