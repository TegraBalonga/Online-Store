<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Prototype.ProductDetails" %>

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
    <form runat="server">
        <div class="header">
            <div class="container">
                <div class="navbar">
                    <div class="logo">
                        <img src="images/shopping-cart.png" width="70px" />
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
                

        <!---------------------Single product details---------------------->

        <div class="small-container single-product">
            <div class="row">
                <div class="col-2">
                    <img src="" width="100%" />
                </div>
                <div class="col-2">
                    <p>Home/ Clothes</p>
                    <h1>Name of product</h1>
                    <h4>Price of product</h4>
                    <asp:DropDownList ID="dropSize" runat="server">
                        <asp:ListItem>Select size</asp:ListItem>
                        <asp:ListItem>XXL</asp:ListItem>
                        <asp:ListItem>XL</asp:ListItem>
                        <asp:ListItem>Large</asp:ListItem>
                        <asp:ListItem>Medium</asp:ListItem>
                        <asp:ListItem>Small</asp:ListItem>
                    </asp:DropDownList>

                    <input id="btnProdAmount" type="number" value="1" />

                    <a href="" runat="server" onserverclick="Cart" class="btn">Add To Cart</a>

                    <h3>Product Details <i class="fa fa-indent"></i></h3>
                    <br>
                    <p>Details of the product will be displayed over here</p>
                </div>

            </div>
        </div>


        <div class="small-container">
            <div class="row row-2">
                <h2>related Products</h2>
                <p>View more</p>
            </div>
        </div>


        <div class="small-container">

            <div class="row">
                <div class="col-4">
                    <img src="" />
                    <h4>Name of product</h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <p>price of product</p>
                </div>
                <div class="col-4">
                    <img src="" />
                    <h4>Name of product</h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <p>price of product</p>
                </div>
                <div class="col-4">
                    <img src="" />
                    <h4>Name of product</h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <p>price of product</p>
                </div>
                <div class="col-4">
                    <img src="" />
                    <h4>Name of product</h4>
                    <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star-half-o"></i>
                        <i class="fa fa-star-o"></i>
                    </div>
                    <p>price of product</p>
                </div>

            </div>

        </div>

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


    </form>

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

