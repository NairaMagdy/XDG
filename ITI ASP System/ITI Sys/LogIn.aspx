<%@ Page Title="" Language="C#" MasterPageFile="~/Master1.master" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="UserName:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server">Change Password?</asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="HyperLink2" runat="server">Forget Password?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" Width="80px" ImageUrl="images/sign_in.gif" Height="20px" OnClick="ImageButton1_Click"  />                
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                </td>
        </tr>
    </table>
</asp:Content>

