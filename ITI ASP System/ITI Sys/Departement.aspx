<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Departement.aspx.cs" Inherits="Departementt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataKeyNames="Dept_No" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:TemplateField HeaderText="Dept_No">
                <EditItemTemplate>
                    <asp:Label ID="ID_Lbl2" runat="server" Text='<%# Bind("Dept_No") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="ID_Lbl" runat="server" Text='<%# Bind("Dept_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Dept_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="Name_txtbox" runat="server" Text='<%# Bind("Dept_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Name_lbl" runat="server" Text='<%# Bind("Dept_Name") %>'></asp:Label>
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
    <table style="width: 100%">
        <tr>
            <td>Dept_Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="Red">Enter Name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server"  Text="Submit" OnClick="Button1_Click" />
                <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

