<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reporter.aspx.cs" Inherits="new1.reporter" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>RDA AMD</title>
    <meta name="description"
          content="Road Development Authority, Accident Management Department is Sri Lankan's Largest Accident Management and Reporting Community ! ">
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
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <script src="jquery-2.1.4.js"></script>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<script>

    var map, infoWindow;
    var glatitude, glongitude;
    function initMap() {
        map = new google.maps.Map(document.getElementById('dvMap'), {
            center: { lat: -34.397, lng: 150.644 },
            zoom: 15,
            styles: [
                { elementType: 'geometry', stylers: [{ color: '#242f3e' }] },
                { elementType: 'labels.text.stroke', stylers: [{ color: '#242f3e' }] },
                { elementType: 'labels.text.fill', stylers: [{ color: '#746855' }] },
                {
                    featureType: 'administrative.locality',
                    elementType: 'labels.text.fill',
                    stylers: [{ color: '#d59563' }]
                },
                {
                    featureType: 'poi',
                    elementType: 'labels.text.fill',
                    stylers: [{ color: '#d59563' }]
                },
                {
                    featureType: 'poi.park',
                    elementType: 'geometry',
                    stylers: [{ color: '#263c3f' }]
                },
                {
                    featureType: 'poi.park',
                    elementType: 'labels.text.fill',
                    stylers: [{ color: '#6b9a76' }]
                },
                {
                    featureType: 'road',
                    elementType: 'geometry',
                    stylers: [{ color: '#38414e' }]
                },
                {
                    featureType: 'road',
                    elementType: 'geometry.stroke',
                    stylers: [{ color: '#212a37' }]
                },
                {
                    featureType: 'road',
                    elementType: 'labels.text.fill',
                    stylers: [{ color: '#9ca5b3' }]
                },
                {
                    featureType: 'road.highway',
                    elementType: 'geometry',
                    stylers: [{ color: '#746855' }]
                },
                {
                    featureType: 'road.highway',
                    elementType: 'geometry.stroke',
                    stylers: [{ color: '#1f2835' }]
                },
                {
                    featureType: 'road.highway',
                    elementType: 'labels.text.fill',
                    stylers: [{ color: '#f3d19c' }]
                },
                {
                    featureType: 'transit',
                    elementType: 'geometry',
                    stylers: [{ color: '#2f3948' }]
                },
                {
                    featureType: 'transit.station',
                    elementType: 'labels.text.fill',
                    stylers: [{ color: '#d59563' }]
                },
                {
                    featureType: 'water',
                    elementType: 'geometry',
                    stylers: [{ color: '#17263c' }]
                },
                {
                    featureType: 'water',
                    elementType: 'labels.text.fill',
                    stylers: [{ color: '#515c6d' }]
                },
                {
                    featureType: 'water',
                    elementType: 'labels.text.stroke',
                    stylers: [{ color: '#17263c' }]
                }
            ]
        });
        infoWindow = new google.maps.InfoWindow;

        if (navigator.geolocation) {
            navigator.geolocation.getCurrentPosition(function (position) {
                var pos = {
                    lat: position.coords.latitude,
                    lng: position.coords.longitude
                };
                glatitude = { lat: position.coords.latitude };
                glatitude = { lng: position.coords.longitude };

                var marker = new google.maps.Marker({
                    position: pos,
                    draggable: true,
                    animation: google.maps.Animation.BOUNCE,
                    map: map
                });
                infoWindow.setPosition(pos);
                infoWindow.setContent('Location found.');
                infoWindow.open(map);
                map.setCenter(pos);
            }, function () {
                handleLocationError(true, infoWindow, map.getCenter());
            });
        } else {
            // Browser doesn't support Geolocation
            handleLocationError(false, infoWindow, map.getCenter());
        }
    }

    function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
            'Error: The Geolocation service failed.' :
            'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
    }


</script>
<script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDEoqYdMxy9glgnny_X1WMcJDFYf3lAHtw&callback=initMap">
</script>


