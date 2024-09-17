<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Prototype.Home" %>

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
                    <img src="images/shopping-cart.png" width="70px" />
                </div>
                <nav>
                    <ul id="MenuItems">
                        <li class="active"><a href="" runat="server" onserverclick="home">Home</a></li>
                        <li><a href="" runat="server" onserverclick="Cart">Your Cart</a></li>
                        <li><a href="" runat="server"  onserverclick="Login">Log In</a></li>
                    </ul>
                </nav>
                <img class="menu-icon" src="images/menu-button-of-three-horizontal-lines.png" onclick="menutoggle()" />
            </div>
            <div class="row">
                <div class="col-2">
                    <h1>Welcome To The Website<br>
                        For Your Style</h1>
                    <p>
                        This is a prototype website designed by the team in YourDesign.<br>
                        We provide the best services for your company.
                    </p>
                    <a onclick="document.getElementById('scroll').scrollIntoView();" class="btn">Explore Now &#8594;</a>
                </div>
                <div class="col-2">
                    <img src="images/daniel-chen-EM-a3aMGypw-unsplash.jpg" />
                </div>
            </div>
        </div>
    </div>

    <div class="categories">
        <div class="small-container">
            <div class="row">
                <div class="col-3">
                    <img src="images/category-2.jpg" />
                </div>
                <div class="col-3">
                    <img src="images/category-1.jpg" />
                </div>
                <div class="col-3">
                    <img src="images/guillaume-bleyer-SXiIe1Vs5BU-unsplash.jpg" />
                </div>
            </div>
        </div>
        <div id="scroll"></div>
    </div>
    <!---------------------All products---------------------->
    <div class="small-container">
        <div class="row row-2">
            <h2>All Products</h2>
            <form runat="server">
                <asp:DropDownList ID="dropSort" runat="server">
                    <asp:ListItem Selected="True">Default sort</asp:ListItem>
                    <asp:ListItem>Sort by price</asp:ListItem>
                    <asp:ListItem>Sort by popularity</asp:ListItem>
                    <asp:ListItem>Sort by rating</asp:ListItem>
                    <asp:ListItem>sort by sale</asp:ListItem>
                </asp:DropDownList>

            </form>
        </div>


        <div class="row">
            <div class="col-4" >
                <img src="images/mohammad-metri-E-0ON3VGrBc-unsplash.jpg" runat="server" onserverclick="image"/>
                <h4>Name of product</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>price of product</p>
               
                <p id="P1" runat="server">Amount ordered</p>
            </div>
            <div class="col-4" >
                <img src="images/imani-bahati-LxVxPA1LOVM-unsplash.jpg" runat="server" onserverclick="image"/>
                <h4>Name of product</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>price of product</p>
                <p id="P2" runat="server">Amount ordered</p>
            </div>
            <div class="col-4" >
                <img src="images/ian-dooley-10ca-K3e6Ko-unsplash.jpg" runat="server" onserverclick="image"/>
                <h4>Name of product</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>price of product</p>
                <p id="P3" runat="server">Amount ordered</p>
            </div>
            <div class="col-4" >
                <img src="images/engin-akyurt-N7YaZf7szz0-unsplash.jpg" runat="server" onserverclick="image" />
                <h4>Name of product</h4>
                <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star-half-o"></i>
                    <i class="fa fa-star-o"></i>
                </div>
                <p>price of product</p>
                <p id="P4" runat="server">Amount ordered</p>
            </div>

        </div>

    </div>

    </div>



    <!-------------------------------------FOOTER-------------------------------------------->

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
            <hr>
            <p class="copyright">Copyright 2021 - YourDesign</p>
        </div>
    </div>




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



</body>
</html>
