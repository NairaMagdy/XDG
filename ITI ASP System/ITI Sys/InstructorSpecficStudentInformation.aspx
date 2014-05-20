<%@ Page Title="" Language="C#" MasterPageFile="~/InstructorMasterPage.master" AutoEventWireup="true" CodeFile="InstructorSpecficStudentInformation.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <table style="width: 100%">
        <tr>
            <td>Select Student:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="St_Fname" DataValueField="St_ID" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online ExaminationConnectionString %>" SelectCommand="SELECT [St_ID], [St_Fname] FROM [Student]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
    Student Information:<br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="St_ID" DataSourceID="SqlDataSource2" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:BoundField DataField="St_ID" HeaderText="St_ID" ReadOnly="True" SortExpression="St_ID" />
            <asp:BoundField DataField="St_Fname" HeaderText="St_Fname" SortExpression="St_Fname" />
            <asp:BoundField DataField="St_Lname" HeaderText="St_Lname" SortExpression="St_Lname" />
            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
            <asp:BoundField DataField="age" HeaderText="age" SortExpression="age" />
            <asp:BoundField DataField="Dept_no" HeaderText="Dept_no" SortExpression="Dept_no" />
            <asp:BoundField DataField="Leader" HeaderText="Leader" SortExpression="Leader" />
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
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Online ExaminationConnectionString %>" SelectCommand="SELECT * FROM [Student] WHERE ([St_ID] = @St_ID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="St_ID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

