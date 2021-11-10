<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddCommercialPhil.aspx.cs" Inherits="HotAirJamaicaLtd.AddCommercialPhil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div>

        <table class="nav-justified" style="width: 52%; height: 182px">
            <tr>
                <td class="text-center" colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #000000">Commmercial Customers</td>
            </tr>
            <tr>
                <td style="height: 23px"></td>
                <td style="height: 23px"></td>
            </tr>
            <tr>
                <td>TRN:</td>
                <td>
                    <asp:TextBox ID="trn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 20px">Address</td>
                <td style="height: 20px">
                    <asp:TextBox ID="address" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Company Name:</td>
                <td>
                    <asp:TextBox ID="company" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="phonenumber" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Phone Type</td>
                <td>
                    <asp:DropDownList ID="phonetype" runat="server" Height="33px" Width="79px">
                        <asp:ListItem>Home</asp:ListItem>
                        <asp:ListItem>Work</asp:ListItem>
                        <asp:ListItem>Mobile</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Mac Address</td>
                <td>
                    <asp:TextBox ID="mac" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="username" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>IP Address</td>
                <td>
                    <asp:TextBox ID="ip" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Button ID="ClearForm" runat="server" Text="Clear" OnClientClick="this.form.reset();return false" />
                </td>
                <td>
                    <asp:Button ID="AddCommercial" runat="server" Text="Add" OnClick="AddCommercial_Click" />
                </td>
            </tr>
        </table>

        <br />
        <asp:GridView ID="GridView1" runat="server" Width="520px" Height="134px"></asp:GridView>
    </div>


</asp:Content>
