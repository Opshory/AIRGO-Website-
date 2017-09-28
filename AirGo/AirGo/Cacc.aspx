<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cacc.aspx.cs" Inherits="AirGo.Cacc" %>

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


        <center><div class="wrapper1">

            <!-- form container -->
    <div class="form-container">
        <!-- form header -->
        <h1 class="form-header heading-color">Sign Up</h1>
        <!-- end of form header -->
        <!-- form content -->
        <form action="#" class="form-content">
            <fieldset>
                <asp:TextBox type="text" ID="TextBox1" runat="server" placeholder="UserName" CssClass="form-input-control"></asp:TextBox>
                <asp:TextBox type="text" ID="TextBox2" runat="server" placeholder="Email" CssClass="form-input-control"></asp:TextBox>
                <asp:TextBox type="password" ID="TextBox3" runat="server" placeholder="Password" CssClass="form-input-control"></asp:TextBox>
                <asp:TextBox type="password" ID="TextBox4" runat="server" placeholder="Confirm Password" CssClass="form-input-control"></asp:TextBox>
                <asp:TextBox type="text" ID="TextBox5" runat="server" placeholder="Mobile NO" CssClass="form-input-control"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Sign Up" style="height: 50px; width: 100%; " class="button" OnClick="Button1_Click"/>
                
            </fieldset>
        </form>
        <!-- end of form-content -->
        <!-- form footer -->
        <div class="form-footer group">
            <p class="fl footer-text">
                <asp:Label ID="Label1" runat="server" Text="" style="color: red; font-family: 'poppins';"></asp:Label><br />
                <a style="color:white" href="Login.aspx">Already Have an account</a>
            </p>

            <div style="clear:both;"></div>
        </div>
        <!-- end of From footer -->
    <div style="clear:both;"></div>
    </div>
    <!-- end of form container -->

        </div></center>

    </form>
</body>
</html>
