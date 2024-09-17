<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Prototype.SignIn" Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>ACME INC. Prototype</title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="X-AU-Compatible" content="Chrome" />
    <link rel="stylesheet" href="Style.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poopins:wght@300;400;500;600;700&display=swap" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>

    <div class="header">
        <div class="container">
            <div class="navbar">
                <div class="logo">
                    <a href="Home.aspx">
                        <img src="images/shopping-cart.png" width="70px" /></a>
                </div>
                <nav>
                    <ul id="MenuItems">
                        <li><a href="" runat="server" onserverclick="home">Home</a></li>
                        <li><a href="" runat="server" onserverclick="Cart">Your Cart</a></li>
                        <li><a href="" runat="server"  onserverclick="Login">Log In</a></li>
                    </ul>
                </nav>
                <img class="menu-icon" src="images/menu-button-of-three-horizontal-lines.png" onclick="menutoggle()" />
            </div>
        </div>
    </div>

    <!-----------------------Account page-------------------->
    <div class="account-page">
        <div class="container">
            <div class="row">
                <div class="col-2">
                    <img src="images/daniel-chen-EM-a3aMGypw-unsplash.jpg" width="100%" />
                </div>

                <div class="col-2">
                    <div class="form-container">
                        <div class="form-btn">
                            
                            <span>Register</span>
                            <hr id="Indicator" />
                        </div>


                        <form id="RegForm" runat="server" method="post">
                            <input id="regUsername" type="text" placeholder="Username" runat="server" />
                            <input id="regEmail" type="email" placeholder="Email" runat="server" />
                            <input id="regPass" type="password" placeholder="Password" runat="server" />
                            <br><br>
                            <asp:Label ID="lblError" runat="server" Text="Username or password entered is incorrect" Font-Size="Small" Width="234px"></asp:Label>
                            <br><br>
                            <button id="btnReg" class="btn" runat="server" onserverclick="btnReg_Click" >Register</button>

                        </form>



                    </div>
                </div>


            </div>
        </div>
    </div>




    <!---------------------------Footer--------------------------->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer-col-1">
                    <h3>Download Our App</h3>
                    <p>Download App for Android and Ios mobile phone.</p>
                </div>
                <div class="footer-col-2">
                    <h3>Our Goal</h3>
                    <p>We strive to provide the best services and product for any customer.</p>
                </div>
                <div class="footer-col-3">
                    <h3>Useful Links</h3>
                    <ul>
                        <li>Coupons</li>
                        <li>Blog Post</li>
                        <li>Return Policy</li>
                        <li>Join Affiliate</li>
                    </ul>
                </div>
                <div class="footer-col-4">
                    <h3>Follow us</h3>
                    <ul>
                        <li>Facebook</li>
                        <li>Twitter</li>
                        <li>Instagram</li>
                        <li>YouTube</li>
                    </ul>
                </div>
            </div>
            <hr />
            <p class="copyright">Copyright 2021 - YourDesign</p>
        </div>
    </div>



    <!----------------------------SCRIPS-------------------------------->

    <script>
        var MenuItems = document.getElementById("MenuItems");

        MenuItems.style.maxHeight = "0px";

        function menutoggle() {
            if (MenuItems.style.maxHeight == "0px") {
                MenuItems.style.maxHeight = "200px"
            }
            else {
                MenuItems.style.maxHeight = "0px";
            }
        }
    </script>




    <script>

        var LoginForm = document.getElementById("LoginForm");
        var RegForm = document.getElementById("RegForm");
        var Indicator = document.getElementById("Indicator");


       

    </script>




</body>
</html>