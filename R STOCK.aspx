<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="R STOCK.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
            <p class="style5" 
    
                style="font-weight: 700; font-style: italic; text-decoration: underline; text-align: center;">
                &nbsp;STOCK REGISTER</p>
<p class="style5" style="font-weight: 700; font-style: italic; font-size: large;">
                Item Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="item_id" 
                    DataValueField="item_id" AppendDataBoundItems="True">
                     <asp:ListItem value="-1">select item</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT [item_id] FROM [totalstock]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</p>
            <p class="style5">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource6" ForeColor="Black" style="font-size: small" 
                    DataKeyNames="item_id">
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
            <p class="style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <p class="style5">
&nbsp; 
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [totalstock] WHERE ([item_id] = @item_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="item_id" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </p>
        
        </asp:Content>


