<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="datewise SALE.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: medium;
        }
        .style7
        {
            font-size: x-large;
        }
        .style8
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <p class="style7" 
        
    
                
                style="font-weight: 700; font-style: italic; text-decoration: underline; text-align: center; color: #000080;">
                DATEWISE SALE REPORT</p>
            <table class="style8">
                <tr>
                    <td>
                <asp:LinkButton ID="Link_from" runat="server" onclick="Link_from_Click" 
                    ForeColor="Black" CssClass="style6">FROM</asp:LinkButton>
                    </td>
                    <td>
                        <asp:TextBox ID="Textfrom" runat="server" Height="20px" Width="206px" 
                    AutoPostBack="True" ontextchanged="cal_false" CssClass="style6"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Calendar ID="Cal_FROM" runat="server" Height="103px" onselectionchanged="CAL_FROM" 
                    Visible="False" Width="254px" BackColor="White" BorderColor="Black" 
                    DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" 
                    ForeColor="Black" NextPrevFormat="FullMonth" TitleFormat="Month">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                        ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
                    </td>
                    <td>
                        <asp:LinkButton 
                    ID="LINK_TO" runat="server" onclick="LINK_TO_Click" ForeColor="Black" 
                            CssClass="style6">TO</asp:LinkButton>
                    </td>
                    <td>
                        <asp:TextBox ID="Textto" runat="server" 
                    Height="21px" Width="206px" AutoPostBack="True" CssClass="style6"></asp:TextBox>
                    </td>
                    <td>
                <asp:Calendar ID="Cal_TO" runat="server" Height="137px" 
                    onselectionchanged="CAL_T" Visible="False" Width="253px" BackColor="White" 
                    BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                    Font-Size="10pt" ForeColor="Black" NextPrevFormat="FullMonth" 
                    TitleFormat="Month">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" 
                        ForeColor="#333333" Height="10pt" />
                    <DayStyle Width="14%" />
                    <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" 
                        Font-Size="8pt" ForeColor="#333333" Width="1%" />
                    <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" 
                        ForeColor="White" Height="14pt" />
                    <TodayDayStyle BackColor="#CCCC99" />
                </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td colspan="6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td colspan="6">
                <asp:GridView ID="grid_date_r" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDa_dateR" CssClass="style6" DataKeyNames="sno" Visible="False">
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
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        TOTAL SALE AMOUNT==</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Width="239px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
    <p class="style5" 
    style="font-weight: 700; text-align: justify; ">
                <asp:SqlDataSource ID="SqlDa_dateR" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    
                    
                    SelectCommand="SELECT * FROM [sale] WHERE (([Date] &gt;= @Date) AND ([Date] &lt;= @Date2))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Textfrom" Name="Date" PropertyName="Text" 
                            DbType="Date" />
                        <asp:ControlParameter ControlID="Textto" DbType="Date" Name="Date2" 
                            PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
    </p>
            <p class="style5" style="font-size: x-small">
                &nbsp;</p>
        
        </asp:Content>


