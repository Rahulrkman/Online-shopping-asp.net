<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm10.aspx.cs" Inherits="WebApplication3.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <asp:Repeater ID="D2" runat="server" onitemcommand="D2_ItemCommand" 
        DataSourceID="SqlDataSource2">
<HeaderTemplate>
</HeaderTemplate>
<ItemTemplate>
<div style="height:100px; width:950px; border-style:solid;border-width:1px;">
<div style="height:100px; width:220px; float:left; border-style:solid;border-width:1px;">
    <div class="product_info">
    <h1><%#Eval("Product_name")%></h1>
    </div>
    </div>
    <div class="product_Desc">   
    <h3><%#Eval("Username") %></h3><br></br>
        <asp:Label ID="Label1" runat="server" Text="MI A2" Visible="false"></asp:Label>
    <center><h3><%#Eval("Review") %></h3></center>
    <center><h3 style="color: #FF0000"><%#Eval("Review_Status") %></h3></center>
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </div>
</div>
</ItemTemplate>
</asp:Repeater>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product_Review]"></asp:SqlDataSource>

    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [Review_Status] FROM [Product_Review]">
    </asp:SqlDataSource>

</asp:Content>
