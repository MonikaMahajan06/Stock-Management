<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="datewiseStock.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style6
        {
            font-size: xx-small;
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
    
                style="font-weight: 700; font-style: italic; text-decoration: underline; text-align: center">
                DATEWISE STOCK REPORT</p>
            <table class="style8">
                <tr>
                    <td>
                <asp:LinkButton ID="LinkS_from" runat="server" onclick="LinkS_from_Click" 
                    ForeColor="Black" CssClass="style6">FROM</asp:LinkButton>
                    </td>
                    <td>
                        <asp:TextBox ID="TextS_from" runat="server" Height="18px" Width="199px" 
                            CssClass="style6"></asp:TextBox>
                    </td>
                    <td>
                <asp:Calendar ID="CalendarS_from" runat="server" BackColor="White" 
                    BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
                    Font-Size="10pt" ForeColor="Black" Height="75px" NextPrevFormat="FullMonth" 
                    onselectionchanged="CalendarS_from_SelectionChanged" TitleFormat="Month" 
                    Visible="False" Width="239px" style="font-size: xx-small">
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
                <asp:LinkButton ID="LinkS_to" runat="server" onclick="LinkS_to_Click" 
                    ForeColor="Black" CssClass="style6">TO</asp:LinkButton>
                    </td>
                    <td>
                        <asp:TextBox ID="TextS_to" runat="server" Height="20px" Width="199px" 
                            CssClass="style6"></asp:TextBox>
                    </td>
                    <td>
<asp:Calendar ID="CalendarS_to" runat="server" BackColor="White" 
    BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" 
    Font-Size="10pt" ForeColor="Black" Height="98px" NextPrevFormat="FullMonth" 
    onselectionchanged="CalendarS_to_SelectionChanged" TitleFormat="Month" 
    Visible="False" Width="243px" style="font-size: xx-small">
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
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSourceSTOCK_r" ForeColor="#333333" 
                    GridLines="None" CssClass="style6" DataKeyNames="item_id" Visible="False">
                    <AlternatingRowStyle BackColor="White" />
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
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        TOTAL PRODUCT QUANTITY==</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
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
    style="font-weight: 700; font-style: italic; text-decoration: underline; text-align: left">
                &nbsp;</p>
            <p class="style5" style="color: #C0C0C0">
                <asp:SqlDataSource ID="SqlDataSourceSTOCK_r" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                    
                    SelectCommand="SELECT * FROM [totalstock] WHERE (([date] &gt;= @date) AND ([date] &lt;= @date2))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextS_from" DbType="Date" 
                            Name="date" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TextS_to" DbType="Date" 
                            Name="date2" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
</p>
<p class="style5" style="color: #C0C0C0">
                &nbsp;</p>
        
        </asp:Content>


