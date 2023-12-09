using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteThuCung.DMTrangSuc
{
    public partial class dmtrangsuc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                hello.InnerHtml = "<p>Xin chào " + "<b>" + Session["username"].ToString() + "</b>" + " / <a href='../SignOut/signout.aspx'><i class='fa-solid fa-xmark'></i>Đăng xuất</a> | <a href='../GioHang/giohang.aspx'><i class='fa-solid fa-cart-shopping'></i>Giỏ hàng</a></p>";
            }

            var search = Request.QueryString.Get("txtTenhang");
            List<Product> ProductList = (List<Product>)Application["ProductList"];
            List<Product> sanpham=new List<Product>();
            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "5" || id == "6" || id == "7" || id == "8" || id == "9" || id == "10" || id == "11" || id == "12")
                {
                    if (search != null && !product.Ten.ToLower().Contains(search.ToLower()))
                    {
                        continue;
                    }
                    sanpham.Add(product);
                }
            }
            sanphamthoitrang.DataSource = sanpham;
            sanphamthoitrang.DataBind();

        }
        protected void AddToCartButton(object sender, EventArgs e)
        {
            
            string id = Request.QueryString["Id"];
            // Store items to cookies
            if (Request.Cookies["Cart"] == null)
            {
                Response.Cookies["Cart"].Value = $"{id},";
                Response.Cookies["Cart"].Expires = DateTime.Now.AddDays(15) ;
            }
            else
            {
                // Store cookies by productID, example: 1,2,3...
                Response.Cookies["Cart"].Value = Request.Cookies["Cart"].Value + $"{id},";
                Response.Cookies["Cart"].Expires = DateTime.Now.AddDays(15);
            }
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Thêm vào giỏ hàng thành công!')", true);
        }

        protected void Search_ServerClick(object sender, EventArgs e)
        {
            //DataTable dt = (DataTable)ViewState["Table"];
            //DataTable dt1=new DataTable();
            //var v1 = dt.AsEnumerable().Where(r => r.Field<String>("Ten").Contains(txtTenhang.Value));
            // if (v1.Any())
            // {
            //     dt1 = v1.CopyToDataTable();
            // }
            //sanphamthoitrang.DataSource=dt1;
            //sanphamthoitrang.DataBind();

            List<Product> ProductList = (List<Product>)Application["ProductList"];
            string searchTerm = txtTenhang.Value;
            var filteredData = ProductList.Where(r => r.Ten.Contains(searchTerm)).ToList();
            sanphamthoitrang.DataSource = filteredData;
            sanphamthoitrang.DataBind();
        }
    }
}