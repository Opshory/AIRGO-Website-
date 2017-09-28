<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Maccount.aspx.cs" Inherits="AirGo.Maccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Nav.js"></script>
    <link href="Navigation.css" rel="stylesheet" />
    <link href="Login.css" rel="stylesheet" />
    <link href="Button.css" rel="stylesheet" />
    <link href="Radio.css" rel="stylesheet" />
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
                        <li class="active"><a href="Maccount.aspx" style="font-family:'poppins';">My Account</a></li>
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


        <center>
            <div class="wrapper1">
                <br />
                <div class="wrapper6">
                    <img src="Images/user.png" style="height: 80%; width: 80%;" />
                </div>
                
                <a style="text-align:center; font-family:'Poppins'; color:white;"><asp:Label ID="Label1" runat="server" Text=""></asp:Label></a><br />
                <a style="text-align:center; font-family:'Poppins'; color:white;"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></a><br />
                <a style="text-align:center; font-family:'Poppins'; color:white;"><asp:Label ID="Label4" runat="server" Text=""></asp:Label></a><br />
                <a style="text-align:center; font-family:'Poppins'; color:white; font-size: 25px;"><asp:Label ID="Label5" runat="server" Text=""></asp:Label></a><br />
                 <br />
                <a style="text-align:center; font-family:'Poppins'; color:white;"><asp:Button ID="MOrders" runat="server" Text="My Orders" CssClass="btn" OnClick="MOrders_Click"></asp:Button></a><br /><br />


                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="954px" style="text-align:center; font-family:'Poppins';">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>

                <br />
                <a style="text-align:center; font-family:'Poppins'; color:white;"><asp:Button ID="LOrders" runat="server" Text="My Last Order" CssClass="btn" OnClick="LOrders_Click"></asp:Button></a><br /><br />


                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="953px" style="text-align:center; font-family:'Poppins';">
                    <AlternatingRowStyle BackColor="White" />
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <br />

            </div>
        </center>


    </form>
</body>
</html>
