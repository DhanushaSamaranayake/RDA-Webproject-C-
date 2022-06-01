<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="new1.UserRegister" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link rel="stylesheet" href="assets/css/StyleSheet1.css" />
        <style>

         body{
            background-image:url('assets/img/2690.jpg');
            background-size:cover;
            width: 285px;
            margin-left: 389px;
            height:750px;
        }
        #form1{
            height:690px;
            width:295px;
            background-color:white;
            margin-left:250px;
            margin-right:auto;
            margin-top:50px;
            opacity:0.8;
            border-radius:5px;
            
           
        }
       
        
        .mb-4 {
            width: 294px;
                height: 24px;
                margin-top:20px;
            }
        
        
       
        
            .smallButton {
                margin-left: 11px;
                margin-top: 18px;
            }
        
        
       
        
    </style>
</head>
<body>

   
    <form id="form1" runat="server">
       <div class="page-holder d-flex align-item-center">
            <div class="container">
                <div class="row aign-items-center py-5">
                    <div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">
                        <div class="pr-lg-5">
                            <h1 class="text-base text-primary text-uppercase mb-4" style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; font-size: medium; height: 47px; color: #008252;"><center style="height: 125px">
                            <br />
                            Create an account</h1></center>
                            
                            </div>
                        </div>
                    </div>
                <div class="form-group mb-4">
                  <center><asp:TextBox required="true" ID="Fname" placeholder="First name" runat="server" Height="33px" Width="230px" style="margin-left: 2%;"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Fname" ErrorMessage="First Name is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Only Character Values" ControlToValidate="Fname" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
                  </center>
                    
                        

                </div>
                <div class="form-group mb-4">
                    <center><asp:TextBox required="true" ID="Lname" placeholder="Last name" runat="server" Height="33px" Width="230px" style="margin-left: 2%;" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Lname" ErrorMessage="Last Name is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Only Character Values" ControlToValidate="Lname" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>

                    </center>
                        

                </div>
                <div class="form-group mb-4">
                    <center><asp:TextBox required="true" ID="NIC" placeholder="NIC/Passport No" Height="33px" Width="230px" runat="server" style="margin-top: 7px"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="NIC" ErrorMessage="NIC Number is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>
                      

                    </center>
                   
                </div>
                <div class="form-group mb-4">
                    <center><asp:TextBox required="true" ID="Date" placeholder="mm/dd/yyyy" type="date" Height="33px" Width="230px" runat="server" style="margin-top: 4px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Date" ErrorMessage="Date is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>

                    </center>
                </div>
                <div class="form-group mb-4">
                    <center><asp:TextBox required="true" ID="Pnumber" placeholder="Mobile  Number" runat="server" style="margin-top: 2px" Height="33px" Width="230px" TextMode="Number"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Pnumber" ErrorMessage="Phone Number is Emtpy *" ForeColor="Red">*</asp:RequiredFieldValidator>
                      
           
                    </center>
                </div>
                <div class="form-group mb-4">
                    <center><asp:TextBox required="true" ID="Inumber" placeholder="Insurance No" runat="server" Height="33px" Width="230px" TextMode="Number" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Inumber" ErrorMessage="Insurence Number is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>
                     

                    </center>
                </div>
                <div class="form-group mb-4">
                    <center><asp:TextBox required="true" ID="Lnumber" placeholder="License No" runat="server" Height="33px" Width="230px" TextMode="Number" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Lnumber" ErrorMessage="License Number is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>
                   

                    </center>
                </div>
                <div class="form-group mb-4">
                   <center> <asp:TextBox required="true" ID="Iname" placeholder="Insurance Name" runat="server" Height="33px" Width="230px" style="margin-left: 2%;" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Iname" ErrorMessage="Insurance Name is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>
                      <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter Only Character Values" ControlToValidate="Iname" ForeColor="Red" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>

                   </center>
                </div>
                <div class="form-group mb-4">
                    <center><asp:TextBox required="true" ID="Email" placeholder="Email" runat="server" Height="33px" Width="230px" TextMode="Email" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Email" ErrorMessage="Email is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>

                    </center>
                </div>
                <div class="form-group mb-4">
                   <center> <asp:TextBox required="true" ID="Password" placeholder="Password" runat="server" Height="33px" Width="230px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="Password" ErrorMessage="Password is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>

                   </center>
                </div>
                <div class="form-group mb-4">
                    <center><asp:TextBox required="true" ID="Cpassword" placeholder="Confirm Password" runat="server" Height="33px" Width="230px"  ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="Cpassword" ErrorMessage="Comfirm Password is Empty *" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is not matched" ControlToCompare="Password" ControlToValidate="Cpassword" ForeColor="Red"></asp:CompareValidator>
                    </center>
                    
                </div>
                
                <div class="form-group mb-4">
                    <div class="custom-control custom-checkbox">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" />
                        <asp:Label ID="Error" runat="server" Text="" Style="margin-left:35%;"></asp:Label>
                      <center><asp:Checkbox Text="I agree to the license terms." runat="server"/></center>
                    </div>
                    <center><asp:Button CssClass="button" Text="Sign up" OnClick="submit_Click" runat="server" ID="submit"></asp:Button></asp:LinkButton></center>

                </div>
                </div>
    </form>
</body>
</html>
