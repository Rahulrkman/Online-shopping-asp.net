
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="macadd.aspx.cs" Inherits="WebApplication3.macadd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">

    
    <div>
        <asp:Button ID="Button1submit" runat="server" Text="Get MAC Address" OnClick="Button1submit_Click1" />

        <br />
        <asp:Label ID="lblname" runat="server" Text="Label" Visible="false"></asp:Label>
    </div>
    


</asp:Content>
