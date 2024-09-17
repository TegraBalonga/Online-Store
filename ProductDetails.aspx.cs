using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype
{
    public partial class ProductDetails : System.Web.UI.Page
    {

        string userOrEmp;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["Parameter"] != null)
            {
                userOrEmp = Request.QueryString["Parameter"].ToString();
            }
            else
            {
                userOrEmp = "";
            }
        }




        public void home(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx?Parameter=" + userOrEmp);
        }

        public void Cart(object sender, EventArgs e)
        {
            Response.Redirect("ShoppingCart.aspx?Parameter=" + userOrEmp);
        }
        public void Login(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx?Parameter=" + userOrEmp);
        }


    }
}