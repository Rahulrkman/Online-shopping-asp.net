<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="crazyLogin.aspx.cs" Inherits="WebApplication3.crazyLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <!DOCTYPE html>
    <head>
    <title></title>
     <link rel="stylesheet" type="text/css" href="stylelogin.css"/>
</head>
    <body>
    <div class="login-box">
    <img src="images/avatar.png" class="avatar"/>
        <h1>Login Here</h1>
            
            <p>Username</p>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Username" CssClass="t1"></asp:TextBox>
            <p>Password</p>
        <asp:TextBox ID="TextBox2" type="password" runat="server"></asp:TextBox>
            
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />  
            <p colspan="2" style="color: #006600" class="style9">
            <center>
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Registrationaspx.aspx">NEW USER? REGISTER HERE</asp:HyperLink>
            </center>
        </p>              
        </div>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [Username], [Password] FROM [Registration]">
        </asp:SqlDataSource>
    </body>
</asp:Content>
