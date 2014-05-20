<%@ Page Title="" Language="C#" MasterPageFile="~/StudentMasterPage.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="Student" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 93px">First Name:</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 93px">Last Name:</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 93px">Address:</td>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 93px">Age:</td>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 93px">Departement:</td>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 93px">Leader:</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

