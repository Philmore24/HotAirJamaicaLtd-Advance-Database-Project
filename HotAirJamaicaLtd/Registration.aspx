<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="HotAirJamaicaLtd.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>
        <h2>Register Account</h2>
        <br />

        Username :
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <br />
        <br />

        User Type :
        <asp:TextBox ID="usertpe" runat="server"></asp:TextBox><br />
        <br />

        Email :
        <asp:TextBox ID="email" runat="server"></asp:TextBox><br />
        <br />

        Password :
        <asp:TextBox ID="password" runat="server"></asp:TextBox><br />
        <br />


        <asp:Button ID="RegAcc" runat="server" Text="Register" OnClick="RegAcc_Click" />
        <br />

    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" InsertCommand="RegisterAccount" InsertCommandType="StoredProcedure" SelectCommand="RegisterAccount" SelectCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="UserType" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="username" Name="UserName" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="usertpe" Name="UserType" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="email" Name="Email" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="password" Name="Password" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
