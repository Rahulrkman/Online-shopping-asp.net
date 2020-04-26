<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registrationaspx.aspx.cs" Inherits="WebApplication3.Registrationaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Contentbody" runat="server">
    <DOCTYPE html>
<style>
    
        .style6
        {
            color: Green;
            text-align: right;
            height: 24px;
        }
        .style7
        {
            height: 24px;
        text-align: left;
    }
  
    .tblhead
    {
        font-weight: 700;
        font-size: medium;
        text-align: center;
    }
    .style8
    {
        font-size: medium;
        text-align: left;
        font-weight: 700;
    }
  
    .style9
    {
        text-align: left;
    }
  
    .style10
    {
        height: 28px;
    }
    .txt
    {}
  
</style>
<body>
<center>
<table class="tbl">
    <tr>
        <td class="lbl">
            &nbsp;</td>
        <td class="style8">
            Registration Form</td>
    </tr>
    <tr>
        <td class="lbl">
            &nbsp;</td>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            Name :
        </td>
        <td style="text-align: left; margin-left: 40px;">
            <asp:TextBox ID="txtname" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Surname :
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txtsname" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtsname" ErrorMessage="Enter Surname" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Address :
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txtadd" runat="server" CssClass="txt" Width="160px" 
                TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtadd" ErrorMessage="Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            City :
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txtcity" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtcity" ErrorMessage="Enter City" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Pincode :
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txtppin" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                ControlToValidate="txtppin" ErrorMessage="Enter Pincode" ForeColor="Red" 
                MaximumValue="999999" MinimumValue="100000" Type="Double"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td class="style10">
            Gender:</td>
        <td style="text-align: left" class="style10">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Mobile :
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txtmo" runat="server" CssClass="txt" Width="160px" 
                MaxLength="10"></asp:TextBox>
                
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ControlToValidate="txtmo" ErrorMessage="Enter Mobile" ForeColor="Red" 
                ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Email :</td>
        <td style="text-align: left">
            <asp:TextBox ID="txtemail" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                ControlToValidate="txtemail" ErrorMessage="Enter Email" ForeColor="Red" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            Username:
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txtUsername" runat="server" CssClass="txt" Width="160px"></asp:TextBox>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtname" ErrorMessage="Enter Username" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
    </tr>
    <tr>
        <td class="lbl">
            Password :
        </td>
        <td style="text-align: left">
            <asp:TextBox ID="txtpass" runat="server" CssClass="txt" Width="160px" 
                TextMode="Password"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style6">
            Confirm - Pass :
        </td>
        <td class="style7">
            <asp:TextBox ID="txtcpass" runat="server" CssClass="txt" Width="160px" 
                TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtpass" ControlToValidate="txtcpass" 
                ErrorMessage="passwod does not match" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Registration]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            &nbsp;</td>
        <td align="left">
            <asp:Button ID="Button3" runat="server" Text="Register Now" onclick="Button3_Click" />
            
        </td>
    </tr>
    <tr>
        <td colspan="2" style="color: #006600" class="style9">
            Already have an username and password
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/crazyLogin.aspx">Login Here</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="color: #006600" class="style9">
            <center>To Enable Privacy Click Here
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Privacy.aspx">Privacy</asp:HyperLink></center>
        </td>
    </tr>
</table>
</center>
</body>
</html>
</asp:Content>
