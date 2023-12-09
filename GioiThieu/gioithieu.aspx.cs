using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteThuCung.GioiThieu
{
    public partial class gioithieu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                hello.InnerHtml = "<p>Xin chào " + "<b>" + Session["username"].ToString() + "</b>" + " / <a href='../SignOut/signout.aspx'><i class='fa-solid fa-xmark'></i>Đăng xuất</a> | <a href='../GioHang/giohang.aspx'><i class='fa-solid fa-cart-shopping'></i>Giỏ hàng</a></p>";
            }
        }
    }
}