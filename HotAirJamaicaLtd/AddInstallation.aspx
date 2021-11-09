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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" InsertCommand="AddInstallation" InsertCommandType="StoredProcedure" SelectCommand="AddInstallation" SelectCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="Installation_Charge" Type="Int32" />
            <asp:Parameter DbType="Date" Name="Date_Install" />
            <asp:Parameter Name="Notes" Type="String" />
            <asp:Parameter Name="Package_Id" Type="String" />
            <asp:Parameter Name="TRN" Type="String" />
            <asp:Parameter Name="Acc_Num" Type="String" />
            <asp:Parameter Name="emp_id" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="bill" Name="Installation_Charge" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="date" DbType="Date" Name="Date_Install" PropertyName="Text" />
            <asp:ControlParameter ControlID="notes" Name="Notes" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="PackageID" Name="Package_Id" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TRN" Name="TRN" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="AccNum" Name="Acc_Num" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="emp" Name="emp_id" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>

    <br />
</asp:Content>
