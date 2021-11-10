<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="HotAirJamaicaLtd.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <link href="CSS/Products.css" rel="stylesheet" />
    <h2>WELCOME BACK ADMINISTRATOR </h2>
    <hr />
    <div>
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Button ID="addcus" runat="server" Text="Add Commercial Customer" OnClick="addcus_Click" CssClass="purchasebutton" />
                </td>
                <td>
                    <asp:Button ID="addres" runat="server" Text="Add Residential Customer" OnClick="addres_Click" CssClass="purchasebutton" />
                </td>
            </tr>

        </table>

        <hr />

    </div>

    <div>

        <table cellspacing="3" class="nav-justified">
            <tr>
                <td style="height: 13px">
                    <asp:Button ID="addpac" runat="server" Text="Add New Package" OnClick="addpac_Click" CssClass="purchasebutton" />
                    <br />
                    <br />
                </td>
                <td>
                    <asp:Button ID="addtec" runat="server" Text="Add Techcian" OnClick="addtec_Click" CssClass="purchasebutton" />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add Installation" CssClass="purchasebutton" />
                    <br />
                </td>
                <td>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add Work done" CssClass="purchasebutton" />
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
