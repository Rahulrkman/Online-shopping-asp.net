<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication3.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
<!DOCTYPE html>
<body>
        <div>
        <center>
            <asp:Panel ID="Panel1" runat="server">
            
            <table style="margin:auto;width:100%;border:5px solid white">
                <center><tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                       <center> <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" Font-Italic="True" Font-Size="Larger"></asp:Label></center>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="TextBox2" runat="server" MaxLength="8"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="Password must 8 character" 
                            ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        
                        <asp:Button ID="Button1" runat="server" Text="Button" Height="25px" Width="61px" OnClick="Page_Load" />
                        
                    </td>
                </tr>
                    </center>
            </table>
            </asp:Panel>
            </center>
        </div>
    
</body>


</asp:Content>
