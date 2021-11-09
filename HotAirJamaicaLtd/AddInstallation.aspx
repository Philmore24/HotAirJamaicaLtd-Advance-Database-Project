<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddInstallation.aspx.cs" Inherits="HotAirJamaicaLtd.AddInstallation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add Installation</h1>

    Package ID:
    <asp:TextBox ID="PackageID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PackageID" ErrorMessage="Package ID is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />

    TRN: 
    <asp:TextBox ID="TRN" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TRN" ErrorMessage="TRN is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    Account Number:
    <asp:TextBox ID="AccNum" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AccNum" ErrorMessage="Account number is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    Bill amount:
    <asp:TextBox ID="bill" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="bill" ErrorMessage="Bill amount is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />

    Installation Done By Employee :
    <asp:TextBox ID="emp" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="emp" ErrorMessage="Employee ID  is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    Date:
    <asp:TextBox ID="date" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="date" ErrorMessage="Date is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    Notes:
    <asp:TextBox ID="notes" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="notes" ErrorMessage="Notes are required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <br />
    <br />
    <asp:Button ID="Addinstall" runat="server" Text="Submit" OnClick="Addinstall_Click" />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" SelectCommand="SELECT * FROM [View Installations_Emp]">
    </asp:SqlDataSource>

    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Account_Number" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="TRN" HeaderText="TRN" SortExpression="TRN" />
            <asp:BoundField DataField="Account_Number" HeaderText="Account_Number" ReadOnly="True" SortExpression="Account_Number" />
            <asp:BoundField DataField="Package_Id" HeaderText="Package_Id" SortExpression="Package_Id" />
            <asp:BoundField DataField="Type_Package" HeaderText="Type_Package" SortExpression="Type_Package" />
            <asp:BoundField DataField="Installation_Charge" HeaderText="Installation_Charge" SortExpression="Installation_Charge" />
            <asp:BoundField DataField="Date_Install" HeaderText="Date_Install" SortExpression="Date_Install" />
            <asp:BoundField DataField="Technician Name" HeaderText="Technician Name" SortExpression="Technician Name" />
            <asp:BoundField DataField="Notes" HeaderText="Notes" SortExpression="Notes" />
        </Columns>
    </asp:GridView>

    <br />
</asp:Content>
