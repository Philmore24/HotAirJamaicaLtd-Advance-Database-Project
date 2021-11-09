<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddInstallation1.aspx.cs" Inherits="HotAirJamaicaLtd.AddInstallation1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Add Installation</h1>
    <br />

    TRN:<asp:TextBox ID="trn" runat="server"></asp:TextBox><br />
    <br />


    Account Number:<asp:TextBox ID="acc" runat="server"></asp:TextBox><br />
    <br />


    Package ID :
    <asp:TextBox ID="pid" runat="server"></asp:TextBox><br />
    <br />


    Installation Charge:
    <asp:TextBox ID="charge" runat="server"></asp:TextBox><br />
    <br />


    Work Done by Employee :<asp:TextBox ID="emp" runat="server"></asp:TextBox><br />
    <br />


    Date Installed:<asp:TextBox ID="dateinstall" runat="server"></asp:TextBox><br />
    <br />


    Notes :
    <asp:TextBox ID="notes" runat="server"></asp:TextBox><br />
    <br />

    <asp:Button ID="InstallSubmit" runat="server" Text="Submit" OnClick="InstallSubmit_Click" />
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
            <asp:ControlParameter ControlID="charge" DbType="String" Name="Installation_Charge" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="dateinstall" Name="Date_Install" PropertyName="Text" />
            <asp:ControlParameter ControlID="notes" Name="Notes" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="pid" Name="Package_Id" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="trn" Name="TRN" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="acc" Name="Acc_Num" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="emp" Name="emp_id" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
