﻿<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="DealerInfo.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        text-decoration: underline;
    }
    .style6
    {
        width: 100%;
        margin-right: 0px;
    }
    .style7
    {
            width: 223px;
            font-size: x-large;
            font-weight: bold;
        }
    .style8
    {
        width: 804px;
    }
        .style9
        {
            width: 223px;
            font-size: x-large;
            font-weight: bold;
            height: 30px;
        }
        .style10
        {
            width: 804px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p class="style5" style="font-size: xx-large">
    <strong>Dealer details:</strong></p>
<table class="style6">
    <tr>
        <td class="style7" style="font-size: x-large">
            Dealer ID:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox1" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            Dealer Name:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox2" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            Address:</td>
        <td class="style10">
            <asp:TextBox ID="TextBox3" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style10">
            </td>
    </tr>
    <tr>
        <td class="style7">
            Home No:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox4" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            Street Name:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox5" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            Area:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox7" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            Landmark:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox6" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            City:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox8" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            State:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox9" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            Pincode:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox11" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            Mobile No:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox10" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style7">
            Landline No:</td>
        <td class="style8">
            <asp:TextBox ID="TextBox12" runat="server" Width="328px"></asp:TextBox>
        </td>
        <td class="style8">
            &nbsp;</td>
    </tr>
</table>
<p style="font-size: xx-large">
    <asp:Button ID="Button1" runat="server" Text="Add Dealer" Width="158px" 
        Height="41px" style="font-size: x-large; font-weight: 700" 
        onclick="Button1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
<TR>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" 
    DataKeyNames="P_ID" DataSourceID="Sqldealer">
        <Columns>
            <asp:BoundField DataField="P_ID" HeaderText="P_ID" InsertVisible="False" 
                ReadOnly="True" SortExpression="P_ID" />
            <asp:BoundField DataField="D_ID" HeaderText="D_ID" SortExpression="D_ID" />
            <asp:BoundField DataField="D_NAME" HeaderText="D_NAME" 
                SortExpression="D_NAME" />
            <asp:BoundField DataField="D_ADDRESS" HeaderText="D_ADDRESS" 
                SortExpression="D_ADDRESS" />
            <asp:BoundField DataField="HOME_NO" HeaderText="HOME_NO" 
                SortExpression="HOME_NO" />
            <asp:BoundField DataField="STREET_NO" HeaderText="STREET_NO" 
                SortExpression="STREET_NO" />
            <asp:BoundField DataField="AREA" HeaderText="AREA" SortExpression="AREA" />
            <asp:BoundField DataField="LANKMARK" HeaderText="LANKMARK" 
                SortExpression="LANKMARK" />
            <asp:BoundField DataField="CITY" HeaderText="CITY" SortExpression="CITY" />
            <asp:BoundField DataField="STATE" HeaderText="STATE" SortExpression="STATE" />
            <asp:BoundField DataField="PINCODE" HeaderText="PINCODE" 
                SortExpression="PINCODE" />
            <asp:BoundField DataField="M_NO" HeaderText="M_NO" SortExpression="M_NO" />
            <asp:BoundField DataField="LAND" HeaderText="LAND" SortExpression="LAND" />
        </Columns>
    </asp:GridView>

<asp:SqlDataSource ID="Sqldealer" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
    DeleteCommand="DELETE FROM [MASTER_DEALER] WHERE [P_ID] = @P_ID" 
    InsertCommand="INSERT INTO [MASTER_DEALER] ([D_ID], [D_NAME], [D_ADDRESS], [HOME_NO], [STREET_NO], [AREA], [LANKMARK], [CITY], [STATE], [PINCODE], [M_NO], [LAND]) VALUES (@D_ID, @D_NAME, @D_ADDRESS, @HOME_NO, @STREET_NO, @AREA, @LANKMARK, @CITY, @STATE, @PINCODE, @M_NO, @LAND)" 
    SelectCommand="SELECT * FROM [MASTER_DEALER]" 
    UpdateCommand="UPDATE [MASTER_DEALER] SET [D_ID] = @D_ID, [D_NAME] = @D_NAME, [D_ADDRESS] = @D_ADDRESS, [HOME_NO] = @HOME_NO, [STREET_NO] = @STREET_NO, [AREA] = @AREA, [LANKMARK] = @LANKMARK, [CITY] = @CITY, [STATE] = @STATE, [PINCODE] = @PINCODE, [M_NO] = @M_NO, [LAND] = @LAND WHERE [P_ID] = @P_ID">
    <DeleteParameters>
        <asp:ControlParameter ControlID="GridView1" Name="P_ID" 
            PropertyName="SelectedValue" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="D_ID" Type="String" />
        <asp:Parameter Name="D_NAME" Type="String" />
        <asp:Parameter Name="D_ADDRESS" Type="String" />
        <asp:Parameter Name="HOME_NO" Type="String" />
        <asp:Parameter Name="STREET_NO" Type="String" />
        <asp:Parameter Name="AREA" Type="String" />
        <asp:Parameter Name="LANKMARK" Type="String" />
        <asp:Parameter Name="CITY" Type="String" />
        <asp:Parameter Name="STATE" Type="String" />
        <asp:Parameter Name="PINCODE" Type="String" />
        <asp:Parameter Name="M_NO" Type="String" />
        <asp:Parameter Name="LAND" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:ControlParameter ControlID="GridView1" Name="D_ID" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="D_NAME" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="D_ADDRESS" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="HOME_NO" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="STREET_NO" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="AREA" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="LANKMARK" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="CITY" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="STATE" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="PINCODE" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="M_NO" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="LAND" 
            PropertyName="SelectedValue" Type="String" />
        <asp:ControlParameter ControlID="GridView1" Name="P_ID" 
            PropertyName="SelectedValue" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>

</TR>
</asp:Content>

