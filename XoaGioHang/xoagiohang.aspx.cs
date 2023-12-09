using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteThuCung.XoaGioHang
{
    public partial class xoagiohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string xoaProductID = Request.QueryString["Id"];
            string xoaProductIDinCookies = xoaProductID + ",";
            string cartCookies = Request.Cookies["Cart"].Value;
            int xoaProductID_PositionInCookies=cartCookies.IndexOf(xoaProductID);
            string newCookiesAfter_xoaProductID=cartCookies.Remove(xoaProductID_PositionInCookies,xoaProductIDinCookies.Length);

            Response.Cookies["Cart"].Value= newCookiesAfter_xoaProductID;
            Response.Cookies["Cart"].Expires= DateTime.Now.AddDays(15);
            Response.Redirect("../GioHang/giohang.aspx");
        }
    }
}