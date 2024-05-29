<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="purchase.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 278px;
            font-size: x-large;
            font-weight: 700;
        }
        .style8
        {
            width: 284px;
        }
        .style9
        {
            width: 262px;
        }
        .style10
        {
            width: 278px;
            font-size: x-large;
            font-weight: 700;
            height: 18px;
        }
        .style11
        {
            height: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p style="font-size: xx-large; color: #000000; font-weight: 700; text-decoration: underline; font-style: italic; text-align: justify;">
        PURCHASE</p>
    <p style="font-size: xx-large; color: #000000; font-weight: 700; text-decoration: underline; font-style: italic">
        &nbsp;Date:&nbsp;&nbsp;<asp:TextBox 
            ID="Textc_date" runat="server" Height="36px" Width="163px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <table class="style6">
        <tr>
            <td class="style10">
                Company Name:</td>
            <td colspan="3" class="style11">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="company" DataTextField="company_name" 
                    DataValueField="company_name" Width="375px" AppendDataBoundItems="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem value="-1">select company</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Contact:</td>
            <td colspan="3">
                <asp:TextBox ID="Textc_contact" runat="server" Height="36px" Width="375px" 
                    AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                E Mail:</td>
            <td colspan="3">
                <asp:TextBox ID="Textc_mail" runat="server" Height="36px" Width="375px" 
                    AutoPostBack="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Item Id:</td>
            <td colspan="3">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="prid" DataTextField="item_id" DataValueField="item_id" 
                    Width="376px">
                   
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Product Name:</td>
            <td colspan="3">
                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" 
                    DataSourceID="prname" DataTextField="item_name" DataValueField="item_name" 
                    Width="374px">

                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Quantity:</td>
            <td colspan="3">
                <asp:TextBox ID="Textc_quantity" runat="server" Height="36px" Width="375px"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Height="34px" Text="SAVE" 
                    Width="156px" onclick="Button1_Click" 
                    style="font-weight: 700; font-size: x-large" />
            </td>
        </tr>
        <tr>
            <td class="style7">
                Price:</td>
            <td colspan="3">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    DataSourceID="price" DataTextField="rate" DataValueField="rate" Height="16px" 
                    Width="376px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Vat:</td>
            <td colspan="3">
                <asp:TextBox ID="Textc_vat" runat="server" Height="36px" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Discount:</td>
            <td colspan="3">
                <asp:TextBox ID="Textc_discount" runat="server" Height="36px" Width="375px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style7">
                Total Amount:</td>
            <td colspan="3">
                <asp:TextBox ID="Textc_amount" runat="server" Height="36px" Width="375px"></asp:TextBox>
                <br />
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
                &nbsp;</td>
            <td colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td class="style9">
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [purchase]" 
                    DeleteCommand="DELETE FROM [purchase] WHERE [sno] = @sno" 
                    InsertCommand="INSERT INTO [purchase] ([company_name], [contact], [e_mail], [item_id], [product_name], [quantity], [price], [vat], [discount], [total_amount], [date]) VALUES (@company_name, @contact, @e_mail, @item_id, @product_name, @quantity, @price, @vat, @discount, @total_amount, @date)" 
                    
                    UpdateCommand="UPDATE [purchase] SET [company_name] = @company_name, [contact] = @contact, [e_mail] = @e_mail, [item_id] = @item_id, [product_name] = @product_name, [quantity] = @quantity, [price] = @price, [vat] = @vat, [discount] = @discount, [total_amount] = @total_amount, [date] = @date WHERE [sno] = @sno">
                    <DeleteParameters>
                        <asp:Parameter Name="sno" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="company_name" Type="String" />
                        <asp:Parameter Name="contact" Type="Decimal" />
                        <asp:Parameter Name="e_mail" Type="String" />
                        <asp:Parameter Name="item_id" Type="String" />
                        <asp:Parameter Name="product_name" Type="String" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="vat" Type="String" />
                        <asp:Parameter Name="discount" Type="String" />
                        <asp:Parameter Name="total_amount" Type="String" />
                        <asp:Parameter DbType="Date" Name="date" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="company_name" Type="String" />
                        <asp:Parameter Name="contact" Type="Decimal" />
                        <asp:Parameter Name="e_mail" Type="String" />
                        <asp:Parameter Name="item_id" Type="String" />
                        <asp:Parameter Name="product_name" Type="String" />
                        <asp:Parameter Name="quantity" Type="Int32" />
                        <asp:Parameter Name="price" Type="Decimal" />
                        <asp:Parameter Name="vat" Type="String" />
                        <asp:Parameter Name="discount" Type="String" />
                        <asp:Parameter Name="total_amount" Type="String" />
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="sno" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource2" 
        ForeColor="Black" DataKeyNames="sno" AutoGenerateDeleteButton="True" 
        AutoGenerateEditButton="True">
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
    <asp:SqlDataSource ID="company" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        SelectCommand="SELECT DISTINCT [company_name] FROM [totalstock]">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="prid" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        
        SelectCommand="SELECT [item_id] FROM [totalstock] WHERE ([company_name] = @company_name)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="company_name" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="prname" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        
        SelectCommand="SELECT [item_name] FROM [totalstock] WHERE (([company_name] = @company_name) AND ([item_id] = @item_id))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="company_name" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="item_id" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="price" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        
        SelectCommand="SELECT [rate] FROM [totalstock] WHERE (([company_name] = @company_name) AND ([item_id] = @item_id) AND ([item_name] = @item_name))">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="company_name" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList2" Name="item_id" 
                PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="DropDownList3" Name="item_name" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <br />
    <br />
</asp:Content>


