﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication3.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
<asp:Repeater ID="D2" runat="server" onitemcommand="D2_ItemCommand">
<HeaderTemplate>
</HeaderTemplate>
<ItemTemplate>
<div style="height:450px; width:800px; border-style:solid;border-width:1px;">

<div style="height:450px; width:250px; float:left; border-style:solid;border-width:1px;">
<img src="<%#Eval("product_images")%>" height="300" width="200">
</a>
</div>
    <div class="product_info">
    <h1><%#Eval("product_name") %>></h1>
    </div>
    <div class="product_Desc">
    <h3><%#Eval("product_desc") %>></h3>
    </div>
    <div class="product_Price">
    <h3><%#Eval("product_price") %>></h3>
    </div>
    <div class="product_qty">
    <h3><%#Eval("product_qty") %>></h3>
    </div>
    <asp:Button ID="Button1" runat="server" Text="Buy Now" />
</div>
</ItemTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
   





</asp:Content>
