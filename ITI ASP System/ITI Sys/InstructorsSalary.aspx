<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="InstructorsSalary.aspx.cs" Inherits="InstructorsSalary" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="Ins_Name" HeaderText="Ins_Name" SortExpression="Ins_Name" />
            <asp:BoundField DataField="Salary" HeaderText="Salary" SortExpression="Salary" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online ExaminationConnectionString %>" SelectCommand="SELECT [Ins_Name], [Salary] FROM [Instuctor]"></asp:SqlDataSource>
</asp:Content>

