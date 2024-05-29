<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="rcompany.aspx.cs" Inherits="rcompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
            width: 227px;
        }
        .style8
        {
            width: 212px;
        }
        .style9
        {
            width: 151px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style5">COMPANY PURCHASE REPORT</span></p>
    <p>
        <table class="style6">
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style9">
                    COMPANY</td>
                <td class="style8">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" Height="16px" Width="223px" 
                        DataTextField="company_name" DataValueField="company_name">
                    </asp:DropDownList>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black" 
                        onclick="LinkButton1_Click">From Date</asp:LinkButton>
                </td>
                <td class="style7">
                    <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:Calendar ID="Calendar1" runat="server" Height="16px" 
                        onselectionchanged="Calendar1_SelectionChanged" style="font-size: xx-small" 
                        Width="108px" Visible="False"></asp:Calendar>
                </td>
                <td class="style8">
                    <asp:LinkButton ID="LinkButton2" runat="server" ForeColor="Black" 
                        onclick="LinkButton2_Click">To Date</asp:LinkButton>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
                    <asp:Calendar ID="Calendar2" runat="server" Height="16px" 
                        onselectionchanged="Calendar2_SelectionChanged" style="font-size: xx-small" 
                        Width="108px" Visible="False"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td colspan="6">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="sno" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="sno" HeaderText="sno" InsertVisible="False" 
                                ReadOnly="True" SortExpression="sno" />
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
                            <asp:BoundField DataField="vat" HeaderText="vat" SortExpression="vat" />
                            <asp:BoundField DataField="discount" HeaderText="discount" 
                                SortExpression="discount" />
                            <asp:BoundField DataField="total_amount" HeaderText="total_amount" 
                                SortExpression="total_amount" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style7">
&nbsp;</td>
                <td class="style9">
                    TOTAL PURCHASE FROM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; COMPANY</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style7">
                    &nbsp;</td>
                <td class="style9">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            SelectCommand="SELECT DISTINCT [company_name] FROM [purchase]">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            
            SelectCommand="SELECT * FROM [purchase] WHERE (([date] &lt;= @date) AND ([date] &gt;= @date2) AND ([company_name] = @company_name))">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" DbType="Date" Name="date" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="TextBox2" DbType="Date" Name="date2" 
                    PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="company_name" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

