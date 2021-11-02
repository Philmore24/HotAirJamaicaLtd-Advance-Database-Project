<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddInstallation.aspx.cs" Inherits="HotAirJamaicaLtd.AddInstallation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add Installation</h1>
    <asp:Label ID="Label1" runat="server" Text="Package ID:"></asp:Label>

&nbsp;<asp:TextBox ID="PackageID" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="PackageID" ErrorMessage="Package ID is required" ForeColor="Red">*</asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="TRN:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    <br />
    <br />

</asp:Content>
