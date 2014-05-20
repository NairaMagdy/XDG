<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMasterPage.master" AutoEventWireup="true" CodeFile="EditStudentinformationbyadmin.aspx.cs" Inherits="EditStudentinformationbyadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="St_ID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
            <asp:TemplateField HeaderText="ST_ID">
                <EditItemTemplate>
                    <asp:Label ID="EditID" runat="server" Text='<%# Bind("St_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="ID" runat="server" Text='<%# Bind("St_ID") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="St_Fname">
                <EditItemTemplate>
                    <asp:TextBox ID="Edit_F_Name" runat="server" Text='<%# Bind("St_Fname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="F_Name" runat="server" Text='<%# Bind("St_Fname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="St_Lname">
                <EditItemTemplate>
                    <asp:TextBox ID="Edit_L_Name" runat="server" Text='<%# Bind("St_Lname") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="L_Name" runat="server" Text='<%# Bind("St_Lname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="Edit_Address" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Address" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Age">
                <EditItemTemplate>
                    <asp:TextBox ID="Edit_Age" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Age" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Dept_No">
                <EditItemTemplate>
                    <asp:DropDownList ID="Edit_Dept" runat="server" DataSourceID="SqlDataSource2" DataTextField="Dept_Name" DataValueField="Dept_No" SelectedValue='<%# Bind("Dept_no") %>' AppendDataBoundItems="true">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Online ExaminationConnectionString %>" SelectCommand="SELECT [Dept_No], [Dept_Name] FROM [Departement]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Dept" runat="server" Text='<%# Bind("Dept_no") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Leader">
                <EditItemTemplate>
                    <asp:DropDownList ID="Edit_Leader" runat="server" DataSourceID="SqlDataSource1" DataTextField="St_Fname" DataValueField="St_ID" SelectedValue='<%# Bind("Leader") %>' AppendDataBoundItems="true">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online ExaminationConnectionString %>" SelectCommand="SELECT [St_ID], [St_Fname] FROM [Student]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Leader" runat="server" Text='<%# Bind("Leader") %>'></asp:Label>
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
            <asp:TemplateField HeaderText="UserName">
                <EditItemTemplate>
                    <asp:TextBox ID="Edit_UserName" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="UserName" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
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
    <br />
    <table style="width: 100%">
        <tr>
            <td>St_Fname:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter First Name" ForeColor="Red">Enter First Name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>St_Lname:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Last Name" ForeColor="Red">Enter Last Name</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Address:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Student Addres" ForeColor="Red">Enter Student Addres</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Age:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Age" ForeColor="Red">Enter Age</asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Age must be from 21 to 25" ForeColor="Red" MaximumValue="25" MinimumValue="21"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td>Dept:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Dept_Name" DataValueField="Dept_No">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Online ExaminationConnectionString %>" SelectCommand="SELECT [Dept_No], [Dept_Name] FROM [Departement]"></asp:SqlDataSource>

            </td>
        </tr>
        <tr>
            <td>Leader:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Enter Leader ID" ForeColor="Red">Enter Leader ID</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="Enter Password" ForeColor="Red">Enter Password</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>UserName:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Enter UserName" ForeColor="Red">Enter UserName</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            </td>
        </tr>
    </table>
</asp:Content>