</div>
<div>
    <div class="header-blue">
        <nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
            <div class="container-fluid"><a class="navbar-brand" href="index.html"><img class="wobble animated"
                                                                                        src="assets/img/RDAAMS_logo.png"
                                                                                        style="background-size: contain;width: 90px;"
                                                                                        loading="eager"></a>
                <button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span
                            class="navbar-toggler-icon text-white"></span></button>
                <div
                        class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav"></ul>
                    <h5 style="color: rgb(255,255,255);"><strong>Road Development Authority</strong></h5>
                    <span class="text-primary navbar-text">
                        <asp:Button ID="Logout" class="btn btn-light text-white action-button" type="Button" Text="Log out" OnClick="Logout_Click" /></span></div>
            </div>
        </nav>
    </div>
</div>
<div>
    <div class="container">
        <div class="row">
            <div class="col-md-6" style="margin-top: 15px;">
                <div class="table-responsive d-inline">
                    <table class="table">
                        <tbody>
                        <tr>
                            <td>
                                <div><a class="btn btn-light border rounded border-dark" data-toggle="collapse"
                                        aria-expanded="false" aria-controls="collapse-3" href="#collapse-3"
                                        role="button" style="width: 140px;">Report</a>
                                    <div class="collapse"
                                         id="collapse-3">
                                        <form id="form1" runat="server"  EncType="multipart/form-data" method="post">
                                            <h2 class="text-center"><strong>Report</strong> to us.</h2>
                                            <div class="form">
                                                <br>
                                                <h6 class="text-muted card-subtitle mb-2">Welcome Back:&nbsp;
                                                    <asp:Label ID="Email" CssClass="control-label" runat="server" Text=""></asp:Label>
                                                           </h6>
                                                <br>
                                                <p class="text-muted card-subtitle mb-2">Reporting from current marker Location 📡</p>
                                                <div class="form-group">
                                                    <asp:TextBox ID="city" runat="server" class="form-control" cols="20"  rows="20" placeholder="City"></asp:TextBox>
                                                </div>
                                                <div class="form-group">
                                                    <asp:TextBox ID="province" runat="server" class="form-control" cols="20"  rows="20" placeholder="Province"></asp:TextBox>
                                                </div>
                                                <asp:DropDownList ID="severity" runat="server">
                                                    <asp:ListItem Value="Bad Weaher">Bad Weaher</asp:ListItem>
                                                     <asp:ListItem value="Distractions">Distractions</asp:ListItem>
                                                     <asp:ListItem value="Speeding">Speeding</asp:ListItem>
                                                    <asp:ListItem value="Drunk Driving">Drunk Driving</asp:ListItem>
                                                </asp:DropDownList>

                                                  <asp:DropDownList ID="type" runat="server">
                                                    <asp:ListItem value="Car">Car</asp:ListItem>
                                                     <asp:ListItem value="Van">Van</asp:ListItem>
                                                     <asp:ListItem value="Bus">Bus</asp:ListItem>
                                                      <asp:ListItem value="Bike">Bike</asp:ListItem>
                                                      <asp:ListItem value="SUV">SUV</asp:ListItem>
                                                      <asp:ListItem value="Truck">Truck</asp:ListItem>
                                                </asp:DropDownList>
                                              
                                               

                                                <div class="form-group">
                                                    <asp:TextBox ID="desc" runat="server" class="form-control" cols="20"  rows="20" placeholder="Description" Height="141px" Width="416px"></asp:TextBox>
                                                </div>
                                                <asp:FileUpload ID="FileUpload1" type="file" runat="server" />
                                                <asp:Label ID="error" runat="server" Text=""></asp:Label>
                                                <div class="form-group">
                                                    <asp:Button ID="reportsend" runat="server" Text="Send Report"  class="btn btn-info btn-block"
                                                            data-bs-hover-animate="pulse" type="submit" style="margin-top: 15px;" OnClick="reportsend_Click"/>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>              
            </tr>
            </tbody>
            </table>
        </div>
    </div>
    <div id="dvMap" style="width: 100%; height: 500px">
    </div>
</current>
</label>
</h6>
</div>
</form>
</div>
</div>
<div class="footer-clean">
    <footer></footer>
    <p class="text-center copyright">Road Development Authority - Accident Management Department © 2020</p>
</div>
<div class="card"></div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/js/smart-forms.min.js"></script>
<script src="assets/js/script.min.js"></script>
</body>

</html>