<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlPanel.aspx.cs" Inherits="new1.ControlPanel" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/controlpanel.css" rel="stylesheet" />
</head>
<body>
    
    <h6 style="margin-right: -8px;font-size: x-large;text-align: center;background-color: aquamarine;padding: 54px;margin-top: -8px;margin-left: -8px;">Welcome Back:&nbsp;
     <asp:Label ID="Email" CssClass="control-label" runat="server" Text=""></asp:Label>
    </h6>
    
    

    <form id="form1" runat="server">
        <asp:Button ID="piechartbtn" runat="server" Text="Pie Charts" style=" background-color: aquamarine;border: none;
  color: black;padding: 12px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 15px;
  border-radius:12px;
  margin: 10px 740px;
  cursor: pointer;" OnClick="piechartbtn_Click" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" Height="280px" Width="960px" style="margin-left:18%;" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Id" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label ID="email" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                    <asp:TemplateField HeaderText="city">
                    <ItemTemplate>
                        <asp:Label ID="city" runat="server" Text='<%# Eval("city") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                    

                    <asp:TemplateField HeaderText="province">
                    <ItemTemplate>
                        <asp:Label ID="province" runat="server" Text='<%# Eval("province") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                  

                    <asp:TemplateField HeaderText="severity">
                    <ItemTemplate>
                        <asp:Label ID="severity" runat="server" Text='<%# Eval("severity") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   

                    <asp:TemplateField HeaderText="type">
                    <ItemTemplate>
                        <asp:Label ID="type" runat="server" Text='<%# Eval("type") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   

                    <asp:TemplateField HeaderText="description">
                    <ItemTemplate>
                        <asp:Label ID="description" runat="server" Text='<%# Eval("description") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                   

                  <asp:TemplateField HeaderText="FileUpload1">
                    <ItemTemplate>
                        <asp:Label ID="FileUpload1" runat="server" Text='<%# Eval("FileUpload1") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                  

                <asp:TemplateField HeaderText="DELETE">
                    <ItemTemplate>
                        
                        <span onclick="return confirm('Are you sure want to delete ?')">
                            <asp:LinkButton ID="btndelete" Text="Delete" runat="server" CommandName="Delete"/>
                        </span>
                    </ItemTemplate>
                    </asp:TemplateField>
            </Columns>
        </asp:GridView>



        <asp:ListView ID="ListView1" runat="server">
            <ItemTemplate>
                <div class="list">
                    <table>
                        <tr><td  class="img"><img src="<%# Eval("FileUpload1") %>" ></td></tr>
                        <tr><td><h1><%# Eval("Id") %></h1></td></tr>

                        <tr><td><asp:Label ID="Label6" runat="server" Text="email :- "><p><%# Eval("email") %></p></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label1" runat="server" Text="city :- "><p><%# Eval("city") %></p></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label2" runat="server" Text="province :- "><p><%# Eval("province") %></p></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label3" runat="server" Text="severity :- "><p><%# Eval("severity") %></p></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label4" runat="server" Text="type :- "><p><%# Eval("type") %></p></asp:Label></td></tr>
                        <tr><td><asp:Label ID="Label5" runat="server" Text="description :- "><p><%# Eval("description") %></p></asp:Label></td></tr>
                       
                    </table>
                </div>
            </ItemTemplate>
        </asp:ListView>


    

    </form>
</body>
</html>
