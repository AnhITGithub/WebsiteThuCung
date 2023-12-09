using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteThuCung
{
    public class User
    {
        public string username;
        public string password;
        public string email;
        public string authenpassword;
        public User(string username, string password,string email,string authenpassword) 
        {
            this.username = username;
            this.password = password;
            this.email = email;
            this.authenpassword = authenpassword;
        }
    }
}