<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMap.aspx.cs" Inherits="Web_Project_02.GoogleMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>



            
<div id="googleMap" style="width:100%;height:800px;"></div>

<script>

    function myMap() {

        var myCenter1 = new google.maps.LatLng(7.0791495932644235, 80.01495074090923);

        var myCenter2 = new google.maps.LatLng(6.9263865819664705, 79.86113492627975);

        var myCenter3 = new google.maps.LatLng(6.845432507843539, 79.99591802848623);

        var myCenter4 = new google.maps.LatLng(7.287792534002932, 80.63928906924144);
        
        
        var mapProp= {
        center: myCenter2,
            zoom: 11,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };


        var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);


        var marker1 = new google.maps.Marker({
            position: myCenter1,
            animation: google.maps.Animation.BOUNCE
        });

        var marker2 = new google.maps.Marker({
            position: myCenter2,
            animation: google.maps.Animation.BOUNCE
        });

        var marker3 = new google.maps.Marker({
            position: myCenter3,
            animation: google.maps.Animation.BOUNCE
        });

        var marker4 = new google.maps.Marker({
            position: myCenter4,
            animation: google.maps.Animation.BOUNCE
        });

        marker1.setMap(map);
        marker2.setMap(map);
        marker3.setMap(map);
        marker4.setMap(map);

        google.maps.event.addListener(marker1, 'click', function () {
            var pos = map.getZoom();
            map.setZoom(15);
            map.setCenter(marker1.getPosition());            
        });

        google.maps.event.addListener(marker2, 'click', function () {
            var pos = map.getZoom();
            map.setZoom(15);
            map.setCenter(marker2.getPosition());
        });

        google.maps.event.addListener(marker3, 'click', function () {
            var pos = map.getZoom();
            map.setZoom(15);
            map.setCenter(marker3.getPosition());
        });

        google.maps.event.addListener(marker4, 'click', function () {
            var pos = map.getZoom();
            map.setZoom(15);
            map.setCenter(marker4.getPosition());
        });

       
        var infowindow1 = new google.maps.InfoWindow({
            content: "Location : Gampaha <br/>Details : This is my first harvest..!! <br/>pumpkin : 1000 <br/>carrot : 1500 <br/> onion : 2000 <br/> chilli : 2500 <br/>"
        });
        var infowindow2 = new google.maps.InfoWindow({
            content: "Location : Gampaha <br/>Details : This is my second harvest..!! <br/>pumpkin : 2000 <br/>carrot : 2000 <br/> onion : 2000 <br/> chilli : 1000 <br/>"
        });
        var infowindow3 = new google.maps.InfoWindow({
            content: "Location : Gampaha <br/>Details : This is my third harvest..!! <br/>pumpkin : 4000 <br/>carrot : 2000 <br/> onion : 2000 <br/> chilli : 2000 <br/>"
        });
        var infowindow4 = new google.maps.InfoWindow({
            content: "Location : Gampaha <br/>Details : This is my fourth harvest..!! <br/>pumpkin : 5000 <br/>carrot : 100 <br/> onion : 2000 <br/> chilli : 3000 <br/>"
        });

        google.maps.event.addListener(marker1, 'click', function () {
            infowindow1.open(map, marker1);
        });
        google.maps.event.addListener(marker2, 'click', function () {
            infowindow2.open(map, marker2);
        });
        google.maps.event.addListener(marker3, 'click', function () {
            infowindow3.open(map, marker3);
        });
        google.maps.event.addListener(marker4, 'click', function () {
            infowindow4.open(map, marker4);
        });



    }



    

    


</script>



<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDBPbIkJbI2wRSBJNwAdsvoEpvJzwcK_1U&callback=myMap"></script>


        </div>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="30px" NavigateUrl="~/kells.aspx">Go Back</asp:HyperLink>
    </form>
</body>
</html>
