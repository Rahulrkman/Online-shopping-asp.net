<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Examplelogin.aspx.cs" Inherits="WebApplication3.Examplelogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" type="text/css" href="stylelogin.css"/>
</head>
<body>
    <div class="login-box">
    <img src="images/avatar.png" class="avatar"/>
        <h1>Login Here</h1>
            
            <p>Username</p>
            <input type="text" name="username" placeholder="Enter Username"/>
            <p>Password</p>
            <input type="password" name="password" placeholder="Enter Password"/>
            <input type="submit" name="submit" value="Login"/>
            <a href="#">Forget Password</a>    
           
        
        
        </div>
</body>
</html>
