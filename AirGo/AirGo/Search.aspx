<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="AirGo.Search" %>

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
                        <li class="active"><a href="Search.aspx" style="font-family:'poppins';">Search for flight</a></li>
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
            <a style="color:green; font-family:'poppins'; font-size: 30px;">SEARCH YOUR DESIRED FLIGHT HERE</a><br /><br /><br />

            <a style="color:green; font-family:'poppins'; font-size: 20px;">SELECT YOUR LOCATION</a><br />
            <asp:Button ID="Button1" runat="server" Text="BANGLADESH" class="mButton" OnClick="Button1_Click"/><asp:Button ID="Button2" runat="server" Text="DUBAI" class="mButton" OnClick="Button2_Click"/><asp:Button ID="Button3" runat="server" Text="AMERICA" class="mButton" OnClick="Button3_Click"/>
            
            
            <br /><br />

            <a style="color:green; font-family:'poppins'; font-size: 20px;">SELECT YOUR DESTINATION</a><br />
            <asp:Button ID="Button4" runat="server" Text="BANGLADESH" class="mButton" OnClick="Button4_Click"/><asp:Button ID="Button5" runat="server" Text="DUBAI" class="mButton" OnClick="Button5_Click"/><asp:Button ID="Button6" runat="server" Text="AMERICA" class="mButton" OnClick="Button6_Click"/>

            <br /><br />

            <a style="color:green; font-family:'poppins'; font-size: 20px;">DAY OF JOURNEY</a><br />
            <asp:Button ID="Button7" runat="server" Text="SATURDAY" class="mButton" OnClick="Button7_Click"/><asp:Button ID="Button8" runat="server" Text="SUNDAY" class="mButton" OnClick="Button8_Click"/><asp:Button ID="Button9" runat="server" Text="MONDAY" class="mButton" OnClick="Button9_Click"/><asp:Button ID="Button10" runat="server" Text="TUESDAY" class="mButton" OnClick="Button10_Click"/><asp:Button ID="Button11" runat="server" Text="WEDNESDAY" class="mButton" OnClick="Button11_Click"/><asp:Button ID="Button12" runat="server" Text="THURSDAY" class="mButton" OnClick="Button12_Click"/><asp:Button ID="Button13" runat="server" Text="FRIDAY" class="mButton" OnClick="Button13_Click"/>
            <br /><br /><br />
              <asp:Button ID="search" runat="server" Text="SEARCH" class="btn" OnClick="search_Click"></asp:Button>
            </div></center>
            <br />
            <br />
            <center><asp:Label ID="Label5" runat="server" Text="Please remeber the flight number for ticket booking" style="color: white; font-size: 30px; font-family: 'poppins';"></asp:Label></center>
        

        <center>
            <div style="text-align:center; left: 43px;" class="wrapper3">
                <asp:GridView ID="Grid1" runat="server" AutoGenerateColumns="False" Width="1000px" CellPadding="4" ForeColor="#333333" DataKeyNames="Flight_Number">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Flight_Number" HeaderText="Flight_Number" InsertVisible="False" ReadOnly="True" SortExpression="Flight_Number" />
                        <asp:BoundField DataField="Source" HeaderText="Source" SortExpression="Source" />
                        <asp:BoundField DataField="Destination" HeaderText="Destination" SortExpression="Destination" />
                        <asp:BoundField DataField="Day" HeaderText="Day" SortExpression="Day" />
                        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
                        <asp:BoundField DataField="Ticket_Price" HeaderText="Ticket_Price" SortExpression="Ticket_Price" />
                    </Columns>
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
            </div>
        </center>
        <asp:Label ID="Label1" runat="server" Text="" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" Text="" Visible="False"></asp:Label>
        <asp:Label ID="Label4" runat="server" Text="" Visible="False"></asp:Label>
            <br /><br />






    </form>
</body>
</html>
