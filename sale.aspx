<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="sale.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 267px;
            font-size: x-large;
            font-weight: 700;
        }
        .style8
        {
            width: 240px;
        }
        .style9
        {
            width: 337px;
        }
        .style10
        {
            text-decoration: underline;
        }
        .style11
        {
            width: 267px;
            font-size: x-large;
            font-weight: 700;
            height: 36px;
        }
        .style12
        {
            height: 36px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <p class="style5">
                <strong style="font-size: xx-large">&nbsp;</strong><span style="font-size: xx-large" class="style10"><strong><em>SALE</em></strong></span><strong style="font-size: xx-large">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong></p>
            <p class="style5">
                &nbsp; <strong style="font-size: xx-large">Date:
                <asp:TextBox ID="Textsdate" runat="server" Height="31px" Width="249px"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong></p>
            <table class="style6">
                <tr>
                    <td class="style7">
                        Customer name:</td>
                    <td colspan="3">
                        <asp:TextBox ID="Textsname" runat="server" Height="31px" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Address:</td>
                    <td colspan="3">
                        <asp:TextBox ID="Textsaddress" runat="server" Height="31px" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Contact:</td>
                    <td colspan="3">
                        <asp:TextBox ID="Textscontact" runat="server" Height="31px" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Email:</td>
                    <td colspan="3">
                        <asp:TextBox ID="Textsmail" runat="server" Height="31px" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Item ID:</td>
                    <td colspan="3">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="250px" 
                            AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="prid" 
                            DataTextField="item_id" DataValueField="item_id">
                        <asp:ListItem value="-1">select item</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Product name:</td>
                    <td colspan="3">
                        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="250px" 
                            AutoPostBack="True" DataSourceID="prname" DataTextField="item_name" 
                            DataValueField="item_name">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Quantity:</td>
                    <td colspan="3">
                        <asp:TextBox ID="Textsquantity" runat="server" Height="31px" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Price:</td>
                    <td colspan="3">
                        <asp:DropDownList ID="DropDownList3" runat="server" Height="16px" Width="250px" 
                            AutoPostBack="True" DataSourceID="price" DataTextField="rate" 
                            DataValueField="rate">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Vat:</td>
                    <td colspan="3">
                        <asp:TextBox ID="Textsvat" runat="server" Height="31px" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Discount:</td>
                    <td colspan="3">
                        <asp:TextBox ID="Textsdiscount" runat="server" Height="31px" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        Total amount:</td>
                    <td colspan="3">
                        <asp:TextBox ID="Textsamount" runat="server" Height="31px" Width="249px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        </td>
                    <td colspan="3" class="style12">
                        </td>
                </tr>
                <tr>
                    <td class="style7">
                        &nbsp;</td>
                    <td colspan="3">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:Button ID="Button1" runat="server" Height="34px" Text="SAVE" 
                            Width="150px" onclick="Button1_Click" 
                            style="font-size: x-large; font-weight: 700" />
                    </td>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                            SelectCommand="SELECT * FROM [sale]" 
                            DeleteCommand="DELETE FROM [sale] WHERE [sno] = @sno" 
                            InsertCommand="INSERT INTO [sale] ([customer_name], [Address], [Contact], [Email], [Item_no], [Product_name], [Quantity], [Price], [Vat], [Discount], [Total_amount], [Date]) VALUES (@customer_name, @Address, @Contact, @Email, @Item_no, @Product_name, @Quantity, @Price, @Vat, @Discount, @Total_amount, @Date)" 
                            
                            UpdateCommand="UPDATE [sale] SET [customer_name] = @customer_name, [Address] = @Address, [Contact] = @Contact, [Email] = @Email, [Item_no] = @Item_no, [Product_name] = @Product_name, [Quantity] = @Quantity, [Price] = @Price, [Vat] = @Vat, [Discount] = @Discount, [Total_amount] = @Total_amount, [Date] = @Date WHERE [sno] = @sno">
                            <DeleteParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="sno" 
                                    PropertyName="SelectedValue" Type="Decimal" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="customer_name" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="Contact" Type="Decimal" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="Item_no" Type="String" />
                                <asp:Parameter Name="Product_name" Type="String" />
                                <asp:Parameter Name="Quantity" Type="Int32" />
                                <asp:Parameter Name="Price" Type="Decimal" />
                                <asp:Parameter Name="Vat" Type="String" />
                                <asp:Parameter Name="Discount" Type="String" />
                                <asp:Parameter Name="Total_amount" Type="String" />
                                <asp:Parameter DbType="Date" Name="Date" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="customer_name" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" Name="Address" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" Name="Contact" 
                                    PropertyName="SelectedValue" Type="Decimal" />
                                <asp:ControlParameter ControlID="GridView1" Name="Email" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" Name="Item_no" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" Name="Product_name" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" Name="Quantity" 
                                    PropertyName="SelectedValue" Type="Int32" />
                                <asp:ControlParameter ControlID="GridView1" Name="Price" 
                                    PropertyName="SelectedValue" Type="Decimal" />
                                <asp:ControlParameter ControlID="GridView1" Name="Vat" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" Name="Discount" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" Name="Total_amount" 
                                    PropertyName="SelectedValue" Type="String" />
                                <asp:ControlParameter ControlID="GridView1" DbType="Date" Name="Date" 
                                    PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="GridView1" Name="sno" 
                                    PropertyName="SelectedValue" Type="Decimal" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                </tr>
    </table>
            <br />
            <asp:GridView ID="GridView1" runat="server" 
                AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource3" ForeColor="Black" DataKeyNames="sno" 
                AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="sno" 
                        SortExpression="sno" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="customer_name" HeaderText="customer_name" 
                        SortExpression="customer_name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" 
                        SortExpression="Contact" />
                    <asp:BoundField DataField="Email" HeaderText="Email" 
                        SortExpression="Email" />
                    <asp:BoundField DataField="Item_no" HeaderText="Item_no" 
                        SortExpression="Item_no" />
                    <asp:BoundField DataField="Product_name" HeaderText="Product_name" 
                        SortExpression="Product_name" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                        SortExpression="Quantity" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="Vat" HeaderText="Vat" 
                        SortExpression="Vat" />
                    <asp:BoundField DataField="Discount" HeaderText="Discount" 
                        SortExpression="Discount" />
                    <asp:BoundField DataField="Total_amount" HeaderText="Total_amount" 
                        SortExpression="Total_amount" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="prid" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                SelectCommand="SELECT [company_name], [item_id] FROM [totalstock]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="prname" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                
                SelectCommand="SELECT [item_name] FROM [totalstock] WHERE ([item_id] = @item_id)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="item_id" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="price" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                
                SelectCommand="SELECT [rate] FROM [totalstock] WHERE (([item_id] = @item_id) AND ([item_name] = @item_name))">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="item_id" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="item_name" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <br />
</asp:Content>


