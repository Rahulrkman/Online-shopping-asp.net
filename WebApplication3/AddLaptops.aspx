<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddLaptops.aspx.cs" Inherits="WebApplication3.AddLaptops" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 349px;
            text-align: left;
        }
        .style2
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="style1">
    <asp:Label ID="Label1" runat="server" Text="id"></asp:Label>
                
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;
                Name</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                Description</td>
            <td>
                &nbsp;
                </td>
            <td>
                &nbsp; <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;           
                Price</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                RAM</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                Processor</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        
       
       
        <tr>
            <td class="style1">
                Display_Size</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        
        <tr>
            <td class="style1">
                Hard_Disk_Size</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox8" runat="server" 
                    ></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        
        <tr>
            <td class="style1">
                Weight</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        
        <tr>
            <td class="style1">
                &nbsp;Model_Number</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style1">
                Operating_system</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr><tr>
            <td class="style1">
                &nbsp; Product_qty</td>
            <td>
                &nbsp;
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label18" runat="server" Text="Product_img1"></asp:Label>           
            </td>
            <td>
                &nbsp;
                <asp:FileUpload ID="F1" runat="server" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label19" runat="server" Text="Product_img2"></asp:Label>          
            </td>
            <td>
                &nbsp;
                <asp:FileUpload ID="F2" runat="server" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;<asp:Label ID="Label20" runat="server" Text="Product_img3"></asp:Label>          
            </td>
            <td>
                &nbsp;
                <asp:FileUpload ID="F3" runat="server" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Product_webform"></asp:Label>          
            </td>
            <td>
                &nbsp;
                <asp:FileUpload ID="F4" runat="server" />
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;           
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [laptop]"></asp:SqlDataSource>
            </td>
            <td>
               
                <asp:Button ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
               
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
    
</asp:Content>
