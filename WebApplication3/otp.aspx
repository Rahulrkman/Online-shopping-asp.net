<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="otp.aspx.cs" Inherits="WebApplication3.otp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
     <link rel="stylesheet" type="text/css" href="stylelogin.css"/>
</head>
<body>
    <div class="login-box">
    
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        
            
            <p>Enter Mobile Number:</p>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Mobile Number" CssClass="t1"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" CssClass="rc" Text="Send OTP" />
            <p>Enter OTP:</p>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter OTP" CssClass="t1"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" CssClass="rc" Text="Submit" />
            
  </div>  
</body>
</html>
</asp:Content>
