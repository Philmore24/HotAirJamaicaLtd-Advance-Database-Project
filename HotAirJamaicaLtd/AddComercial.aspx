﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddComercial.aspx.cs" Inherits="HotAirJamaicaLtd.AddComercial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <h2>Add Commercial Customer</h2>
        <br />
        TRN :
        <asp:TextBox ID="trn" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="trn" ErrorMessage="TRN is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Address :
        <asp:TextBox ID="address" runat="server"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="address" ErrorMessage="Address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Company Name :
        <asp:TextBox ID="company" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="company" ErrorMessage="Company name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Phone Type: 
        <asp:TextBox ID="phonetype" runat="server"></asp:TextBox><br />
        <br />

        Phone Number:
        <asp:TextBox ID="phonenum" runat="server"></asp:TextBox>
        <br />
        <br />

        Mac Address :
        <asp:TextBox ID="mac" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="mac" ErrorMessage="MAC Address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Username :
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="username" ErrorMessage="Username is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        IP Address:
        <asp:TextBox ID="ip" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ip" ErrorMessage="IP Address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Add Commercial" OnClick="Button1_Click" />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
        <br />

    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" SelectCommand="SELECT * FROM [Commercial Customers]">
    </asp:SqlDataSource>
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Company_name" HeaderText="Company_name" SortExpression="Company_name" />
                <asp:BoundField DataField="TRN" HeaderText="TRN" SortExpression="TRN" />
                <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
                <asp:BoundField DataField="Phone_Type" HeaderText="Phone_Type" SortExpression="Phone_Type" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
                <asp:BoundField DataField="MAC_Address" HeaderText="MAC_Address" SortExpression="MAC_Address" />
                <asp:BoundField DataField="IP_Address" HeaderText="IP_Address" SortExpression="IP_Address" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
