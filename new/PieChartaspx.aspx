<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PieChartaspx.aspx.cs" Inherits="new1.PieChartaspx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:Chart ID="Chart1" runat="server" Height="518px" Width="696px" style="margin-left:70px; margin-top:130px;">
            <Series>
                <asp:Series ChartType="Pie" Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                    <Area3DStyle Enable3D="True" />
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 20pt" ForeColor="RosyBrown" Name="Title1" Text="Accident causation">
                </asp:Title>
            </Titles>
        </asp:Chart>

        <asp:Chart ID="Chart2" runat="server" Height="518px" Width="696px">
            <Series>
                <asp:Series ChartType="Pie" Name="Series2">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea2">
                    <Area3DStyle Enable3D="True" />
                </asp:ChartArea>
            </ChartAreas>
            <Titles>
                <asp:Title Font="Microsoft Sans Serif, 20pt" ForeColor="RosyBrown" Name="Title2" Text="Accident Vehical Type">
                </asp:Title>
            </Titles>
        </asp:Chart>
    </form>
</body>
</html>
