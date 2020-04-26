<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HP notebook15.aspx.cs" Inherits="WebApplication3.HP_notebook15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">



<asp:Repeater ID="D4" runat="server" onitemcommand="D4_ItemCommand">
<HeaderTemplate>
</HeaderTemplate>
<ItemTemplate>
<div style="height:450px; width:800px; border-style:solid;border-width:1px;">

<div style="height:450px; width:300px; float:left; border-style:solid;border-width:1px;">
    
    <img src="<%#Eval("product_img1")%>" height="300" width="300">
</a>
</div>
    <div class="product_info">
    <h1><%#Eval("name") %>></h1>
    </div>
    <div class="product_Desc">
    <h1><%#Eval("description") %>></h1>
    </div>
    <div class="product_Price">
    <h1><%#Eval("price") %>></h1>
    </div>
    <div class="product_qty">
    <h1><%#Eval("product_qty") %>></h1>
    </div>
    <div class="RAM">
    <h1><%#Eval("RAM") %>></h1>
    </div>
    <div class="processor">
    <h1><%#Eval("processor") %>></h1>
    </div>
    <div class="display_size">
    <h1><%#Eval("display_size")%>></h1>
    </div>
    <div class="hard_disk_size">
    <h1><%#Eval("hard_disk_size")%>></h1>
    </div>
    <div class="model_number">
    <h1><%#Eval("model_number")%>></h1>
    </div>
    <div class="operating_system">
    <h1><%#Eval("operating_system")%>></h1>
    </div>
    
    <asp:Button ID="Button1" runat="server" Text="Buy Now" />
    <asp:Button ID="Button2" runat="server" Text="Review" OnClick="Button2_Click"/>
</div>
</ItemTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [laptop]"></asp:SqlDataSource>
   



</asp:Content>
