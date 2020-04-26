<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="WebApplication3.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
<asp:Repeater ID="D1" runat="server" onitemcommand="D1_ItemCommand">
<ItemTemplate>
               <a href="WebForm2.aspx?id=<%#Eval("id") %> "><img src="../<%#Eval("product_images")%>" alt=" " /></a>



</ItemTemplate>












</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
</asp:Content>
