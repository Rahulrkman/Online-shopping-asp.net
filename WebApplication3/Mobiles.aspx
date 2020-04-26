<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Mobiles.aspx.cs" Inherits="WebApplication3.Mobiles" %>
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

<div style="height:500px; width:314px; float:right; border-style:solid;border-width:1px;">
<a href="<%#Eval("PRODUCT_WEBFORM") %>?id=<%#Eval("id") %>"> <img src="<%#Eval("Product_images1")%>" height="450" width="300"/></a>

<h3><%#Eval("product_name") %></h3>
    
    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="50px" Width="157px" CssClass="buy" CommandArgument='<%#Eval("id") %>' CommandName="buynow" /><asp:Button ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" OnClick="Button2_Click" CssClass="buy"  Height="50px" Width="157px"/>
</div>

</ItemTemplate>



<ItemTemplate>

<div style="height:500px; width:314px; float:left; border-style:solid;border-width:1px;">
<a href="<%#Eval("PRODUCT_WEBFORM") %>?id=<%#Eval("id") %>"><img src="<%#Eval("Product_images1")%>" height="450" width="300"/>


    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="50px" Width="157px" CssClass="buy" CommandArgument='<%#Eval("id") %>' CommandName="buynow"/><asp:Button ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" OnClick="Button2_Click" CssClass="buy"  Height="50px" Width="157px"/>
</div>

</ItemTemplate>
<ItemTemplate>

<div style="height:500px; width:314px; float:left; border-style:solid;border-width:1px;">
<a href="<%#Eval("PRODUCT_WEBFORM") %>?id=<%#Eval("id") %>"><img src="<%#Eval("Product_images")%>" height="450" width="312"/>


    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="52px" Width="157px" CssClass="buy" CommandArgument='<%#Eval("id") %>' CommandName="buynow"/><asp:Button ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" OnClick="Button2_Click" CssClass="buy"  Height="52px" Width="157px" />
  
</div>

</ItemTemplate>
</asp:Repeater>    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
</asp:Content>
