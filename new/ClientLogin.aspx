<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClientLogin.aspx.cs" Inherits="new1.WebForm1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
  <title>RDA Login</title>
  <meta name="description" content="Road Development Authority, Accident Management Department is Sri Lankan's Largest Accident Management and Reporting Community ! ">
  <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/RDAAMS_logo.png">
  <link rel="icon" type="image/png" sizes="1500x1500" href="assets/img/RDAAMS_logo.png">
  <link rel="icon" type="image/png" sizes="undefinedxundefined" href="assets/img/RDAAMS_logo.png">
  <link rel="icon" type="image/png" sizes="undefinedxundefined" href="assets/img/RDAAMS_logo.png">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="manifest" href="manifest.json">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Bitter:400,700">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
  <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
  <link rel="stylesheet" href="assets/css/styles.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
</head>

<body>
  <div>
    <div class="header-blue" style="max-height: 100px;">
      <nav class="navbar navbar-light navbar-expand-md navigation-clean-search" style="background: linear-gradient(135deg, #991b1b, #450f41);background-color: #184e8e;padding-bottom: 80px;font-family: 'Source Sans Pro', sans-serif;">
        <div class="container-fluid"><a class="navbar-brand" href="index.html">Road Development Authority</a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon text-white"></span></button>
          <div
          class="collapse navbar-collapse" id="navcol-1" style="margin-right: -10px;">
          <ul class="nav navbar-nav">
            <li class="nav-item" role="presentation"><a class="nav-link" href="features">Features</a></li>
            <li class="nav-item" role="presentation"><a class="nav-link" href="support">Support</a></li>
          </ul>
        </div>
      </nav>
    </div>
  </div>
  <div class="login-clean" style="background-image: url(&quot;assets/img/accident.jpg&quot;);background-size: cover;background-repeat: no-repeat;">

    <form id="LoginForm" runat="server" method="post">
      <h3 class="text-center">Login to account</h3><img style="background-image: url(&quot;assets/img/user.jpg&quot;);background-size: cover;background-position: top;width: 200px;height: 200px;padding: 20px;margin-left:20px;">
    
        <asp:TextBox ID="email" TextMode="Email" MaxLength="50" CssClass="form-control" runat="server" placeholder="Email"></asp:TextBox>
        <asp:TextBox ID="password" TextMode="Password" MaxLength="30" CssClass="form-control" runat="server" placeholder="Password"></asp:TextBox>
        <asp:Label ID="error" runat="server" Text=""></asp:Label>
        <asp:Button ID="submit" type="submit" CssClass="btn btn-success btn-block" ata-bs-hover-animate="pulse"  runat="server" Text="Log In" OnClick="submit_Click"/>
        <a class="forgot" href="signup">Don't have an account? Signup here.</a>

    </form>
    </div>
    <div class="card"></div>
    <div class="footer-clean">
      <footer>
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-sm-4 col-md-3 text-center item">
              <h3>About</h3>
              <ul>
                <li><a href="http://www.rda.gov.lk/">Ministry</a></li>
              </ul>
            </div>
          </div>
        </div>
      </footer>
      <p class="text-center copyright">Road Development Authority - Accident Management Department © 2020</p>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/smart-forms.min.js"></script>
    <script src="assets/js/script.min.js"></script>
  </body>

  </html>
