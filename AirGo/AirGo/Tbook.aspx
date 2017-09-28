<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tbook.aspx.cs" Inherits="AirGo.Tbook" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Nav.js"></script>
    <link href="Navigation.css" rel="stylesheet" />
    <link href="Login.css" rel="stylesheet" />
    <link href="Button.css" rel="stylesheet" />
    <link href="Table.css" rel="stylesheet" />
    <link href="Tbox.css" rel="stylesheet" />
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
                        <li class="active"><a href="Tbook.aspx" style="font-family:'poppins';">Book Tickets</a></li>
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



        <br /><br /><br />


        <center>
            <div class="wrapper1">
            <asp:TextBox ID="TextBox1" runat="server" CssClass="box" placeholder="Flight Number"></asp:TextBox>   <asp:Button ID="Check" runat="server" Text="Check" CssClass="btn" OnClick="Check_Click"></asp:Button><br /> 
                <asp:Label ID="Label1" runat="server" Text="" style="color:white; font-size: 16px; font-family:'Poppins';"></asp:Label><br />

            <div runat="server" id="mydiv"><table>
                      <thead>
                        <tr>
                          <th colspan="8" style="font-family: 'Poppins'; font-size:18px; height:60px; width:60px;">AirGo Seat Plan</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td style="color:green; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" colspan="2"><b></b></td>
                          <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                          <td style="color:green; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px; text-align:right;" colspan="2"><b></b></td>
                            <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                            <td style="color:green; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px; text-align:right;" colspan="2"><b></b></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="A1" runat="server" Text="A1" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="A1_Click"></asp:Button></td>
                          <td><asp:Button ID="A2" runat="server" Text="A2" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="A2_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="A3" runat="server" Text="A3" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="A3_Click"></asp:Button></td>
                          <td><asp:Button ID="A4" runat="server" Text="A4" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="A4_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="A5" runat="server" Text="A5" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="A5_Click"></asp:Button></td>
                          <td><asp:Button ID="A6" runat="server" Text="A6" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="A6_Click"></asp:Button></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="B1" runat="server" Text="B1" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="B1_Click"></asp:Button></td>
                          <td><asp:Button ID="B2" runat="server" Text="B2" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="B2_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="B3" runat="server" Text="B3" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="B3_Click"></asp:Button></td>
                          <td><asp:Button ID="B4" runat="server" Text="B4" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="B4_Click"></asp:Button></td>
                              <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="B5" runat="server" Text="B5" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="B5_Click"></asp:Button></td>
                          <td><asp:Button ID="B6" runat="server" Text="B6" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="B6_Click"></asp:Button></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="C1" runat="server" Text="C1" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="C1_Click"></asp:Button></td>
                          <td><asp:Button ID="C2" runat="server" Text="C2" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="C2_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="C3" runat="server" Text="C3" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="C3_Click"></asp:Button></td>
                          <td><asp:Button ID="C4" runat="server" Text="C4" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="C4_Click"></asp:Button></td>
                              <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="C5" runat="server" Text="C5" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="C5_Click"></asp:Button></td>
                          <td><asp:Button ID="C6" runat="server" Text="C6" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="C6_Click"></asp:Button></td>
                        </tr>

                          <tr>
                          <td><asp:Button ID="D1" runat="server" Text="D1" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="D1_Click"></asp:Button></td>
                          <td><asp:Button ID="D2" runat="server" Text="D2" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="D2_Click"></asp:Button></td>
                          <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="D3" runat="server" Text="D3" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="D3_Click"></asp:Button></td>
                          <td><asp:Button ID="D4" runat="server" Text="D4" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="D4_Click"></asp:Button></td>
                              <td style="color:white; border:none; background:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;"></td>
                          <td><asp:Button ID="D5" runat="server" Text="D5" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="D5_Click"></asp:Button></td>
                          <td><asp:Button ID="D6" runat="server" Text="D6" style="color:white; border:none; font-family: 'Poppins'; font-size:18px; height:60px; width:60px;" OnClick="D6_Click"></asp:Button></td>
                        </tr>

                         
                      </tbody>
                    </table>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="box" placeholder="Credit Card No"></asp:TextBox><br /><br />
                <asp:TextBox ID="TextBox3" runat="server" CssClass="box" placeholder="Credit Card Pin"></asp:TextBox>
                    <br /><br />
                    <asp:Label ID="Label3" runat="server" Text="" style="font-family:'Poppins'; color:white; font-size:18px; padding: 15px 15px 15px 15px;"></asp:Label><br /><br />
                    <asp:Button ID="Order" runat="server" Text="Confirm Booking" CssClass="btn" OnClick="Order_Click"></asp:Button>
                </div>

                            </div>
        </center>




    </form>
</body>
</html>
