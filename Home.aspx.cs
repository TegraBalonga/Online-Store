using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prototype
{
    public partial class Home : Page
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

            if (userOrEmp.Equals("User"))
            {
                P1.Visible = false;
                P2.Visible = false;
                P3.Visible = false;
                P4.Visible = false;


            }
            else if (userOrEmp.Equals("Employee"))
            {
                P1.Visible = true;
                P2.Visible = true;
                P3.Visible = true;
                P4.Visible = true;

            }
            else
            {
                P1.Visible = false;
                P2.Visible = false;
                P3.Visible = false;
                P4.Visible = false;
            }

            // Singleton singleton = Singleton.Instance;
            //lblError.Text = singleton.getUserOrEmp();

            /*if (data.UserOrEmp == null) {
                data.UserOrEmp = "";
            }*/


            /*if (singleton.UserOrEmp.Equals("User"))
             {
                 P1.Visible = false;
                 P2.Visible = false;
                 P3.Visible = false;
                 P4.Visible = false;


             }
             else if (singleton.UserOrEmp.Equals("Employee"))
             {
                 P1.Visible = true;
                 P2.Visible = true;
                 P3.Visible = true;
                 P4.Visible = true;

             }
             else
             {
                 P1.Visible = false;
                 P2.Visible = false;
                 P3.Visible = false;
                 P4.Visible = false;
             }*/

        }


        public void image(object sender, EventArgs e)
        {
            if (userOrEmp.Equals("User"))
            {
                Response.Redirect("ProductDetails.aspx?Parameter" + userOrEmp);
            }
            else
            {
                Response.Redirect("Login.aspx?");
            }
            /*Singleton singleton = Singleton.Instance;
            if (singleton.UserOrEmp.Equals("User"))
            {
                Response.Redirect("ProductDetails.aspx");
            }*/
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