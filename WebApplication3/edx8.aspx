<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="edx8.aspx.cs" Inherits="WebApplication3.edx8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
        DataSourceID="SqlDataSource1" RepeatColumns="3" RepeatDirection="Horizontal" 
        style="margin-bottom: 0px" BackColor="#DEBA84" BorderColor="#DEBA84" 
    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
    GridLines="Both" onitemcommand="DataList1_ItemCommand" Width="547px">
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label2" runat="server" Text="Id"></asp:Label>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <asp:Image ID="Image2" runat="server" Height="200px" 
                            ImageUrl='<%# Eval("product_images") %>' Width="150px" 
                            style="text-align: center" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        Rs.
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("product_price") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        qty:<asp:Label ID="Label5" runat="server" Text='<%# Eval("product_qty") %>'></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Button ID="Button3" runat="server" CommandName="addtocart" Height="30px" 
                onclick="Button3_Click" Text="Cart" CommandArgument='<%Eval("id") %>' Width="199px" />
            <br />
        </ItemTemplate>
        <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [storage_devices]">
    </asp:SqlDataSource>
</asp:Content>
