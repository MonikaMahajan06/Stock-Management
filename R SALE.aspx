<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="R SALE.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
            <p class="style5" 
        style="font-weight: 700; font-style: italic; text-decoration: underline; text-align: center">
                &nbsp;SALE REGISTER</p>
    <p class="style5" style="font-weight: 700">
                Item Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="Item_no" 
                    DataValueField="Item_no" AppendDataBoundItems="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem value="-1">select item</asp:ListItem>

                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT DISTINCT [Item_no] FROM [sale]"></asp:SqlDataSource>
    </p>
    <p class="style5" style="font-weight: 700; font-size: x-small">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource7" ForeColor="Black" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged" Visible="False">
                    <Columns>
                        <asp:BoundField DataField="customer_name" HeaderText="customer_name" 
                            SortExpression="customer_name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Contact" HeaderText="Contact" 
                            SortExpression="Contact" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Item_no" HeaderText="Item_no" 
                            SortExpression="Item_no" />
                        <asp:BoundField DataField="Product_name" HeaderText="Product_name" 
                            SortExpression="Product_name" />
                        <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                            SortExpression="Quantity" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Vat" HeaderText="Vat" SortExpression="Vat" />
                        <asp:BoundField DataField="Discount" HeaderText="Discount" 
                            SortExpression="Discount" />
                        <asp:BoundField DataField="Total_amount" HeaderText="Total_amount" 
                            SortExpression="Total_amount" />
                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                    </Columns>
                </asp:GridView>
    </p>
            <p class="style5" style="font-weight: 700; font-size: x-small">
                Total Amount is&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </p>
                <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    
                SelectCommand="SELECT [customer_name], [Address], [Contact], [Email], [Item_no], [Product_name], [Quantity], [Price], [Vat], [Discount], [Total_amount], [Date] FROM [sale] WHERE ([Item_no] = @Item_no)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Item_no" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
        </asp:Content>


