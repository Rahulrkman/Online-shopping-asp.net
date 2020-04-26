<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="otp.popup" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <style>
        .rc{
        font-size:11pt;
        margin-left:auto;
        margin-right:auto;
        margin-top:1px;
        margin-bottom:1px;
        padding:3px;
        border-top:1px solid;
        border-left:1px solid;
        border-right:1px solid;
        border-bottom:1px solid;
         -moz-border-radius:8px;
         -webkit-border-radius:8px;
   }
        .bg{
            background-color:black;
            filter:alpha(opacity=90);
            opacity:0.8;

        }

        .pp {
        background-color:aqua;
        border-width:3px;
        border-style:solid;
        border-color:black;
        padding-top:10px;
        padding-left:10px;
        width:400px;
        height:300px;
        
}
        </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div><Center>
            <asp:Panel ID="Panel1" runat="server" CssClass="pp">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter Pin TO View Cart.."></asp:Label><br/>
            <asp:TextBox ID="TextBox1" runat="server" type="password" ></asp:TextBox><br />

                <br />
                <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />

             </asp:Panel>  
            </Center>

            
            



        </div>
    </form>
</body>
</html>
