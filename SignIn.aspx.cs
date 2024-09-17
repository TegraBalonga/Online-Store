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
    public partial class SignIn : System.Web.UI.Page
    {


        IFirebaseConfig config = new FirebaseConfig
        {
            AuthSecret = "hSi6Qn8f6OqanogZT6LhAvEbc9QMpPHKEUyubOsG",
            BasePath = "https://prototype-899a7-default-rtdb.firebaseio.com/"
        };


        IFirebaseClient client;

        Singleton singleton = Singleton.Instance;

        string username, password, email, userOrEmp;



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

            lblError.Visible = false;

            if (Request.QueryString["Parameter"] != null)
            {
                userOrEmp = Request.QueryString["Parameter"].ToString();
            }
            else
            {
                userOrEmp = "";
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

            if (email == "")
            {
                empty = false;
            }

            return empty;
        }

       




        //////////////////////////////////////REGISTRATION FORM/////////////////////////////////////

        public async void btnReg_Click(object sender, EventArgs e)
        {
           
            
            username = regUsername.Value;
            email = regEmail.Value;
            password = regPass.Value;


            if (fieldNotEmpty())
            {


                var result = client.Get("Users/" + username);

                if (!result.Equals(null))
                {


                    lblError.Visible = true;
                    lblError.Text = "This user already exist.";
                    lblError.ForeColor = System.Drawing.Color.Red;

                }
                else
                {



                    //data.dataLayer(username, password, email);

                    SetResponse response = await client.SetAsync("Users/" + username, singleton);


                    Response.Redirect("Login.aspx");



                }

            }
            else
            {

                lblError.Visible = true;
                lblError.Text = "Fields cannot be empty";
                lblError.ForeColor = System.Drawing.Color.Red;

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