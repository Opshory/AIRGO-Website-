<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="AirGo.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Nav.js"></script>
    <link href="Navigation.css" rel="stylesheet" />
    <link href="Login.css" rel="stylesheet" />
    <link href="Button.css" rel="stylesheet" />
    <link href="Slider.css" rel="stylesheet" />
    <style>
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <br /><br />
        <div style="margin-top:14px;">
            

            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
            <header class="site-header">

                <img src="Images/airlogof.png" class="logo" style="height:8%; width:8%; background: rgba(255, 255, 255, 1); border-radius: 20px;"/>

                <nav class="site-nav">
                    <ul>
                        <li class="active"><a href="HomePage.aspx" style="font-family:'poppins';">Home</a></li>
                        <li><a href="Search.aspx" style="font-family:'poppins';">Search for flight</a></li>
                        <li><a href="Tbook.aspx" style="font-family:'poppins';">Book Tickets</a></li>
                        <li><a href="Contact.aspx" style="font-family:'poppins';">Contact Us</a></li>
                        <li><a href="Maccount.aspx" style="font-family:'poppins';">My Account</a></li>
                        <li><a href="Admin.aspx" style="font-family:'poppins';">Admin</a></li>
                    </ul>
                </nav>

                <div class="account-actions">

                    <div class="account-dropdown">
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                        <a href="#" class="settings-symbol"><i class="fa fa-user" aria-hidden="true"></i></a>
                        <asp:Button ID="SignIn" runat="server" Text="Sign In" class="sign-out-link" style="background:none; font-family: 'poppins'; border:none; font-size: 20px; color: white;" OnClick="SignIn_Click"/>

                    </div>
                </div>

            </header>
        </div>
        <br />
        <p style="font-family: 'poppins'; font-size: 30px; color:white;text-align:center;">Welcome to AirGo</p> <br />
        <div class="slideshow-container">

            <div class="mySlides fade">
                <img src="Images/back1.jpg" style="width: 100%">
                
            </div>

            <div class="mySlides fade">
                <img src="Images/back2.jpg" style="width: 100%">
                
            </div>

            <div class="mySlides fade">
                <img src="Images/new1.jpg" style="width: 100%">
                
            </div>


            <div class="mySlides fade">
                <img src="Images/new2.jpg" style="width: 100%">
               
            </div>

        </div>
        <br>

        <div style="text-align: center">
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
            <span class="dot"></span>
        </div>

        <script>
            var slideIndex = 0;
            showSlides();

            function showSlides() {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                slideIndex++;
                if (slideIndex > slides.length) { slideIndex = 1 }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                setTimeout(showSlides, 3000); // Change image every 2 seconds
            }
        </script>

        <center><div class="wrapper1" style="color: white; font-size: 25px; font-family: 'poppins';">
            <br />
            Welcome everyone, We are here to provide the easiest way to search & buy ticket of Airplanes.<br />
Have a safe journey!!!
            <br />
            <br />
        </div></center>

        </center>
    </form>
</body>
</html>