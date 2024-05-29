<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="DatewisepurchaseR.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: small;
        }
        .style7
        {
            font-size: large;
        }
        .style8
        {
            width: 100%;
        }
        .style9
        {
            width: 350px;
        }
        .style10
        {
            width: 18px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
        
            <p class="style7" 
        style="font-weight: 700; text-decoration: underline; text-align: center">
                DATEWISE PURCHASE REPORT</p>
            <table class="style8">
                <tr>
                    <td>
                <asp:LinkButton ID="LinkP_from" runat="server" ForeColor="Black" 
                    onclick="LinkP_from_Click" CssClass="style6">FROM</asp:LinkButton>
                    </td>
                    <td>
                        <asp:TextBox ID="TextPFORM" runat="server" CssClass="style6"></asp:TextBox>
                    </td>
                    <td class="style9">
                <asp:Calendar ID="CalendarP_from" runat="server" BackColor="White" 
                    BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                    Font-Size="10pt" ForeColor="Black" Height="116px" NextPrevFormat="FullMonth" 
                    TitleFormat="Month" Visible="False" Width="226px" 
                    onselectionchanged="CalendarP_from_SelectionChanged">
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
                    <td class="style10">
                <asp:LinkButton ID="LinkP_TO" runat="server" ForeColor="Black" 
                    onclick="LinkP_TO_Click" CssClass="style6">TO</asp:LinkButton>
                    </td>
                    <td>
                        <asp:TextBox ID="TextPTO" runat="server" CssClass="style6"></asp:TextBox>
                    </td>
                    <td>
                <asp:Calendar ID="CalendarP_to" runat="server" BackColor="White" 
                    BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                    Font-Size="10pt" ForeColor="Black" Height="132px" NextPrevFormat="FullMonth" 
                    TitleFormat="Month" Visible="False" Width="213px" 
                    onselectionchanged="CalendarP_to_SelectionChanged">
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
                <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                    DataSourceID="SqlDatapurchaseR" ForeColor="Black" GridLines="Horizontal" 
                    AutoGenerateColumns="False" CssClass="style6" DataKeyNames="sno" Visible="False">
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
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        TOTAL PURCHASE AMOUNT===</td>
                    <td class="style9">
                        <asp:TextBox ID="TextBox1" runat="server" Width="292px"></asp:TextBox>
                    </td>
                    <td class="style10">
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
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style10">
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
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style10">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
    <p class="style5" style="color: #C0C0C0; font-weight: 700;">
                &nbsp;</p>
    <p class="style5" style="color: #C0C0C0; font-weight: 700;">
                <asp:SqlDataSource ID="SqlDatapurchaseR" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [purchase] WHERE (([date] &gt;= @date) AND ([date] &lt;= @date2))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextPFORM" DbType="Date" 
                            Name="date" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextPTO" DbType="Date" 
                            Name="date2" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
    </p>
    <p class="style5" style="color: #C0C0C0; font-weight: 700; font-size: x-small;">
                &nbsp;</p>
</asp:Content>


