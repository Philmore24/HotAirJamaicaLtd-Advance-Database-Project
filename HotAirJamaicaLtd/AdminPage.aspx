<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="HotAirJamaicaLtd.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />

    <h2>WELCOME BACK ADMINISTRATOR </h2>
    <hr />
    <div>
        <table class="nav-justified">
            <tr>
                <td>
                    <asp:Button ID="addcus" runat="server" Text="Add Commercial Customer" OnClick="addcus_Click" />
                </td>
                <td>
                    <asp:Button ID="addres" runat="server" Text="Add Residential Customer" OnClick="addres_Click" />
                </td>
            </tr>

        </table>

        <hr />

    </div>

    <div>

        <table cellspacing="3" class="nav-justified">
            <tr>
                <td>
                    <asp:Button ID="addpac" runat="server" Text="Add New Package" OnClick="addpac_Click" />
                </td>
                <td>
                    <asp:Button ID="addtec" runat="server" Text="Add Techcian" OnClick="addtec_Click" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

    </div>
</asp:Content>
