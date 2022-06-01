<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtherPartiesLogin.aspx.cs" Inherits="new1.OtherPartiesLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/OtherPartiesLogin.css" rel="stylesheet" />
    <style>
        body
        {
            background-image:url('assets/img/8655.jpg')
        }
    </style>
</head>
<body>
        <div class="loginbox">
            
            <img src="assets/img/—Pngtree—police%20officer%20faceless%20icon_7268322.png"alt="alternate Text" class="user" />
            <h2>Other Parties Login</h2>
            <form runat="server">
                <asp:Label Text="Username" Cssclass="lblemail" runat="server"/>
                <asp:TextBox runat="server" ID="username" CssClass="txtemail" placeholder="Enter Username" />
                <asp:Label Text="Password" Cssclass="lblpass" runat="server"/>
                <asp:TextBox runat="server" ID="password" CssClass="txtpass" placeholder="***********"/>
                 <asp:Label Text="" ID="error" Cssclass="lblpass" runat="server"/>
                <asp:button Text="Login" OnClick="OtherPartieslogin" CssClass="btnsubmit" runat="server" />
    
        <div>
        </div>
    </form>
</body>
</html>
