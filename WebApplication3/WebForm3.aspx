
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="WebApplication3.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    
<asp:Repeater ID="D2" runat="server" DataSourceID="SqlDataSource1" 
        onitemcommand="D2_ItemCommand">
<HeaderTemplate>
</HeaderTemplate>
<ItemTemplate>
<head>
<link href="main.css" rel="stylesheet" type="text/css" />
<style>
input
{
    margin:20px;
}
</style>
</head>
<div style="height:300px; width:300px; float:right; border-style:solid;border-width:1px;">
<a href="<%#Eval("PRODUCT_WEBFORM") %>?id=<%#Eval("id") %>>"><img src="<%#Eval("Product_images1")%>" height="250" width="314">

<h3><%#Eval("product_name") %>></h3>
    
<asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="50px" Width="157px" CssClass="catbutton" style="background-color:#4096ee !important;" CommandArgument='<%#Eval("id") %>' CommandName="buynow"/><asp:Button ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("id")%>' CommandName="addtocart1" Height="50px" Width="157px" style="background-color:#4096ee !important;"/>

</div>

</ItemTemplate>



<ItemTemplate>

<div style="height:300px; width:300px; float:left; border-style:solid;border-width:1px;">
<a href="<%#Eval("PRODUCT_WEBFORM") %>?id=<%#Eval("id") %>>"><img src="<%#Eval("Product_images1")%>" height="250" width="314">


    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click"  Height="50px" Width="157px" CssClass="catbutton" style="background-color:#4096ee !important;" CommandArgument='<%#Eval("id") %>' CommandName="buynow"/><asp:Button ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("id")%>' CommandName="addtocart1" Height="50px" Width="157px" style="background-color:#4096ee !important;" />
    
</div>

</ItemTemplate>


<ItemTemplate>

<div style="height:300px; width:314px; float:left; border-style:solid;border-width:1px;">
<a href="<%#Eval("product_webform") %>?id=<%#Eval("id") %>>"><img src="<%#Eval("product_img1")%>" height="250" width="314">


    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click"  Height="50px" Width="157px" CssClass="catbutton" CommandArgument='<%#Eval("id") %>' CommandName="buynow"/><asp:Button ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" Height="50px" Width="157px" CssClass="catbutton"/>
    
</div>

</ItemTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [laptop]"></asp:SqlDataSource>
</asp:Content>
