<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Assign Instructor To Course.aspx.cs" Inherits="Assign_Instructor_To_Course" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>instructor</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Ins_Name" DataValueField="Ins_ID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online ExaminationConnectionString %>" SelectCommand="SELECT [Ins_ID], [Ins_Name] FROM [Instuctor]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 46px">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource2" GridLines="Horizontal">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="C_Name" HeaderText="C_Name" SortExpression="C_Name" />
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Online ExaminationConnectionString %>" SelectCommand="CourseInstructor" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="ins_id" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

