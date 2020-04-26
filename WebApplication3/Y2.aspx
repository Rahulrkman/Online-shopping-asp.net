<%@ Page EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Y2.aspx.cs" Inherits="WebApplication3.Y2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
<asp:Repeater ID="D5" runat="server" onitemcommand="D5_ItemCommand">
<HeaderTemplate>
</HeaderTemplate>
<ItemTemplate>
<div style="height:450px; width:950px; border-style:solid;border-width:1px;">

<div style="height:450px; width:250px; float:left; border-style:solid;border-width:1px;">
<img src="<%#Eval("product_images")%>" height="300" width="200">
</a>
</div>
    
    <div class="product_info">
    <h1>Product Name:<%#Eval("product_name") %></h1>
        
    </div>    
    <div class="product_Price">
    <h1>Product Price:<%#Eval("product_price") %></h1>
    </div>
    <div class="product_qty">
    <h3>Product Quantity:<%#Eval("product_qty") %></h3>
    </div>    
    <div class="product_Desc">
    <h3>OS:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("OS") %></h3>
    <h3>RAM:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("RAM") %></h3>
    <h3>Item weight:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Item_width ") %></h3>
    <h3>Dimensions:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Dimensions") %></h3>
    <h3>Model Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%#Eval("Model_Number") %></h3>
    <h3>Connectivity Techlogies:&nbsp;&nbsp;<%#Eval("Connectivity_technlogies") %></h3>
    <h3>Special Features:&nbsp;&nbsp;<%#Eval("Special_features") %></h3>
    <h3>Other Camera features:&nbsp;&nbsp;&nbsp;<%#Eval("other_Camera_features") %></h3>
    <h3>Color:&nbsp;&nbsp;&nbsp;<%#Eval("Colour") %></h3>
    <h3>Battery Power Rating:&nbsp;&nbsp;&nbsp;<%#Eval("Battery Power Rating") %></h3>
    <h3>Whats in the box:&nbsp;&nbsp;&nbsp;<%#Eval("Whats in the box") %></h3>
    </div>
    <br/>
    <br/>
    <br/>
    <br/>    
    <asp:Button ID="Button1" runat="server" Text="Show Reviews" OnClick="Button3_Click" Height="56px" Width="230px" BackColor="#43C6AC" />
    <asp:Button ID="Button3" runat="server" Text="Buy Now" OnClick="Button1_Click" Height="56px" Width="230px" BackColor="#FD9026" />
    <asp:Button ID="Button2" runat="server" Text="Review" OnClick="Button2_Click" CommandName="WebForm4" CommandArgument='<%# Eval("id")%>'  Height="56px" Width="230px" BackColor="#FF2C65" />      
</div>
</ItemTemplate>
</asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
   



</asp:Content>
