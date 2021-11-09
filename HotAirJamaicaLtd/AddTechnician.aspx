<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddTechnician.aspx.cs" Inherits="HotAirJamaicaLtd.AddTechnician" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h2>Add Technician</h2>

        Employee ID :
        <asp:TextBox ID="empid" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="empid" ErrorMessage="Employee ID is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        Email :
        <asp:TextBox ID="email" runat="server"></asp:TextBox>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />


        Name : 
        <asp:TextBox ID="name" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="name" ErrorMessage="Employee name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />


        Address :
        <asp:TextBox ID="address" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="address" ErrorMessage="Address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />


        Phone Number:
        <asp:TextBox ID="phone" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="phone" ErrorMessage="Phone number is required" ForeColor="Red">*</asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Add Technician" OnClick="Button1_Click" />


        <br />
        <br />


        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />


    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" SelectCommand="SELECT * FROM [View Technician]">
    </asp:SqlDataSource>
<div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Emp_ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="Emp_ID" HeaderText="Emp_ID" ReadOnly="True" SortExpression="Emp_ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Phone_number" HeaderText="Phone_number" SortExpression="Phone_number" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
        </Columns>
    </asp:GridView>
</div>
</asp:Content>
