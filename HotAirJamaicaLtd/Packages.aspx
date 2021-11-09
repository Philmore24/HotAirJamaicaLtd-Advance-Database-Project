<%@ Page Title="Packages" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="HotAirJamaicaLtd.Packages" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link href="CSS/Products.css" rel="stylesheet" />
    <h1 align="center">Packages Offered</h1>
    <div class="row" style="padding-top: 50px">
        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
            <ItemTemplate>
                <div class="col-sm-3 col-md-3">

                    <div class="thumbnail">

                        <img src="Images/internet.png" />

                        <div class="caption">
                            <div class="PacName"><b>Packae ID :</b> <%#Eval("Package_ID") %> </div>
                            <div class="PacDesc"><b>Description:</b> <%#Eval("Description") %> </div>
                            <div class="PacSpeed"><b>Speed :</b><%#Eval("Speed") %></div>
                            <div class="PacCharge"><b>Montly Charge :</b> <%#Eval("monthly_charges") %> </div>
                            <div class="PacType"><b>Type :</b><%#Eval("Type_Package") %></div>
                            <br />
                            <asp:Button ID="PacButton" runat="server" Text="I'm Interested" PostBackUrl="~/Contact.aspx" CssClass="purchasebutton" />
                        </div>

                    </div>
                </div>

            </ItemTemplate>



        </asp:Repeater>





    </div>


</asp:Content>
