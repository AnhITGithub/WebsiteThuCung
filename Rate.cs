using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteThuCung
{
    public class Rate
    {
        public string nickname;
        public string title;
        public string comment;
        public Rate(string nickname, string title, string comment)
        {
            this.nickname = nickname;
            this.title = title;
            this.comment = comment;
        }
    }
}