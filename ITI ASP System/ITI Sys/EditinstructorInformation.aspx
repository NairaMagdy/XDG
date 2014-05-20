<%@ Page Title="" Language="C#" MasterPageFile="~/InstructorMasterPage.master" AutoEventWireup="true" CodeFile="EditinstructorInformation.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>UserName:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Edit" />
            </td>
        </tr>
    </table>
</asp:Content>

