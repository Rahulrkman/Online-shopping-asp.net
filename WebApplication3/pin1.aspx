<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pin1.aspx.cs" Inherits="WebApplication3.pin1" %>

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
<body>
    
       
       <form id="form1" runat="server">
        <br />

        <div>
            <br />
            
            <center><asp:Panel ID="Panel1" runat="server" CssClass="pp" HorizontalAlign="Center" >
            <br />
                <table style="width: 100%;">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Pin"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        
                   
                                                   
                    </tr>
                    <tr>
                    <td><asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click"></asp:Button>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [UserActivation]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    
                </table>
             </asp:Panel>  </center>
            


        </div>
    </form>
</body>

</html>

