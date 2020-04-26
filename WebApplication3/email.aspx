<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="email.aspx.cs" Inherits="WebApplication1.email" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            To&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"  TextMode="Email" ></asp:TextBox>
        </p>
        <p>
            Content
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 29px" Text="send" />
        </p>
        <p>
            &nbsp;</p>

    </form>
</body>
</html>
