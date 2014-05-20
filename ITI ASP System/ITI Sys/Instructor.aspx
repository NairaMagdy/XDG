<%@ Page Title="" Language="C#" MasterPageFile="~/InstructorMasterPage.master" AutoEventWireup="true" CodeFile="Instructor.aspx.cs" Inherits="Instructor" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>Name</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>Supervisor</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="height: 24px">Salary</td>
            <td style="height: 24px">
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
       
        <tr>
            <td style="height: 24px">UserName:</td>
            <td style="height: 24px">
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
       
        <tr>
            <td style="height: 24px">Password:</td>
            <td style="height: 24px">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
       
    </table>
  
   
    
</asp:Content>

