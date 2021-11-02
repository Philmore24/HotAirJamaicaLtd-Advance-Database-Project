<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="HotAirJamaicaLtd.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  
    <h1 align="center">Contact Us</h1>
    <p align="center"><i>Have any questions? We would love to hear from you!</i></p>
    <p><b>Store location</b></p>
    <address>
       23 Half Way Tree Road<br />
       Kingston, Jamaica<br />
    </address>

    <address>
        <strong>Email:</strong>   <a href="mailto:fosterphilmore@gmail.com ">fosterphilmore@gmail.com </a><br />
        <strong>Phone number:</strong>(876)902-0987
    
    <address>
        &nbsp;<address>
            <h3 style="margin-left: 440px">Fill out this form and we will contact you!</h3>
            <asp:Label ID="Label2" runat="server" Text="First Name:"></asp:Label>&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="173px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
            <asp:Label ID="Label1" runat="server" Text="Last Name:"></asp:Label>&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="173px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <br />
            <asp:Label ID="Label3" runat="server" Text="Phone Number:"></asp:Label>&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="173px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter phone number" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Please enter valid phone number" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
    <br />
    <br />
            <asp:Label ID="Label4" runat="server" Text="Email:"></asp:Label>&nbsp;<asp:TextBox ID="TextBox4" runat="server" Width="173px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Please enter valid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
    <br />
    <br />
    <br />
        </asp:Content>
