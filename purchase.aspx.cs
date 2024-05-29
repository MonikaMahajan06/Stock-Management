using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default3 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString2"].ConnectionString);
    public double oqt,uqt,pqt;
    public double tamt, pamt, vt, dis;
    protected void Page_Load(object sender, EventArgs e)
    {
        DateTime D1 = DateTime.Now;
        Textc_date.Text = D1.ToShortDateString();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

       
//*********************************************************************************************************************************        


        SqlCommand com;
        string str1;

        con.Open();

        str1 = "select * from totalstock where item_id='" + DropDownList2.SelectedValue + "'";
        com = new SqlCommand(str1, con);


        SqlDataReader reader = com.ExecuteReader();

        if (reader.Read())
        {
            oqt = Convert.ToDouble(reader["quantity"]);

            reader.Close();

        }
        pqt = Convert.ToDouble(Textc_quantity.Text);
        uqt = oqt + pqt;


        SqlCommand cmd = new SqlCommand("update totalstock set quantity='" + uqt + "' where item_id='" + DropDownList2.SelectedValue + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
//*********************************************************************************************************
        tamt = Convert.ToDouble(Textc_quantity.Text) * Convert.ToDouble(DropDownList4.SelectedValue);
        vt = tamt * 20 / 100;
        dis = tamt * 5 / 100;
        Textc_vat.Text = vt.ToString();
        Textc_discount.Text = dis.ToString();
        pamt = tamt + vt - dis;
        Textc_amount.Text = pamt.ToString();
//*********************************************************************************************************
        SqlDataSource2.InsertParameters["company_name"].DefaultValue = DropDownList1.SelectedValue;
        SqlDataSource2.InsertParameters["contact"].DefaultValue = Textc_contact.Text;
        SqlDataSource2.InsertParameters["e_mail"].DefaultValue = Textc_mail.Text;
        SqlDataSource2.InsertParameters["item_id"].DefaultValue = DropDownList2.SelectedValue;
        SqlDataSource2.InsertParameters["product_name"].DefaultValue = DropDownList3.SelectedValue;
        SqlDataSource2.InsertParameters["quantity"].DefaultValue = Textc_quantity.Text;
        SqlDataSource2.InsertParameters["price"].DefaultValue = DropDownList4.SelectedValue;
        SqlDataSource2.InsertParameters["vat"].DefaultValue = Textc_vat.Text;
        SqlDataSource2.InsertParameters["discount"].DefaultValue = Textc_discount.Text;
        SqlDataSource2.InsertParameters["total_amount"].DefaultValue = Textc_amount.Text;
        SqlDataSource2.InsertParameters["date"].DefaultValue = Textc_date.Text;


        SqlDataSource2.Insert();


        Textc_contact.Text = "";
        Textc_mail.Text = "";


        Textc_quantity.Text = "";

        Textc_vat.Text = "";
        Textc_discount.Text = "";
        Textc_amount.Text = "";


    
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlCommand com;
        string str1;

        con.Open();

        str1 = "select * from company where company_name='" + DropDownList1.SelectedValue + "'";
        com = new SqlCommand(str1, con);


        SqlDataReader reader = com.ExecuteReader();

        if (reader.Read())
        {
            Textc_contact.Text = reader["contact"].ToString();
            Textc_mail.Text = reader["email"].ToString();
          
            reader.Close();
            con.Close();
        }
    }
}