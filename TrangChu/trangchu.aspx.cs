using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteThuCung.TrangChu
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                hello.InnerHtml = "<p>Xin chào " +"<b>"+Session["username"].ToString() +"</b>" + " / <a href='../SignOut/signout.aspx'><i class='fa-solid fa-xmark'></i>Đăng xuất</a> | <a href='../GioHang/giohang.aspx'><i class='fa-solid fa-cart-shopping'></i>Giỏ hàng</a></p>";
            }
            List<Product> ProductList = (List<Product>)Application["ProductList"];
            List<Product> sanpham = new List<Product>();
            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "1" || id == "2" || id == "3" || id == "4")
                {
                    sanpham.Add(product);
                }
            }
            sanphamnoibat.DataSource = sanpham;
            sanphamnoibat.DataBind();

        }
        protected void AddToCartButton(object sender, EventArgs e)
        {

            string id = Request.QueryString["Id"];
            // Store items to cookies
            if (Request.Cookies["Cart"] == null)
            {
                Response.Cookies["Cart"].Value = $"{id},";
                Response.Cookies["Cart"].Expires = DateTime.Now.AddDays(15);
            }
            else
            {
                // Store cookies by productID, example: 1,2,3...
                Response.Cookies["Cart"].Value = Request.Cookies["Cart"].Value + $"{id},";
                Response.Cookies["Cart"].Expires = DateTime.Now.AddDays(15);
            }
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thêm vào giỏ hàng thành công!')", true);
        }
    }
}