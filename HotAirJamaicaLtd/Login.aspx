<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotAirJamaicaLtd.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/Products.css" rel="stylesheet" />
    <br />

    <h2>Login to Account</h2>
    <br />
    Username :<asp:TextBox ID="username" runat="server"></asp:TextBox><br />
    <br />


    Password:<asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox><br />
    <br />


    <asp:Button ID="login" runat="server" Text="Login" CssClass="purchasebutton" />
</asp:Content>
