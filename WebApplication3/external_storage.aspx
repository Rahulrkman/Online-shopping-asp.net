<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="external_storage.aspx.cs" Inherits="WebApplication3.external_storage" %>
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

<div style="height:364px; width:314px; float:right; border-style:solid;border-width:1px;">
<a href="<%#Eval("PRODUCT_WEBFORM") %>?id=<%#Eval("id") %>>"><img src="<%#Eval("Product_images1")%>" height="314" width="314">

<h3><%#Eval("product_name") %>></h3>
    
    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="50px" Width="157px" CommandArgument='<%#Eval("id") %>' CommandName="buynow" /><asp:Button ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" Height="50px" Width="157px" />
</div>

</ItemTemplate>



<ItemTemplate>

<div style="height:364px; width:314px; float:left; border-style:solid;border-width:1px;">
<a href="<%#Eval("PRODUCT_WEBFORM") %>?id=<%#Eval("id") %>>"><img src="<%#Eval("Product_images1")%>" height="314" width="314">


    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="50px" Width="157px" CommandArgument='<%#Eval("id") %>' CommandName="buynow" /><asp:Button ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" Height="50px" Width="157px" />
</div>

</ItemTemplate>


<ItemTemplate>

<div style="height:364px; width:314px; float:left; border-style:solid;border-width:1px;">
<a href="<%#Eval("PRODUCT_WEBFORM") %>?id=<%#Eval("id") %>>"><img src="<%#Eval("Product_images")%>" height="314" width="314">


    <asp:Button ID="Button1" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="50px" Width="157px" CommandArgument='<%#Eval("id") %>' CommandName="buynow" /><asp:Button ID="Button2" runat="server" Text="Add To Cart" CommandArgument='<%# Eval("id")%>' CommandName="addtocart" Height="50px" Width="157px" />
</div>

</ItemTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [storage_devices]"></asp:SqlDataSource>
</asp:Content>

