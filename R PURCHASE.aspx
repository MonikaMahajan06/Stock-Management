<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="R PURCHASE.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <p class="style5" 
        style="font-size: xx-large; font-weight: 700; font-style: italic; text-decoration: underline; text-align: center">
                PURCHASE REGISTER</p>
    <p class="style5" style="font-size: xx-large; font-weight: 700">
                Company Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="company_name" 
                    DataValueField="company_name" AppendDataBoundItems="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem value="-1">select company</asp:ListItem>

                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT DISTINCT [company_name] FROM [purchase]">
                </asp:SqlDataSource>
    </p>
            <p class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource8" ForeColor="Black" style="font-size: small" 
                    DataKeyNames="sno" 
                    Visible="False">
                    <Columns>
                        <asp:BoundField DataField="sno" HeaderText="sno" 
                            SortExpression="sno" InsertVisible="False" ReadOnly="True" />
                        <asp:BoundField DataField="company_name" HeaderText="company_name" 
                            SortExpression="company_name" />
                        <asp:BoundField DataField="contact" HeaderText="contact" 
                            SortExpression="contact" />
                        <asp:BoundField DataField="e_mail" HeaderText="e_mail" 
                            SortExpression="e_mail" />
                        <asp:BoundField DataField="item_id" HeaderText="item_id" 
                            SortExpression="item_id" />
                        <asp:BoundField DataField="product_name" HeaderText="product_name" 
                            SortExpression="product_name" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" 
                            SortExpression="quantity" />
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                        <asp:BoundField DataField="vat" HeaderText="vat" 
                            SortExpression="vat" />
                        <asp:BoundField DataField="discount" HeaderText="discount" 
                            SortExpression="discount" />
                        <asp:BoundField DataField="total_amount" HeaderText="total_amount" 
                            SortExpression="total_amount" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    </Columns>
                </asp:GridView>
    </p>
            <p class="style5">
                Total Amount is&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
    </p>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    
                
                SelectCommand="SELECT * FROM [purchase] WHERE ([company_name] = @company_name)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="company_name" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
        </asp:Content>


