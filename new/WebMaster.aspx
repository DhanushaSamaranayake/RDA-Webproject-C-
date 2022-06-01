<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebMaster.aspx.cs" Inherits="new1.WebMaster" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/webmaster.css" rel="stylesheet" />
    <style>
body {
  background-image: url('assets/img/4720780.jpg');
}
</style>
</head>
<body>
   <div class="loginbox">
            <img src="assets/img/Admin-Profile-PNG-Clipart.png" alt="alternate Text" class="user"/>
            <h2>Web Master Login</h2>
            <form runat="server">
                <asp:Label Text="User Name"  Cssclass="lblemail" runat="server"/>
                <asp:TextBox runat="server" ID="username" CssClass="txtemail" placeholder="Enter Username" />
                <asp:Label Text="Password" Cssclass="lblpass" runat="server"/>
                <asp:TextBox runat="server" ID="password" CssClass="txtpass" placeholder="***********"/>
                <asp:Label Text="" ID="error" Cssclass="lblpass" runat="server"/>
                <asp:button Text="Login" CssClass="btnsubmit" runat="server" OnClick="Unnamed3_Click" />

        </div>
    </form>
</body>
</html>
