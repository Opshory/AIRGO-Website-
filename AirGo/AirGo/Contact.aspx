<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AirGo.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Nav.js"></script>
    <link href="Navigation.css" rel="stylesheet" />
    <link href="Login.css" rel="stylesheet" />
    <link href="Button.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <br /><br />
        <div>
            

            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-T8Gy5hrqNKT+hzMclPo118YTQO6cYprQmhrYwIiQ/3axmI1hQomh7Ud2hPOy8SP1" crossorigin="anonymous">
            <header class="site-header">

                <img src="Images/airlogof.png" class="logo" style="height:8%; width:8%; background: rgba(255, 255, 255, 1); border-radius: 20px;"/>

                <nav class="site-nav">
                    <ul>
                        <li><a href="HomePage.aspx" style="font-family:'poppins';">Home</a></li>
                        <li><a href="Search.aspx" style="font-family:'poppins';">Search for flight</a></li>
                        <li><a href="Tbook.aspx" style="font-family:'poppins';">Book Tickets</a></li>
                        <li class="active"><a href="Contact.aspx" style="font-family:'poppins';">Contact Us</a></li>
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

        <center><div class="wrapper1" style="color:white;">
            <font style="font-size: 30px;"><br />Thanks for browsing AirGo</font><br /><br />
            <font class="smallStyle">
                This website is developted by Zannati-La-Tasriba<br />
                Department of Computer Science & Engineering<br />
                Khulna University of Engineering & Technology, KUET<br />
                Khulna, Bangladesh<br /><br /><br />
            </font>
            <font>Contact: </font><br /><br />
            <div class="wrapper5">
                <img src="Images/mine.jpg" style="max-width:100%; max-height:100%; margin-left:25px; border-radius:300px;"/>
            </div>
            <font>
                Mobile no:019xxxxxxxx<br />
Gmail Address:zannatmondol74@gmail.com
            </font>
            <br />
            <br />
        </div></center>

    </form>
</body>
</html>
