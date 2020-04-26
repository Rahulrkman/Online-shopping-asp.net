<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="buynowaspx.aspx.cs" Inherits="WebApplication3.buynowaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 490px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
<script language="javascript" type="text/javascript">
    function forRentClicked(sender) {
        var tb1 = document.getElementById('<%= TextBox7.ClientID %>');
        var tb2 = document.getElementById('<%= TextBox2.ClientID %>');
        var tb3 = document.getElementById('<%= TextBox3.ClientID %>');
        var tb4 = document.getElementById('<%= TextBox4.ClientID %>');
        var tb5 = document.getElementById('<%= TextBox5.ClientID %>');
        var tb6 = document.getElementById('<%= TextBox6.ClientID %>');
        tb3.style.display = sender.checked ? 'inline' : 'none';
        tb1.style.display = sender.checked ? 'inline' : 'none';
        tb2.style.display = sender.checked ? 'inline' : 'none';
        tb4.style.display = sender.checked ? 'inline' : 'none';
        tb5.style.display = sender.checked ? 'inline' : 'none';
        tb6.style.display = sender.checked ? 'inline' : 'none';
    }
</script>
<div runat="server" id="div1" style="height:50px; width:950px; border-style:solid;border-width:1px;" >
    <h3>Important:</h3>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button3_Click"/>
    </p>   
    
    </div>
    <div runat="server" id="div2" style="height:215px; width:950px; border-style:solid;border-width:1px;" >
    <h3>Step 1:</h3>
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="style2">
                   PinCode:
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>                
            </tr>
            <tr>
                <td class="style2">
                    Address:
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>                
            </tr>
            <tr>
                <td class="style2">
                    Locality:
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px"></asp:TextBox>
                </td>                
            </tr>
            <tr>
                <td class="style2">
                    Landmark (Optional):
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>                
            </tr>
            <tr>
                <td class="style2">
                    City:
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>                
            </tr>
            <tr>
                <td class="style2">
                    State:
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>                
            </tr>
            <tr>
                <td class="style2">
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                    
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [Email], [Username], [Mobile] FROM [Registration]">
                    </asp:SqlDataSource>
                    
                </td>
                <td>
                </td>                
            </tr>
        </table>
        <center><asp:checkbox id="CheckBox1" runat="server" onclick="forRentClicked(this)" checked="false" />
                    <asp:label id="Label1" runat="server" text="You Want To change Addres (Your Default Address is Selected*)"></asp:label>                    </center>
    </p>   
    </div>
   
    
    <div runat="server" id="div3" style="height:215px; width:950px; border-style:solid;border-width:1px;" >
    <div runat="server" id="div4" style="height:215px; float:left; width:300px; border-style: solid; border-width:1px">
    <asp:Repeater ID="D13" runat="server" onitemcommand="D13_ItemCommand">
<HeaderTemplate>
</HeaderTemplate>
<ItemTemplate>
    <img src="BuyNowimages/mi6pro.jpg" height="215px" width="300px" />               
 </ItemTemplate>
</asp:Repeater>   

</div>
 <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
 <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button1_Click"/>
</div>
   </asp:Content>
