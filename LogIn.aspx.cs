using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FireSharp.Config;
using FireSharp.Response;
using FireSharp.Interfaces;


namespace Prototype
{
    public partial class LogIn : Page
    {

        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "hSi6Qn8f6OqanogZT6LhAvEbc9QMpPHKEUyubOsG",
            BasePath = "https://prototype-899a7-default-rtdb.firebaseio.com/"
        };


        IFirebaseClient client;

        Singleton singleton = Singleton.Instance;

        string username, password, userOrEmp;




        protected void Page_Load(object sender, EventArgs e)
        {
           

            try
            {
                client = new FireSharp.FirebaseClient(config);
            }
            catch
            {
                Response.Write("<script>alert('Connection was unsuccessful');</script>");
            }


            if (Request.QueryString["Parameter"] != null)
            {
                userOrEmp = Request.QueryString["Parameter"].ToString();
            }
            else
            {
                userOrEmp = "";
            }

            lblError.Visible = false;
           // userOrEmp = Request.QueryString["Parameter"].ToString();


        }




        //////////////////////////////////////LOGIN FORM/////////////////////////////////////
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            username = loginUsername.Value;
            password = loginPass.Value;

            if (fieldNotEmpty())
            {


                var result = client.Get("Users/" + username);
                singleton = result.ResultAs<Singleton>();

                if (singleton != null && singleton.username != null)
                {

                    //Username exist

                    singleton.setUserOrEmp("User");
                    //lblError.Visible = true;
                    //lblError.Text = data.getUserOrEmp();
                    //Response.Redirect("Home.aspx");
                    Response.Redirect("Home.aspx?Parameter=User");


                }
                else
                {
                    //Username doesn't exist. Checking in Employees

                    result = client.Get("Employees/" + username);
                    singleton = result.ResultAs<Singleton>();

                    if (singleton != null && singleton.username != null)
                    {

                        //Username exist

                        singleton.setUserOrEmp("Employee");
                        //lblError.Visible = true;
                        //lblError.Text = data.getUserOrEmp();
                        //Response.Redirect("Home.aspx");
                        Response.Redirect("Home.aspx?Parameter=Employee");

                    }
                    else
                    {
                        //Username doesn't exist in Employees.


                        lblError.Visible = true;
                        lblError.Text = "Username or password entered is incorrect";
                        lblError.ForeColor = System.Drawing.Color.Red;

                    }


                }

            }
            else
            {
                lblError.Visible = true;
                lblError.Text = "Fields cannot be empty";
                lblError.ForeColor = System.Drawing.Color.Red;
            }

        }




        public bool fieldNotEmpty()
        {
            bool empty = true;

            if (username == "")
            {
                empty = false;
            }

            if (password == "")
            {
                empty = false;
            }

            return empty;
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