﻿<%@ Page Title="" Language="C#" MasterPageFile="~/STOCK MANAGEMENT.master" AutoEventWireup="true" CodeFile="customer info.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <p style="font-size: xx-large">
        CUSTOMER INFO</p>
    <p style="font-size: xx-large">
        <asp:DetailsView ID="DetailsView1" runat="server" 
            AutoGenerateInsertButton="True" AutoGenerateRows="False" BorderColor="Blue" 
            BorderStyle="Inset" BorderWidth="50px" DataKeyNames="Customer_ID" 
            DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" 
            style="font-size: large" Width="125px">
            <Fields>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER_NAME" 
                    SortExpression="CUSTOMER_NAME" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" 
                    SortExpression="ADDRESS" />
                <asp:BoundField DataField="MOBILE" HeaderText="MOBILE" 
                    SortExpression="MOBILE" />
                <asp:BoundField DataField="LAND" HeaderText="LAND" SortExpression="LAND" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            DeleteCommand="DELETE FROM [MASTER_CUSTOMER] WHERE [Customer_ID] = @Customer_ID" 
            InsertCommand="INSERT INTO [MASTER_CUSTOMER] ([CUSTOMER_NAME], [ADDRESS], [MOBILE], [LAND]) VALUES (@CUSTOMER_NAME, @ADDRESS, @MOBILE, @LAND)" 
            SelectCommand="SELECT * FROM [MASTER_CUSTOMER]" 
            UpdateCommand="UPDATE [MASTER_CUSTOMER] SET [CUSTOMER_NAME] = @CUSTOMER_NAME, [ADDRESS] = @ADDRESS, [MOBILE] = @MOBILE, [LAND] = @LAND WHERE [Customer_ID] = @Customer_ID">
            <DeleteParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Customer_ID" 
                    PropertyName="SelectedValue" Type="Decimal" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="DetailsView1" Name="CUSTOMER_NAME" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DetailsView1" Name="ADDRESS" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DetailsView1" Name="MOBILE" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="DetailsView1" Name="LAND" 
                    PropertyName="SelectedValue" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="GridView1" Name="CUSTOMER_NAME" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="GridView1" Name="ADDRESS" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="GridView1" Name="MOBILE" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="GridView1" Name="LAND" 
                    PropertyName="SelectedValue" Type="String" />
                <asp:ControlParameter ControlID="GridView1" Name="Customer_ID" 
                    PropertyName="SelectedValue" Type="Decimal" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" 
            AutoGenerateEditButton="True" BorderColor="#3366FF" BorderStyle="Ridge" 
            BorderWidth="40px" style="font-size: large" AutoGenerateColumns="False" 
            DataKeyNames="Customer_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Customer_ID" HeaderText="Customer_ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="Customer_ID" />
                <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER_NAME" 
                    SortExpression="CUSTOMER_NAME" />
                <asp:BoundField DataField="ADDRESS" HeaderText="ADDRESS" 
                    SortExpression="ADDRESS" />
                <asp:BoundField DataField="MOBILE" HeaderText="MOBILE" 
                    SortExpression="MOBILE" />
                <asp:BoundField DataField="LAND" HeaderText="LAND" SortExpression="LAND" />
            </Columns>
        </asp:GridView>
        <br />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

