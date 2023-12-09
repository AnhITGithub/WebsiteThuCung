using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebsiteThuCung
{
    public class Cart:Product
    {
        public Cart(string id, string ten, string gia, string anh) 
        {
            this.Id = id;
            this.Ten = ten;
            this.Gia = gia;
            this.Anh = anh;
        }
    }
}