using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace WebsiteThuCung
{
    public class Global : HttpApplication
    {
        //public const string PRODUCT_LIST = "DSSP";
        protected void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            // Tạo danh sách người dùng
            Application["User"] = new List<User>();
            List<User> users = (List<User>)Application["User"];

            // Thêm tài khoản mặc định
            users.Add(new User("duongtuananh", "111", "duongtuananh@gmail.com", "111"));
            users.Add(new User("dutuananh", "222", "dutuananh@gmail.com", "222"));
            users.Add(new User("kieuthu", "333", "kieuthu@gmail.com", "333"));
            users.Add(new User("dinhbao", "888", "dinhbao@gmail.com", "888"));
            users.Add(new User("admin", "000", "admin@gmail.com", "000"));

            // Tạo danh sách sản phẩm
            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = new List<Product>();

            // Sản phẩm nổi bật
            ProductList.Add(new Product() { Sl = "1",Id = "1", Anh = "../Img/picnoibat1.jpg", Ten = "Bóng dây cam thảo", Gia = "100000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." }); ; ;
            ProductList.Add(new Product() { Sl = "2", Id = "2", Anh = "../Img/picnoibat2.jpg", Ten = "Hạt thực vật Mera", Gia = "200000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });
            ProductList.Add(new Product() { Sl = "3", Id = "3", Anh = "../Img/picnoibat3.jpg", Ten = "Khay ăn cặp đôi", Gia = "300000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });
            ProductList.Add(new Product() { Sl = "4", Id = "4", Anh = "../Img/picnoibat4.jpg", Ten = "Nệm vuông nhồi nước", Gia = "400000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });

            // Sản phẩm thời trang
            ProductList.Add(new Product() { Sl = "5", Id = "5", Anh = "../Img/picthoitrang.jpg", Ten = "Áo khoác vàng khè", Gia = "500000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });
            ProductList.Add(new Product() { Sl = "6", Id = "6", Anh = "../Img/picthoitrang1.jpg", Ten = "Bộ Adidas thời trang", Gia = "600000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });
            ProductList.Add(new Product() { Sl = "7", Id = "7", Anh = "../Img/picthoitrang2.jpg", Ten = "Hoddie Pink dân chơi", Gia = "700000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });
            ProductList.Add(new Product() { Sl = "8", Id = "8", Anh = "../Img/picthoitrang3.jpg", Ten = "Áo bộ công sở", Gia = "800000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });
            ProductList.Add(new Product() { Sl = "9", Id = "9", Anh = "../Img/picthoitrang4.jpg", Ten = "Áo cộc bông mỏng", Gia = "900000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });
            ProductList.Add(new Product() { Sl = "10", Id = "10", Anh = "../Img/picthoitrang5.jpg", Ten = "Mũ cảnh sát", Gia = "803000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });
            ProductList.Add(new Product() { Sl = "11", Id = "11", Anh = "../Img/picthoitrang6.jpg", Ten = "Áo khoác Lunar New Year", Gia = "950000", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });
            ProductList.Add(new Product() { Sl = "12", Id = "12", Anh = "../Img/picthoitrang7.jpg", Ten = "Bộ đồ ngủ Princess", Gia = "623999", Mota = "Áo khoác thú cưng là một món đồ thời trang thú vị và thực sự đáng yêu dành cho các thành viên bốn chân của gia đình. Được thiết kế đặc biệt để bảo vệ và làm ấm cho thú cưng yêu quý của bạn trong những ngày lạnh, áo khoác thú cưng thường có các kiểu dáng và mẫu mã đa dạng, từ những chiếc áo cổ tròn đơn giản đến những bộ áo với hình ảnh hoạt họa ngộ nghĩnh hoặc các chi tiết thời trang độc đáo." });

            Application["ProductList"] = ProductList;

            // Khởi tạo danh sách đánh giá của khách hàng
            List<Rate> danhsachDanhgia = new List<Rate>
            {
                //new Rate("Tuấn Tiền Triệu","Áo quá rộng","Dặn shop thế rồi mà vẫn giao nhầm size")
            };
            Application["dsDanhgia"] = danhsachDanhgia;
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            Session["hello"] = 0;
            List<Rate> danhsachDanhgia = (List<Rate>)Session["dsDanhgia"];
            Session["dsDanhgia"] = danhsachDanhgia;
        }
    }
}