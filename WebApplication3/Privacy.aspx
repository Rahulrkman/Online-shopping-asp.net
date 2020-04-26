<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Privacy.aspx.cs" Inherits="WebApplication3.Privacy" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
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
          
   
    margin: 0;
    padding: 0;
    background: url(image.jpg);
    background-size: cover;
    background-position: center;
    font-family: sans-serif;


        }

           .login-box {
               height: 330px;
               background: rgba(0, 0, 0, 0.5);
               color: #fff;
               top: 60%;
               left: 50%;
               position: absolute;
               transform: translate(-50%,-50%);
               box-sizing: border-box;
               padding: 70px 30px;
           }
           h1{
    margin: 0;
    padding: 0 0 20px;
    text-align: center;
    font-size: 22px;
}
.login-box p{
    margin: 0;
    padding: 0;
    font-weight: bold;
}
.login-box input{
    width: 100%;
    margin-bottom: 10px;
}
.login-box input[type="text"], input[type="password"]
{
    border: none;
    border-bottom: 1px solid #fff;
    background: transparent;
    outline: none;
    height: 40px;
    color: #fff;
    font-size: 16px;
}
.login-box input[type="submit"]
{
    border: none;
    outline: none;
    height: 40px;
    background: #1c8adb;
    color: #fff;
    font-size: 18px;
    border-radius: 20px;
}
.login-box input[type="submit"]:hover
{
    cursor: pointer;
    background: #39dc79;
    color: #000;
}

.login-box a{
    text-decoration: none;
    font-size: 14px;
    color: #fff;
}
.login-box a:hover
{
    color: #39dc79;
}



.login-box input:hover
{
    background-color:#d9d9d9;
}
        </style>
    
 
<body>
    
       <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <br />

        <div class="login-box">
            <br />
            
            <center><asp:Panel ID="Panel1" runat="server" CssClass="" HorizontalAlign="Center" >
            <br />
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Pin" ></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="pin" runat="server" type="password"></asp:TextBox>
                        </td>
                        
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Confirm Pin"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="cpin" runat="server" type="password"></asp:TextBox>
                        </td>                        
                    </tr>
                    <tr>
                        <br />

                    <td><asp:Button ID="Button2" runat="server" Text="Enable" onclick="Button2_Click"  ></asp:Button>
                          <p colspan="2" style="color: #006600" class="style9">
                    </td>
                    </tr>
                    
                </table>
             </asp:Panel>  </center>
            


        </div>
    
</body>
</html>

</asp:Content>
