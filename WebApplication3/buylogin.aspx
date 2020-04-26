<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="buylogin.aspx.cs" Inherits="WebApplication3.buylogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <!DOCTYPE html>
    <style>
        .formClass
        {
            padding:10px;
            margin-top:100px;
            width:100%;   
        }
        .input
        {
            padding:10px;
            
        }
        .style5
        {
            width: 292px;
            text-align: center;
        }
        .style6
        {
            width: 334px;
            text-align: right;
        }
        .style7
        {
            width: 334px;
        }
        .style8
        {
            width: 292px;
            text-align: center;
        }
    </style>
    <body>
    <asp:Panel ID="Panel1" runat="server">
    <div class="formClass">
    <center>    
        <table style="width:100%;">
            <tr>
                <td class="style6">
                    <asp:Label ID="Label1" runat="server" CssClass="input" Text="Username" 
                        Width="100px"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input" 
                        placeHolder="Username" Width="225px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox1" Display="Dynamic" 
                        ErrorMessage="Username Required*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:Label ID="Label2" runat="server" CssClass="input" Text="Password" 
                        Width="100px"></asp:Label>
                </td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input" 
                        placeHolder="Password" TextMode="Password" Width="225px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox2" Display="Dynamic" 
                        ErrorMessage="Password Required*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                        style="text-align: center" Text="Log In and continue" Width="129px" />
                </td>
                
            </tr>
        </table>
        <br/>
        <td colspan="2" align="center" style="color: #006600">
            New User
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registrationaspx.aspx">Register Here</asp:HyperLink>
        </td>
        <br/>
        <br/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Username], [Password] FROM [Registration]">
        </asp:SqlDataSource>
        <br/>
        <br/>
    </center>
        </asp:Panel>
    </div>
    </body>
</asp:Content>
