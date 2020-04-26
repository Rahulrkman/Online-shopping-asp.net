<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="WebApplication3.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 384px;
            text-align:right;
        }
    .auto-style2 {
        width: 384px;
        text-align: right;
        height: 26px;
    }
    .auto-style3 {
        height: 26px;
        align-content:center;
    }
        .auto-style4 {
            width: 384px;
            text-align: right;
            height: 10px;
        }
        .auto-style5 {
            height: 10px;
        }
        .style1
    {
        height: 26px;
        align-content: center;
        text-align: center;
    }
    .style2
    {
        width: 384px;
        text-align: center;
        height: 26px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                
                <asp:Label ID="Label1" runat="server" Text="Review" Font-Size="20pt" ForeColor="Black" >
                    

                    
                </asp:Label>
            </td>
            <td class="auto-style3"></td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4" style="font-size: 20px">
                E-Mail</td>
            <td class="auto-style5">
            <asp:TextBox ID="txtemail" runat="server"  TextMode="Email" Width="250px" ></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Enter Email" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td class="auto-style5"></td>
        </tr>
        <tr>
            <td class="auto-style1" style="font-size: 20px">Review</td>
            <td>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="146px" Width="309px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [product_name], [product_price] FROM [Product]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [product_name] FROM [storage_devices]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [name] FROM [laptop]"></asp:SqlDataSource>
            </td>
            <td><asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Post" Width="152px" />
                <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Back" 
                    Width="138px" />
             </td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
