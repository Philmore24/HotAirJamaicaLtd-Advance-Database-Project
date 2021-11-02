<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddPackage.aspx.cs" Inherits="HotAirJamaicaLtd.AddPackage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2>Add Package</h2>

        Package ID :
        <asp:TextBox ID="id" runat="server"></asp:TextBox><br />
        <br />

        Description :
        <asp:TextBox ID="descr" runat="server"></asp:TextBox><br />
        <br />

        Speed :
        <asp:TextBox ID="speed" runat="server"></asp:TextBox><br />
        <br />

        Monthly Charge :
        <asp:TextBox ID="month" runat="server"></asp:TextBox><br />
        <br />

        Type :
        <asp:TextBox ID="type" runat="server"></asp:TextBox><br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Add Package" OnClick="Button1_Click" />


    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" InsertCommand="AddPackage" InsertCommandType="StoredProcedure" SelectCommand="AddPackage" SelectCommandType="StoredProcedure">
        <InsertParameters>
            <asp:Parameter Name="Package_ID" Type="String" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Speed" Type="String" />
            <asp:Parameter Name="monthly_charges" Type="Decimal" />
            <asp:Parameter Name="Type_Package" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="id" Name="Package_ID" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="descr" Name="Description" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="speed" Name="Speed" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="month" Name="monthly_charges" PropertyName="Text" Type="Decimal" />
            <asp:ControlParameter ControlID="type" Name="Type_Package" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
