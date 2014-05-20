<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditInstructor.aspx.cs" Inherits="EditInstructor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" DataKeyNames="Ins_ID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:TemplateField HeaderText="Instructor_ID">
                <EditItemTemplate>
                    <asp:Label ID="Edit_ID" runat="server" Text='<%# Bind("Ins_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="ID" runat="server" Text='<%# Bind("Ins_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Name">
                <EditItemTemplate>
                    <asp:TextBox ID="Edit_Name" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Name" runat="server" Text='<%# Bind("Ins_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Supervisor_Id">
                <EditItemTemplate>
                    <asp:DropDownList ID="Edit_Super" runat="server" DataSourceID="SqlDataSource1" DataTextField="Ins_Name" DataValueField="Ins_ID" SelectedValue='<%# Bind("Supervisor_id") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online ExaminationConnectionString %>" SelectCommand="SELECT [Ins_ID], [Ins_Name] FROM [Instuctor]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Super" runat="server" Text='<%# Bind("Supervisor_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Salary">
                <EditItemTemplate>
                    <asp:TextBox ID="Edit_Salary" runat="server" Text='<%# Bind("Salary") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Salary" runat="server" Text='<%# Bind("Salary") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Password">
                <EditItemTemplate>
                    <asp:TextBox ID="Edit_Password" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Password" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
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
    Add Instructor:<br />
<table style="width: 100%">
    <tr>
        <td>Name:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Name" ForeColor="Red">Enter Name</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Supervisor</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter SuperVisor ID" ForeColor="Red">Enter SuperVisor ID</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Salary:</td>
        <td>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Salary" ForeColor="Red">Enter Salary</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>Password:</td>
        <td>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Password" ForeColor="Red">Enter Password</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        </td>
        <td>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
        </td>
    </tr>
  
</table>
</asp:Content>

