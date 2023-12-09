using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mime;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease;

namespace WebsiteThuCung.ChiTietSP
{
    public partial class chitietsp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                hello.InnerHtml = "<p>Xin chào " + "<b>" + Session["username"].ToString() + "</b>" + " / <a href='../SignOut/signout.aspx'><i class='fa-solid fa-xmark'></i>Đăng xuất</a> | <a href='../GioHang/giohang.aspx'><i class='fa-solid fa-cart-shopping'></i>Giỏ hàng</a></p>";
            }
            string id = Request.QueryString["Id"];
            if (id != null)
            {
                List<Product> ProductList = (List<Product>)Application["ProductList"];
                List<Product> ProductDetails = new List<Product>();
                foreach (Product product in ProductList)
                {
                    if (id == product.Id)
                    {
                        ProductDetails.Add(product);
                    }

                }
                productDetailFashion.DataSource = ProductDetails;
                productDetailFashion.DataBind();
            }


        }

        protected void AddCart_ServerClick(object sender, EventArgs e)
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
            Response.Redirect("../GioHang/giohang.aspx");
        }

        protected void Gui_ServerClick(object sender, EventArgs e)
        {
            List<Rate> danhsachDanhgia = (List<Rate>)Application["dsDanhgia"];
            string nickname = Request.Form["nickname"];
            string title = Request.Form["title"];
            string content = Request.Form["content"];

            if (danhsachDanhgia != null)
            {
                danhsachDanhgia.Clear();
            }

            if (!string.IsNullOrEmpty(nickname) && !string.IsNullOrEmpty(title) && !string.IsNullOrEmpty(content))
            {
                Rate newRate = new Rate(nickname, title, content);
                danhsachDanhgia.Add(newRate);

                Session["dsDanhgia"] = danhsachDanhgia;

                // After adding a new rating, refresh the display
                ShowRatings();
            }
        }

        private void ShowRatings()
        {
            nickname.Value = null;
            title.Value = null;
            content.Value = null;
            List<Rate> danhsachDanhgia = (List<Rate>)Application["dsDanhgia"];
            if (danhsachDanhgia != null)
            {
                // Hiển thị danh sách đánh giá
                StringBuilder htmlBuilder = new StringBuilder();
                htmlBuilder.Append("<div style=\"display: flex;padding: 0 60px;margin-bottom:20px;\">");
                htmlBuilder.Append("<div style=\"margin-right: 20px;\"><img src=\"UserIconProfile2.jpg\" alt=\"Ảnh đại diện\" title=\"Ảnh đại diện\" style=\"width: 60px;border: 1px solid black;\"></div>");

                foreach (Rate rate in danhsachDanhgia)
                {
                    htmlBuilder.Append($"<div style=\"width: 100%;border: 1px solid black;padding: 10px 10px;\">");
                    htmlBuilder.Append($"<span style=\"color: #c49a6c;font-weight: bold;\">{rate.nickname}</span>");
                    htmlBuilder.Append($"<label style=\"color: red;margin-left: 10px;\">({rate.title})</label>");
                    htmlBuilder.Append("<hr style=\"margin:0;margin:10px 0;padding:0 10px;\">");
                    htmlBuilder.Append($"<p>{rate.comment}</p></div>");
                }

                htmlBuilder.Append("</div>");

                // Clear existing content and set the new HTML content
                HienDanhgia.Text += htmlBuilder.ToString();
            }
        }

    }
}