<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPackage.aspx.cs" Inherits="HotAirJamaicaLtd.AddPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2>Add Package</h2>

        Package ID :
        <asp:TextBox ID="id" runat="server"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="id" ErrorMessage="Package ID is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Description :
        <asp:TextBox ID="descr" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="descr" ErrorMessage="Package description is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Speed :
        <asp:TextBox ID="speed" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="speed" ErrorMessage="Package speed is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Monthly Charge :
        <asp:TextBox ID="month" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="month" ErrorMessage="Monthly charge is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Type :
        <asp:TextBox ID="type" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="type" ErrorMessage="Package type is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Add Package" OnClick="Button1_Click" />


        <br />
        <br />

    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />


        <br />


    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" SelectCommand="SELECT * FROM [Package Information]">
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Package_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Package_ID" HeaderText="Package_ID" ReadOnly="True" SortExpression="Package_ID" />
            <asp:BoundField DataField="Speed" HeaderText="Speed" SortExpression="Speed" />
            <asp:BoundField DataField="monthly_charges" HeaderText="monthly_charges" SortExpression="monthly_charges" />
            <asp:BoundField DataField="Type_Package" HeaderText="Type_Package" SortExpression="Type_Package" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        </Columns>
    </asp:GridView>
</asp:Content>
