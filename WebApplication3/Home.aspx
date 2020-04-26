<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication3.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        </style>
    <style>
.container {
  position: relative;
  width: 50%;
}

.image {
  opacity: 1;
  display: block;
  width: 100%;
  height: auto;
  transition: .5s ease;
  backface-visibility: hidden;
}

.middle {
  transition: .5s ease;
  opacity: 0;
  position: absolute;
  top: 50%;
  left: 40%;
  right: 60%;
  bottom: 50%;
  padding-right:10px;
  --padding-left:10px;
  background: -webkit-linear-gradient(top, #f0feb8 0%,#bcd022 69%);
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  text-align: center;
}

.container:hover .image {
  opacity: 0.3;
}

.container:hover .middle {
  opacity: 1;
}

.text {
  background-color: #4CAF50;
  color: white;
  font-size: 16px;
  padding-bottom: 16px;
  padding-top: 16px;
  padding-right: 60px;
  padding-left: 32px;
  text-align: center;
}        
.style3{
            text-align: center;
}
</style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <div>
   <center>
        <asp:ScriptManager ID="ScriptManager1" runat="server" />

        <asp:Timer ID="Timer1" Interval="2000" runat="server" />

        <asp:UpdatePanel ID="up2" runat="server">

            <Triggers>

                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />

            </Triggers>

            <ContentTemplate>

                 <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile = "adfile.xml"  
        Target =  "_blank" Height="300px" Width="950px" />

            </ContentTemplate>

        </asp:UpdatePanel>
        </center>
        
        <div class="container">   
       <asp:DataList ID="DataList1" runat="server" BackColor="#FFFF99" 
           DataSourceID="SqlDataSource1" Font-Bold="False" Font-Italic="False" 
           Font-Overline="False" Font-Strikeout="False" Font-Underline="False" 
           HorizontalAlign="Left" RepeatColumns="5" Width="950px">
           <ItemTemplate>
               <table class="style2">
                   <tr>
                       <td class="style3">
                           <div class="container">
                           <asp:ImageButton ID="ImageButton3" runat="server" Height="207px" 
                               ImageUrl='<%# Eval("product_images") %>' class="image" Width="175px" />                               
                               
                          <div class="middle">
                        <center><asp:Button ID="Button2" runat="server" Height="61px" Text="Buy Now"  OnClick="Button2_Click"
                                   Width="116px" CssClass="buy" style="background-color:#4096ee !important;"/></center>
                        </div>
                               
                        </div>
                       </td>
                   </tr>                   
                   <tr>
                       <td class="style3">
                           <asp:Label ID="Label2" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                           <asp:Label ID="Label1" runat="server" Text="₹"></asp:Label>
                           <asp:Label ID="Label3" runat="server" Text='<%# Eval("product_price") %>'></asp:Label>
                       </td>
                   </tr>
                   
               </table>
               <br />
               <br />
           </ItemTemplate>
       </asp:DataList>
       </div>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           SelectCommand="SELECT [product_name], [product_price], [product_images] FROM [Product]">
       </asp:SqlDataSource>
    </div>
</asp:Content>