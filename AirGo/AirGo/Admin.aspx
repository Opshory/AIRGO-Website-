<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="AirGo.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Nav.js"></script>
    <link href="Navigation.css" rel="stylesheet" />
    <link href="Login.css" rel="stylesheet" />
    <link href="Button.css" rel="stylesheet" />
    <link href="Radio.css" rel="stylesheet" />
    <link href="Tbox.css" rel="stylesheet" />
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
                        <li class="active"><a href="Admin.aspx" style="font-family:'poppins';">Admin</a></li>
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
                <a style="text-align:center; font-family:'Poppins'; color:white; font-size: 25px;">Pending Orders</a><br />
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="955px" style="text-align:center; font-family:'Poppins';">
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
                <br />

                <asp:TextBox ID="TextBox1" runat="server" CssClass="box" placeholder="Enter Order Id"></asp:TextBox>   <asp:Button ID="Check" runat="server" Text="Check" CssClass="btn2" OnClick="Check_Click"></asp:Button><br /> 
                <asp:Label ID="Label1" runat="server" Text="" style="color:white; font-size: 16px; font-family:'Poppins';"></asp:Label><br /><br />

                <asp:TextBox ID="TextBox3" runat="server" CssClass="box" placeholder="Enter Order Id"></asp:TextBox>   <asp:Button ID="Confirm" runat="server" Text="Confirm" CssClass="btn2" OnClick="Confirm_Click"></asp:Button><br /> 
                <asp:Label ID="Label3" runat="server" Text="" style="color:white; font-size: 16px; font-family:'Poppins';"></asp:Label><br /><br />

                <asp:TextBox ID="TextBox4" runat="server" CssClass="box" placeholder="Enter Order Id"></asp:TextBox>   <asp:Button ID="Cancel" runat="server" Text="Cancel" CssClass="btn2" OnClick="Cancel_Click"></asp:Button><br /> 
                <asp:Label ID="Label4" runat="server" Text="" style="color:white; font-size: 16px; font-family:'Poppins';"></asp:Label><br /><br />

                <asp:TextBox ID="TextBox5" runat="server" CssClass="box" placeholder="Enter Order Id"></asp:TextBox>   <asp:Button ID="POCheck" runat="server" Text="Post Order Check" CssClass="btn2" OnClick="POCheck_Click"></asp:Button><br /> 
                <asp:Label ID="Label5" runat="server" Text="" style="color:white; font-size: 16px; font-family:'Poppins';"></asp:Label><br /><br />

                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="954px" style="text-align:center; font-family:'Poppins';">
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
                </asp:GridView><br /><br />
                <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="955px" style="text-align:center; font-family:'Poppins';">
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
                </asp:GridView><br /><br />


                

            </div>
        </center>
        <br /><br />
        <center>
            <div class="wrapper1">
                <br />
                <a style="text-align:center; font-family:'Poppins'; color:white; font-size: 25px;">Advance Options</a><br />
                <br />
                <asp:TextBox ID="TextBox6" runat="server" CssClass="box" placeholder="Flight Number"></asp:TextBox>   <asp:Button ID="Clear" runat="server" Text="Clear History" CssClass="btn2" OnClick="Clear_Click"></asp:Button><br /> 
                <asp:Label ID="Label6" runat="server" Text="" style="color:white; font-size: 16px; font-family:'Poppins';"></asp:Label><br /><br />

                <asp:TextBox ID="TextBox7" runat="server" CssClass="box" placeholder="UserName"></asp:TextBox>
                <asp:TextBox ID="TextBox8" runat="server" CssClass="box" placeholder="Password"></asp:TextBox><br /><br />
                 <asp:Button ID="Create" runat="server" Text="Create Admin Account" CssClass="btn2" OnClick="Create_Click"></asp:Button><br />
                <asp:Label ID="Label7" runat="server" Text="" style="color:white; font-size: 16px; font-family:'Poppins';"></asp:Label><br /><br />
                <br />
            </div>
        </center>


    </form>
</body>
</html>
