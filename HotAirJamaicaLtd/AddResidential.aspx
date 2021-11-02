﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddResidential.aspx.cs" Inherits="HotAirJamaicaLtd.AddResidential" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>

        <br />
        TRN:
        <asp:TextBox ID="trn" runat="server"></asp:TextBox>
        <br />
        <br />

        Firstname :
    <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
        <br />
        <br />
        Lastname :
    <asp:TextBox ID="Lname" runat="server"></asp:TextBox><br />
        <br />

        DOB :
    <asp:TextBox ID="dob" runat="server"></asp:TextBox><br />
        <br />


        Profession :
    <asp:TextBox ID="Prof" runat="server"></asp:TextBox>
        <br />
        <br />

        Address :
    <asp:TextBox ID="Address" runat="server"></asp:TextBox>
        <br />
        <br />

        Mac_Address :
    <asp:TextBox ID="Mac" runat="server"></asp:TextBox>
        <br />
        <br />

        UserName :<asp:TextBox ID="Username" runat="server"></asp:TextBox>
        <br />
        <br />

        IP Address :
    <asp:TextBox ID="IP" runat="server"></asp:TextBox>
        <br />
        <br />

        <asp:Button ID="Addres" runat="server" Text="Add Residential Customer" OnClick="addres_Click" />
    </div>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" InsertCommand="AddResidentialCus" InsertCommandType="StoredProcedure" SelectCommand="AddResidentialCus" SelectCommandType="StoredProcedure">
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
            <asp:ControlParameter ControlID="Address" Name="Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Mac" Name="MAC_Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Username" Name="Username" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="IP" Name="IP_Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Prof" Name="Profession" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="dob" DbType="Date" Name="DOB" PropertyName="Text" />
            <asp:ControlParameter ControlID="Fname" Name="Lname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Fname" Name="Fname" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
