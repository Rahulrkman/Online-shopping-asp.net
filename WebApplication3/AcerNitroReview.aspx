<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AcerNitroReview.aspx.cs" Inherits="WebApplication3.AcerNitroReview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
<style type="text/css">
        .auto-style1 {
            width: 384px;
            text-align:right;
        }
    .auto-style2 {
        width: 384px;
        text-align: right;
        height: 26px;
    }
    .auto-style3 {
        height: 26px;
        align-content:center;
    }
        .auto-style4 {
            width: 384px;
            text-align: right;
            height: 10px;
        }
        .auto-style5 {
            height: 10px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    
<body>
    
        <div>
        <center>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Pristina" 
                Font-Size="X-Large" Text="Review Form"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="1) Do you like the product?" 
                Font-Size="Medium" ForeColor="Black"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server">
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" 
                    GroupName="Q1" Text="Yes" Font-Size="Small" ForeColor="#009900" 
                    oncheckedchanged="RadioButton1_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" 
                    GroupName="Q1" Text="No" Font-Size="Small" ForeColor="Red" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" 
                    GroupName="Q1" Text="Not sure" Font-Size="Small" ForeColor="#3366FF" />
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="2) Whether it fulfiled your needs?" 
                Font-Size="Medium"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server">
                <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" 
                    GroupName="Q2" Text="Yes" Font-Size="Small" ForeColor="#009900" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton5" runat="server" AutoPostBack="True" 
                    GroupName="Q2" Text="No" Font-Size="Small" ForeColor="Red" 
                    oncheckedchanged="RadioButton5_CheckedChanged" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton6" runat="server" AutoPostBack="True" 
                    GroupName="Q2" Text="Not sure" Font-Size="Small" ForeColor="#3366FF" />
            </asp:Panel>
            &nbsp;
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="3) Does it Function well?" 
                Font-Size="Medium"></asp:Label>
            &nbsp;
            <br />
            <br />
            <asp:Panel ID="Panel3" runat="server">
                <asp:RadioButton ID="RadioButton7" runat="server" AutoPostBack="True" 
                    GroupName="Q3" Text="Yes" Font-Size="Small" ForeColor="#009900" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton8" runat="server" AutoPostBack="True" 
                    GroupName="Q3" Text="No" Font-Size="Small" ForeColor="Red" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton9" runat="server" AutoPostBack="True" 
                    GroupName="Q3" Text="Not sure" Font-Size="Small" ForeColor="#3366FF" />
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="4) Is it resonable?" 
                Font-Size="Medium"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel4" runat="server">
                <asp:RadioButton ID="RadioButton10" runat="server" AutoPostBack="True" 
                    GroupName="Q4" Text="Yes" Font-Size="Small" ForeColor="#009900" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton11" runat="server" AutoPostBack="True" 
                    GroupName="Q4" Text="No" Font-Size="Small" ForeColor="Red" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton12" runat="server" AutoPostBack="True" 
                    GroupName="Q4" Text="Not sure" Font-Size="Small" ForeColor="#3366FF" />
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" 
                Text="5) Will you recommend this to your friends?" Font-Size="Medium"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel5" runat="server">
                <asp:RadioButton ID="RadioButton13" runat="server" AutoPostBack="True" 
                    GroupName="Q5" Text="Yes" Font-Size="Small" ForeColor="#009900" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton14" runat="server" AutoPostBack="True" 
                    GroupName="Q5" Text="No" Font-Size="Small" ForeColor="Red" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton15" runat="server" AutoPostBack="True" 
                    GroupName="Q5" Text="Not sure" Font-Size="Small" ForeColor="#3366FF" />
            </asp:Panel>

            <asp:Panel ID="Panel6" runat="server">
                <br />
                <br />
                <asp:Label ID="Label7" runat="server" Text="Enter Your Own Review" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="Black"></asp:Label><br />
                <br />
                &nbsp;<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 35px" 
                    Width="465px"></asp:TextBox>
            </asp:Panel>
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Submit Review" CommandArgument='<%# Eval("id")%>' 
                CommandName="REVIEWMCQ" BackColor="#009900" BorderColor="#3366FF" 
                ForeColor="Red" />
            <br />
            <asp:Label ID="Label11" runat="server" ><%= Request.QueryString["id"] %></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [product_name] FROM [Product]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            
            <asp:Label ID="Label13" runat="server" Font-Bold="False" Font-Size="Large" 
                Text="You gave  Review from email:"></asp:Label>
            
            <asp:Label ID="Label8" runat="server" Font-Size="Large"></asp:Label>
            <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
            <%#Eval("product_name") %>
            <asp:Label ID="Label14" runat="server" Font-Size="Large" Text="to:"></asp:Label>
            <asp:Label ID="Label12" runat="server" Text='<%# Eval("product_name") %>' 
                Font-Size="Large"></asp:Label>
            </center>
        </div>
 
    

</body>
</asp:Content>
