using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteThuCung.GioHang
{
    public partial class giohang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                hello.InnerHtml = "<p>Xin chào " + "<b>" + Session["username"].ToString() + "</b>" + " / <a href='../SignOut/signout.aspx'><i class='fa-solid fa-xmark'></i>Đăng xuất</a></p>";
                if (Request.Cookies["Cart"] != null)
                {
                    List<Product> CartList = new List<Product>();
                    List<Product> ProductList = (List<Product>)Application["ProductList"];
                    string[] productIDs = Request.Cookies["Cart"].Value.Split(',');
                    foreach (string productID in productIDs)
                    {
                        foreach (Product product in ProductList)
                        {
                            if (product.Id == productID)
                            {
                                CartList.Add(product);
                            }
                        }
                    }
                    CartItems.DataSource = CartList;
                    CartItems.DataBind();

                    // Display total price
                    decimal tien = 0;
                    int soluong = 0;
                    foreach (Product product in CartList)
                    {
                        tien += Int32.Parse(product.Gia) * Int32.Parse(product.Sl);
                        soluong += Int32.Parse(product.Sl);
                    }
                    string formattedTien = tien.ToString("C0", new CultureInfo("vi-VN"));
                    tongtien.InnerHtml = $"{formattedTien}";
                    tongsoluong.InnerHtml = $"{soluong}";
                }
                else
                {
                    //Response.Redirect("../GioHang/giohang.aspx");
                    //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                }
            }
            else
            {
                Response.Redirect("../Login/trangchu.aspx");
            }
            
        }
        protected void CartItems_ItemDataBound(object sender, ListViewItemEventArgs e)
        {
            if (e.Item.ItemType == ListViewItemType.DataItem)
            {
                int rowIndex = e.Item.DataItemIndex + 1;
                Label rowNumberLabel = e.Item.FindControl("rowNumberLabel") as Label;

                if (rowNumberLabel != null)
                {
                    rowNumberLabel.Text = rowIndex.ToString();
                }
            }
        }
    }
}