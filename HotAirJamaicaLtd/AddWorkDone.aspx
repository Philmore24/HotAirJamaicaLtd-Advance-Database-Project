<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddWorkDone.aspx.cs" Inherits="HotAirJamaicaLtd.AddWorkDone" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 align="center">Add Installations Carried Out</h1>
    TRN:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="TRN" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TRN" ErrorMessage="TRN is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    Package ID:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="PackageID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PackageID" ErrorMessage="Package ID is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    Account Number:&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="AccNum" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AccNum" ErrorMessage="Account number is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    Employee ID:&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="EmployeeID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="EmployeeID" ErrorMessage="Employee ID is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <br />
    <asp:Button ID="submitInstall" runat="server" Text="Submit" OnClick="submitInstall_Click" />

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
</asp:Content>
