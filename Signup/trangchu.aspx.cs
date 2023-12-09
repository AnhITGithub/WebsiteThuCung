using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebsiteThuCung.Signup
{
    public partial class trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) 
            {
                string taotaikhoan = Request.Form.Get("txtTaotaikhoan");
                string taomatkhau = Request.Form.Get("txtTaomatkhau");
                string email = Request.Form.Get("txtEmail");
                string rematkhau = Request.Form.Get("txtRematkhau");
                List<User> users = (List<User>)Application["User"];
                bool check = true;
                if(taotaikhoan != "" && taomatkhau!="" && email !="" && rematkhau != "")
                {
                    foreach (User user in users)
                    {
                        if (taotaikhoan == user.username)
                        {
                            ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
                                    "Thông báo", "alert('Tài khoản đã được sử dụng!')", true);
                            check = false;

                        }
                    }
                    if (check)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(),
                                    "Thông báo", "alert('Đăng ký thành công!')", true);
                        User newUser = new User(taotaikhoan,taomatkhau,email,rematkhau);
                        users.Add(newUser);
                        Application["User"] = users;
                        Response.Redirect("../Login/trangchu.aspx");
                    }
                }
            }
        }
    }
}