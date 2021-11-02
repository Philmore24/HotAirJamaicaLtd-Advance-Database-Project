<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddComercial.aspx.cs" Inherits="HotAirJamaicaLtd.AddComercial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Add Commercial Customer</h2>
        <br />
        TRN :
        <asp:TextBox ID="trn" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="trn" ErrorMessage="TRN is required" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />

        Address :
        <asp:TextBox ID="address" runat="server"></asp:TextBox>&nbsp;<br />
        <br />

        Company Name :
        <asp:TextBox ID="company" runat="server"></asp:TextBox>
        <br />
        <br />

        Mac Address :
        <asp:TextBox ID="mac" runat="server"></asp:TextBox>
        <br />
        <br />

        Username :
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <br />
        <br />

        IP Address:
        <asp:TextBox ID="ip" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Add Commercial" OnClick="Button1_Click" />

    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" InsertCommand="AddResidentialCus" InsertCommandType="StoredProcedure" SelectCommand="AddCommercialCus" SelectCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="TRN" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="MAC_Address" Type="String" />
            <asp:Parameter Name="Username" Type="String" />
            <asp:Parameter Name="IP_Address" Type="String" />
            <asp:Parameter Name="Profession" Type="String" />
            <asp:Parameter DbType="Date" Name="DOB" />
            <asp:Parameter Name="Lname" Type="String" />
            <asp:Parameter Name="Fname" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="trn" Name="TRN" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="company" Name="Company_name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="address" Name="Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="mac" Name="MAC_Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="username" Name="Username" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="ip" Name="IP_Address" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
