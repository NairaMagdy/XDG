<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Course.aspx.cs" Inherits="Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="C_ID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:TemplateField HeaderText="Course_ID">
                <EditItemTemplate>
                    <asp:Label ID="ID_lbl_Edit" runat="server" Text='<%# Bind("C_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="ID_lbl" runat="server" Text='<%# Bind("C_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Course_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="Name_txtbox" runat="server" Text='<%# Bind("C_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Name_lbl" runat="server" Text='<%# Bind("C_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
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
    Add New Course:
    <br />
    --------------------------
    &nbsp;<table style="width: 100%">
        <tr>
            <td>Course Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Course name" ForeColor="Red">Enter Course name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

