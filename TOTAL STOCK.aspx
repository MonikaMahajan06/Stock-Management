<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="TOTAL STOCK.aspx.cs" Inherits="_Default" %>

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
        width: 249px;
    }
    .style9
    {
        width: 228px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
            <p class="style5" style="font-weight: 700">
                STOCK:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                DATE:<asp:TextBox ID="TextTdate" runat="server" Height="36px" Width="243px"></asp:TextBox>
                &nbsp;&nbsp;</p>
<table class="style6">
    <tr>
        <td class="style7">
            Company Name:</td>
        <td colspan="5" style="font-weight: 700; font-size: x-large;">
            &nbsp;<asp:DropDownList ID="DropDownList1" 
                runat="server" AppendDataBoundItems="True" 
                AutoPostBack="True" DataSourceID="SqlDataSource6" Width="240px" 
                DataTextField="company_name" DataValueField="company_name" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                 <asp:ListItem value="-1">select company</asp:ListItem>
            </asp:DropDownList>
&nbsp;&nbsp;
        </td>
    </tr>
    <tr>
        <td class="style7">
            Item name:</td>
        <td colspan="5">
            <asp:TextBox ID="TextTitem" runat="server" Height="36px" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Item id:</td>
        <td colspan="5">
            <asp:TextBox ID="TextTid" runat="server" Height="36px" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Model:</td>
        <td colspan="5">
            <asp:TextBox ID="TextTmodel" runat="server" Height="36px" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            size:</td>
        <td colspan="5">
            <asp:TextBox ID="TextTsize" runat="server" Height="36px" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Quantity</td>
        <td colspan="5">
            <asp:TextBox ID="TextTquantity" runat="server" Height="36px" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            warranty:</td>
        <td colspan="5">
            <asp:TextBox ID="TextTwarranty" runat="server" Height="36px" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            Rate:</td>
        <td colspan="5">
            <asp:TextBox ID="TextTrate" runat="server" Height="36px" Width="243px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            &nbsp;</td>
        <td colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Button ID="Button1" runat="server" Height="37px" onclick="Button1_Click" 
                style="font-weight: 700; font-size: x-large" Text="Submit" Width="150px" />
        </td>
        <td class="style8">
            &nbsp;</td>
        <td class="style9">
            &nbsp;</td>
        <td class="style9">
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                SelectCommand="SELECT DISTINCT [company_name] FROM [company]">
            </asp:SqlDataSource>
        </td>
        <td class="style9">
            &nbsp;</td>
        <td>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                DeleteCommand="DELETE FROM [totalstock] WHERE [item_id] = @item_id" 
                InsertCommand="INSERT INTO [totalstock] ([company_name], [item_name], [item_id], [model], [size], [quantity], [warranty], [rate], [date]) VALUES (@company_name, @item_name, @item_id, @model, @size, @quantity, @warranty, @rate, @date)" 
                SelectCommand="SELECT * FROM [totalstock]" 
                
                
                UpdateCommand="UPDATE [totalstock] SET [company_name] = @company_name, [item_name] = @item_name, [model] = @model, [size] = @size, [quantity] = @quantity, [warranty] = @warranty, [rate] = @rate, [date] = @date WHERE [item_id] = @item_id">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="item_id" 
                        PropertyName="SelectedValue" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="company_name" Type="String" />
                    <asp:Parameter Name="item_name" Type="String" />
                    <asp:Parameter Name="item_id" Type="String" />
                    <asp:Parameter Name="model" Type="String" />
                    <asp:Parameter Name="size" Type="Decimal" />
                    <asp:Parameter Name="quantity" Type="Decimal" />
                    <asp:Parameter Name="warranty" Type="Decimal" />
                    <asp:Parameter Name="rate" Type="Decimal" />
                    <asp:Parameter DbType="Date" Name="date" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="company_name" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="item_name" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="model" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="GridView1" Name="size" 
                        PropertyName="SelectedValue" Type="Decimal" />
                    <asp:ControlParameter ControlID="GridView1" Name="quantity" 
                        PropertyName="SelectedValue" Type="Decimal" />
                    <asp:ControlParameter ControlID="GridView1" Name="warranty" 
                        PropertyName="SelectedValue" Type="Decimal" />
                    <asp:ControlParameter ControlID="GridView1" Name="rate" 
                        PropertyName="SelectedValue" Type="Decimal" />
                    <asp:ControlParameter ControlID="GridView1" DbType="Date" Name="date" 
                        PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="GridView1" Name="item_id" 
                        PropertyName="SelectedValue" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
            <p class="style5">
                &nbsp;</p>
<p class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource5" ForeColor="Black" 
                    style="font-size: small" DataKeyNames="item_id" 
                    AutoGenerateDeleteButton="True" AutoGenerateEditButton="True">
                    <Columns>
                        <asp:BoundField DataField="company_name" HeaderText="company_name" 
                            SortExpression="company_name" />
                        <asp:BoundField DataField="item_name" HeaderText="item_name" 
                            SortExpression="item_name" />
                        <asp:BoundField DataField="item_id" HeaderText="item_id" 
                            SortExpression="item_id" ReadOnly="True" />
                        <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                        <asp:BoundField DataField="size" HeaderText="size" SortExpression="size" />
                        <asp:BoundField DataField="quantity" HeaderText="quantity" 
                            SortExpression="quantity" />
                        <asp:BoundField DataField="warranty" HeaderText="warranty" 
                            SortExpression="warranty" />
                        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                    </Columns>
                </asp:GridView>
</p>
            <p class="style5">
                &nbsp;</p>
            <p class="style5">
                &nbsp;</p>
            <p class="style5">
                &nbsp;</p>
            <p class="style5">
                &nbsp;</p>
            <p class="style5">
                &nbsp;</p>
            <p class="style5">
                &nbsp;</p>
            <p class="style5">
                &nbsp;</p>
            <p class="style5">
                &nbsp;</p>
            <p class="style5">
                &nbsp;&nbsp;
</p>
        
        </asp:Content>


