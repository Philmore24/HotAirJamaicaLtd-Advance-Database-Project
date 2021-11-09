<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddResidential.aspx.cs" Inherits="HotAirJamaicaLtd.AddResidential" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1 align="center">Add residential customer</h1>
        <br />
        TRN:
        <asp:TextBox ID="trn" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="trn" runat="server" ErrorMessage="TRN is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Firstname :
    <asp:TextBox ID="Fname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="Fname" runat="server" ErrorMessage="First name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        Lastname :
    <asp:TextBox ID="Lname" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="Lname" runat="server" ErrorMessage="Last name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        DOB :
    <asp:TextBox ID="dob" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="dob" runat="server" ErrorMessage="DOB is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />


        Profession :
    <asp:TextBox ID="Prof" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="Prof" runat="server" ErrorMessage="Profession is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Phone Type: 
        <asp:TextBox ID="phonetype" runat="server"></asp:TextBox><br />
        <br />

        Phone Number:
        <asp:TextBox ID="phonenum" runat="server"></asp:TextBox>
        <br />
        <br />

        Address :
    <asp:TextBox ID="Address" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="Address" runat="server" ErrorMessage="Address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />


        Mac_Address :
    <asp:TextBox ID="Mac" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ControlToValidate="Mac" runat="server" ErrorMessage="MAC Address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        UserName :<asp:TextBox ID="Username" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ControlToValidate="Username" runat="server" ErrorMessage="Username is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        IP Address :
    <asp:TextBox ID="IP" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ControlToValidate="IP" runat="server" ErrorMessage="IP Address is reuired" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <br />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />

        <asp:Button ID="Addres" runat="server" Text="Add Residential Customer" OnClick="Addres_Click" />
        <br />
        <br />
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
            <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
            <asp:BoundField DataField="TRN" HeaderText="TRN" SortExpression="TRN" />
            <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" SortExpression="Phone_Number" />
            <asp:BoundField DataField="Phone_Type" HeaderText="Phone_Type" SortExpression="Phone_Type" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Profession" HeaderText="Profession" SortExpression="Profession" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />
            <asp:BoundField DataField="MAC_Address" HeaderText="MAC_Address" SortExpression="MAC_Address" />
            <asp:BoundField DataField="IP_Address" HeaderText="IP_Address" SortExpression="IP_Address" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" SelectCommand="SELECT * FROM [Residential Customers]"></asp:SqlDataSource>
</asp:Content>
