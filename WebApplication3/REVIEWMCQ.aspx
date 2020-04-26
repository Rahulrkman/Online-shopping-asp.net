<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REVIEWMCQ.aspx.cs" Inherits="eval.REVIEWMCQ" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
        <center>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Bauhaus 93" Font-Size="X-Large" Text="Questions"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="1) Do you like the product?"></asp:Label>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Panel ID="Panel1" runat="server">
                <asp:RadioButton ID="RadioButton1" runat="server" AutoPostBack="True" GroupName="Q1" Text="Yes" />
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" AutoPostBack="True" GroupName="Q1" Text="No" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton3" runat="server" AutoPostBack="True" GroupName="Q1" Text="Not sure" />
            </asp:Panel>
            <br />
            <br />
           <h4> <asp:Label ID="Label3" runat="server" Text="2) Whether it fulfiled your needs?"></asp:Label></h4>
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server">
                <asp:RadioButton ID="RadioButton4" runat="server" AutoPostBack="True" GroupName="Q2" Text="Yes" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton5" runat="server" AutoPostBack="True" GroupName="Q2" Text="No" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton6" runat="server" AutoPostBack="True" GroupName="Q2" Text="Not sure" />
            </asp:Panel>
            &nbsp;
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="3) Does it Function well?"></asp:Label>
            &nbsp;
            <br />
            <br />
            <asp:Panel ID="Panel3" runat="server">
                <asp:RadioButton ID="RadioButton7" runat="server" AutoPostBack="True" GroupName="Q3" Text="Yes" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton8" runat="server" AutoPostBack="True" GroupName="Q3" Text="No" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton9" runat="server" AutoPostBack="True" GroupName="Q3" Text="Not sure" />
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="4) Is it resonable?"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel4" runat="server">
                <asp:RadioButton ID="RadioButton10" runat="server" AutoPostBack="True" GroupName="Q4" Text="Yes" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton11" runat="server" AutoPostBack="True" GroupName="Q4" Text="No" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton12" runat="server" AutoPostBack="True" GroupName="Q4" Text="Not sure" />
            </asp:Panel>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="5) Will you recommend this to your friends?"></asp:Label>
            <br />
            <br />
            <asp:Panel ID="Panel5" runat="server">
                <asp:RadioButton ID="RadioButton13" runat="server" AutoPostBack="True" GroupName="Q5" Text="Yes" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton14" runat="server" AutoPostBack="True" GroupName="Q5" Text="No" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton15" runat="server" AutoPostBack="True" GroupName="Q5" Text="Not sure" />
            </asp:Panel>

            <asp:Panel ID="Panel6" runat="server">
                <asp:Label ID="Label7" runat="server" Text="Enter Your Own Review"></asp:Label><br />
                <br />
                &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </asp:Panel>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Submit Review" CommandArgument='<%# Eval("id")%>' CommandName="REVIEWMCQ" />
            <br />
            <asp:Label ID="Label11" runat="server" ><%= Request.QueryString["id"] %></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [product_name] FROM [Product]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Product]"></asp:SqlDataSource>
            
            <asp:Label ID="Label8" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label9" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
            <%#Eval("product_name") %>
            <asp:Label ID="Label12" runat="server" Text='<%#Eval("product_name") %>'></asp:Label>
            </center>
        </div>
    </form>
    

</body>
</html>
