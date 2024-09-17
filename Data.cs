using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Prototype
{
    public sealed class Singleton
    {
        private static Singleton instance = null;
        private static readonly object padlock = new object();

        Singleton()
        {
        }

        public static Singleton Instance
        {
            get
            {
                lock (padlock)
                {
                    if (instance == null)
                    {
                        instance = new Singleton();
                    }
                    return instance;
                }
            }
        }
    







    /*public void dataLayer() { }

    public void dataLayer(string username, string password, string email)
    {
        this.username = username;
        this.password = password;
        this.email = email;
    }*/


    public string username, password, email, UserOrEmp;

        public string getUsername()
        {
            return username;
        }

        public void setUsername(string username)
        {
            this.username = username;
        }

        public string getPassword()
        {
            return password;
        }

        public void setPassword(string password)
        {
            this.password = password;
        }

        public string getEmail()
        {
            return email;
        }

        public void setEmail(string email)
        {
            this.email = email;
        }

        public string getUserOrEmp()
        {
            return UserOrEmp;
        }

        public void setUserOrEmp(string userOrEmp)
        {
            this.UserOrEmp = userOrEmp;
        }


    }
}