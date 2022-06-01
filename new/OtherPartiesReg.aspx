<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OtherPartiesReg.aspx.cs" Inherits="new1.OtherPartiesReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/otherpartiesreg.css" rel="stylesheet" />
     <style>
body {
  background-image: url('assets/img/3766797.jpg');
}
</style>
</head>
<body>
      <div class="loginbox">

            <img src="assets/img/—Pngtree—police%20officer%20faceless%20icon_7268322.png" alt="alternate Text" class="user" />
            
            <h2>Other parties Registration</h2>
          <h6 style="margin-left:65px; color:floralwhite;">Welcome Back:&nbsp;
            <asp:Label ID="Email" CssClass="control-label" style="color:#ffcb00;" runat="server" Text=""></asp:Label>
          </h6>
           
            <form runat="server">
                <asp:Label Text="Username" Cssclass="lblemail" runat="server"/>
                <asp:TextBox runat="server" ID="username" CssClass="txtemail" placeholder="Enter Username" />
                <asp:Label Text="Password" Cssclass="lblpass" runat="server"/>
                <asp:TextBox runat="server" ID="password" CssClass="txtpass" placeholder="***********"/>
                <asp:Label Text="" ID="error" Cssclass="lblpass" runat="server"/>
                <asp:button Text="Register" OnClick="partiesreg" CssClass="btnsubmit" runat="server" />
                </div>
        <div>
        </div>
    </form>
</body>
</html>
