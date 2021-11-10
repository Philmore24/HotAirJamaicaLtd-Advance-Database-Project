<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddResidential.aspx.cs" Inherits="HotAirJamaicaLtd.AddResidential" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="CSS/Products.css" rel="stylesheet" />

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

        <asp:Button ID="Addres" runat="server" Text="Add Residential Customer" OnClick="Addres_Click" CssClass="purchasebutton" />
        <br />
        <br />
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Height="127px" Width="1227px">
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
        <HeaderStyle BackColor="#66CCFF" HorizontalAlign="Center" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" SelectCommand="AddResidentialCus" InsertCommand="AddResidentialCus" InsertCommandType="StoredProcedure" SelectCommandType="StoredProcedure">
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
            <asp:Parameter Name="Phone_Type" Type="String" />
            <asp:Parameter Name="Phone_Number" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="trn" Name="TRN" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Address" Name="Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Mac" Name="MAC_Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Username" Name="Username" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="IP" Name="IP_Address" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Prof" Name="Profession" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="dob" DbType="Date" Name="DOB" PropertyName="Text" />
            <asp:ControlParameter ControlID="Lname" Name="Lname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="Fname" Name="Fname" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="phonetype" Name="Phone_Type" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="phonenum" Name="Phone_Number" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AD_PROJECTConnectionString %>" SelectCommand="SELECT * FROM [Residential Customers]"></asp:SqlDataSource>
</asp:Content>
