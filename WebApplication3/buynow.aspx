<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="buynow.aspx.cs" Inherits="WebApplication3.buynow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 193px;
            height: 8px;
            text-align: center;
        }
        .auto-style4 {
            height: 8px;
        }
        .auto-style7 {
            height: 19px;
        }
        .auto-style11 {
            height: 8px;
            width: 301px;
        }
        .auto-style14 {
            width: 193px;
            text-align: center;
            height: 19px;
        }
        .auto-style15 {
            width: 193px;
            text-align: center;
        }
        .auto-style16 {
            height: 19px;
            width: 301px;
        }
        .auto-style17 {
            width: 301px;
        }
    </style>
    <style type="image/css" >
        .image {
            width:100px;
            height:100px;
   
            
        }

    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" BorderWidth="2px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" ForeColor="#333333" GridLines="None" Height="200px" 
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="944px" 
            SelectedIndex="1">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:ImageField DataImageUrlField="productimage" HeaderText="Product image" ControlStyle-CssClass="image">
                <ControlStyle Height="150px" Width="150px" />
                <HeaderStyle Font-Size="Large" Height="30px" />
                <ItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
            </asp:ImageField>
            <asp:BoundField DataField="productname" HeaderText="Product name">
            <HeaderStyle Font-Size="Large" />
            <ItemStyle Font-Size="Large" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
            </asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price">
            <HeaderStyle Font-Size="Large" />
            <ItemStyle Font-Size="Large" HorizontalAlign="Center" VerticalAlign="Middle" Width="150px" />
            </asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" 
            HorizontalAlign="Center" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
       <center> <asp:Button ID="Button1" runat="server" Text="Next" OnClick="Next1" Width="290px" Height="40px" BackColor="#4096EE" /></center>
        </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
   



    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
    <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" BorderWidth="2px">
        <table class="auto-style1">
            <tr>
                <td class="auto-style14">
                    <asp:Label ID="Label2" runat="server" Text="Name:" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style16">
                    <asp:Label ID="Label5" runat="server" Font-Size="Large" ForeColor="#009933"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style14"></td>
                <td class="auto-style16"></td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label3" runat="server" Text="Address:" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label6" runat="server" Font-Size="Large" ForeColor="#33CC33"></asp:Label>
                </td>
                <td>
                    <asp:Panel ID="Panel3" runat="server">
                        <table style="width: 100%;">
                            <tr>
                                <td class="style2">
                                    <asp:CheckBox ID="CheckBox2" runat="server" checked="true" onclick="forRentClicked(this)" />
                                </td>
                                <td>
                                    <asp:Label ID="Label1" runat="server" text="You Want To change Addres (Your Default Address is Selected*)"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:Label ID="Label8" runat="server" Text="Label" Visible="False"></asp:Label></td>
                                <td><asp:TextBox ID="txtadd" runat="server" CssClass="txt" TextMode="MultiLine" Width="160px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Email], [Username], [Mobile] FROM [Registration]"></asp:SqlDataSource>
                                </td>
                                <td>
                                    <asp:Label ID="Label16" runat="server" Visible="False"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label17" runat="server" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <center>
                        </center>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:Label ID="Label4" runat="server" Text="Phone Number:" Font-Size="Large"></asp:Label>
                </td>
                <td class="auto-style17">
                    <asp:Label ID="Label7" runat="server" Font-Size="Large" ForeColor="#33CC33"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style17">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style11">
                   
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
         <center><asp:Button ID="Button2" runat="server" Height="40px" Text="Next" Width="290px" BackColor="#4096EE" /></center>
    </asp:Panel>
    <br/>
     <asp:Panel ID="Panel4" runat="server" BorderStyle="Solid" BorderWidth="2px">
        <center> <asp:Label ID="Label14" runat="server" Text="PAYMENT:" Font-Names="Adobe Devanagari" Font-Size="X-Large"></asp:Label>
         <br/>
            <asp:Label ID="Label18" runat="server" Visible="False"></asp:Label>
         <asp:Label ID="Label15" runat="server" Font-Size="Large" Text="Payment Method:"></asp:Label>
         <asp:RadioButton ID="RadioButton1" runat="server" Text="Cash On Delivery(COD)" Checked="True" Font-Size="Large" />
         </center></asp:Panel>

    <br />

    <br />
    <asp:Panel ID="Panel5" runat="server">
        <asp:Button ID="Button3" runat="server" Text="Buy Now" Height="56px" Width="472px" BackColor="#FB641B" Font-Names="Segoe Print" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Height="56px" Text="Cancel" Width="474px" BackColor="#FF9F00" Font-Names="Segoe Print" />
    </asp:Panel>
       



</asp:Content>
