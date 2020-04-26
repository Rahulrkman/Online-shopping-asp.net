<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admindataentry.aspx.cs" Inherits="WebApplication3.admindataentry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <table style="width: 100%;">
        <tr>
            <td>
                ID:
            </td>
            <td style="text-align: left">
                
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Product name
            </td>
            <td style="text-align: left">
                
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                Product Desc</td>
            <td style="text-align: left">
                &nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                product Price</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Product qty</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Product image</td>
            <td>
                <asp:FileUpload ID="f1" runat="server" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                Product WebForm</td>
            <td>
                <asp:FileUpload ID="f2" runat="server" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="SqlDataSource1" />
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Upload" />
                <asp:Button ID="Button2" runat="server" Text="AddLaptops" onclick="Button2_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
