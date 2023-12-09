using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteThuCung.Login
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string taikhoan = Request.Form.Get("txtTaikhoan");
                string matkhau = Request.Form.Get("txtMatkhau");
                int dem = 0;
                if (taikhoan != "" && matkhau != "")
                {
                    List<User> users = (List<User>)Application["User"];
                    foreach (User user in users)
                    {
                        if (taikhoan == user.username)
                        {
                            dem = 1;
                            if (matkhau == user.password)
                            {
                                Session["username"] = taikhoan;
                                Response.Redirect("../TrangChu/trangchu.aspx");
                                break;
                            }
                            else
                            {
                                ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
                                    "Thông báo", "alert('Sai mật khẩu!')", true);
                                break;
                            }
                        }
                    }
                    if (dem == 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
                                    "Thông báo", "alert('Tài khoản không tồn tại!')", true);
                    }
                }
            }

            //if (IsPostBack)
            //{
            //    string taikhoan = Request.Form.Get("txtTaikhoan");
            //    string matkhau = Request.Form.Get("txtMatkhau");
            //    int dem = 0;

            //    // Kiểm tra xem có quá 3 lần đăng nhập sai không
            //    if (Session["loginAttempts"] == null)
            //    {
            //        Session["loginAttempts"] = 0;
            //    }

            //    int loginAttempts = (int)Session["loginAttempts"];

            //    if (loginAttempts >= 3)
            //    {
            //        ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
            //            "Thông báo", "alert('Bạn đã đăng nhập sai quá 3 lần. Hãy thử lại sau.')", true);
            //    }
            //    else
            //    {
            //        List<User> users = (List<User>)Application["User"];

            //        foreach (User user in users)
            //        {
            //            if (taikhoan == user.username)
            //            {
            //                dem = 1;

            //                if (matkhau == user.password)
            //                {
            //                    // Đặt lại số lần đăng nhập sai khi đăng nhập thành công
            //                    Session["loginAttempts"] = 0;

            //                    Session["username"] = taikhoan;
            //                    Response.Redirect("../TrangChu/trangchu.aspx");
            //                    break;
            //                }
            //                else
            //                {
            //                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
            //                        "Thông báo", "alert('Sai mật khẩu!')", true);

            //                    // Tăng số lần đăng nhập sai
            //                    Session["loginAttempts"] = loginAttempts + 1;

            //                    break;
            //                }
            //            }
            //        }

            //        if (dem == 0)
            //        {
            //            ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
            //                "Thông báo", "alert('Tài khoản không tồn tại!')", true);
            //            Session["loginAttempts"] = loginAttempts + 1;
            //        }
            //    }
            //}
        }
    }
}