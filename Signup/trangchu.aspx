<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="WebsiteThuCung.Signup.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../Trangchu/trangchu.css" rel="stylesheet" />
    <link href="../fontawesome-free-6.4.0-web/css/all.css" rel="stylesheet" />
</head>
<body>
    <link href="../Signup/trangchu.css" rel="stylesheet" />
    <div class="header">
        <div class="top">
            <div class="brand">
                <a href="../TrangChu/trangchu.aspx"><img alt="Ảnh thương hiệu" src="brand.jpg"/></a>
            </div>
            <div class="log">
               <a href="../Login/trangchu.aspx" id="hello" runat="server"></a>
                <a href="../GioHang/giohang.aspx"><i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a>
            </div>
        </div>
        <div class="nav">
            <ul>
               <li><a href="">DANH MỤC SẢN PHẨM</a>
                    <div class="dropdown">
                        <ul>
                            <li><a href="">Đồ ăn</a></li>
                            <li><a href="">Đồ dùng</a></li>
                            <li><a href="">Đồ chơi</a></li>
                            <li><a href="../DMTrangSuc/dmtrangsuc.aspx">Trang sức</a></li>
                         </ul>
                    </div>
                </li>
               <li><a href="../TinTuc/trangchu.aspx">TIN TỨC</a></li>
               <li><a href="../LienHe/trangchu.aspx">LIÊN HỆ</a></li>
               <li><a href="../GioiThieu/gioithieu.aspx">GIỚI THIỆU</a></li>
               
            </ul>
        </div>
    </div>

    <div class="container">
        <h2>TẠO TÀI KHOẢN</h2>
        <hr />
        <div class="signupForm">
            <form method="post" runat="server" id="myForm" name="myForm" onsubmit="chkValidate()">
                <label for="txtTaotaikhoan"><i class="fa-solid fa-user"></i>Nhập tài khoản:</label><br />
                <input type="text" id="txtTaotaikhoan" name="txtTaotaikhoan" required="required" placeholder="Hãy tạo tài khoản dễ nhớ..."/>
                <br />
                <label for="txtTaomatkhau"><i class="fa-solid fa-lock"></i>Nhập mật khẩu:</label><br />
                <input type="password" id="txtTaomatkhau" name="txtTaomatkhau" required="required" placeholder="Hãy tạo mật khẩu có tính bảo mật cao..."/>
                <br />
                <label for="txtEmail"><i class="fa-solid fa-envelope"></i>Nhập email:</label><br />
                <input type="email" id="txtEmail" name="txtEmail" required="required" placeholder="Nhập email để nhận mail xác thực..."/>
                <br />
                <label for="txtRematkhau"><i class="fa-solid fa-shield"></i>Xác nhận mật khẩu:</label><br />
                <input type="password" id="txtRematkhau" name="txtRematkhau" required="required" placeholder="Nhập lại mật khẩu trên..."/>
                <br />
                <input type="submit" value="ĐĂNG KÝ" runat="server"/>
                <p>Đã có tài khoản!<a href="../Login/trangchu.aspx"> Đăng nhập</a></p>
            </form>
        </div>
    </div>
    
    <div class="footer">
        <div class="foursure">
            <div class="sure">
                <img alt="Ảnh giao hàng" src="fast-delivery.png"/>
                <div class="text">
                    <h3>GIAO HÀNG MIỄN PHÍ</h3>
                    <p>Với đơn trên 500.000đ</p>
                </div>
            </div>
            <div class="sure">
                <img alt="Ảnh 24/7" src="24-7.png"/>
                <div class="text">
                    <h3>HỖ TRỢ 24/7</h3>
                    <p>Nhiệt tình chu đáo</p>
                </div>
            </div>
            <div class="sure">
                <img alt="Ảnh hộp" src="box.png"/>
                <div class="text">
                    <h3>ĐỔI TRẢ TRONG NGÀY</h3>
                    <p>Nhanh chóng thuận tiện</p>
                </div>
            </div>
            <div class="sure">
                <img alt="Ảnh giá" src="pricing.png"/>
                <div class="text">
                    <h3>GIÁ TIÊU CHUẨN</h3>
                    <p>Chuẩn quốc tế</p>
                </div>
            </div>
        </div>
        <div class="bottom">
            <div class="col_bottom">
                <h3>THE PET SHOP</h3>
                <p><b>Địa chỉ:</b> 96 P. Định Công, Phương Liệt,<br /> Thanh Xuân, Hà Nội</p>
                <p><b>Hotline:</b> 1900561270</p>
                <p><b>Email:</b> support@thepetshop.com</p>
            </div>
            <div class="col_bottom col2">
                <h3>CHÍNH SÁCH</h3>
                <div class="animate">
                    <p>Giao hàng</p>
                    <p>Đổi trả</p>
                    <p>Bảo hành</p>
                    <p>Bảo mật</p>
                </div>
            </div>
            <div class="col_bottom col3">
                <h3>DỊCH VỤ</h3>
               <div class="animate">
                    <p>Chăm sóc</p>
                    <p>Vệ sinh</p>
                    <p>Lưu trú</p>
                    <p>Spa</p>
               </div>
            </div>
            <div class="col_bottom col4">
                <h3>NHẬN TIN KHUYẾN MÃI</h3>
                <input type="text" placeholder="Nhập email..."/>
                <input type="button" value="Đăng ký"/>
                <br />
                <i class="fa-brands fa-facebook"></i>
                <i class="fa-brands fa-tiktok"></i>
                <i class="fa-brands fa-youtube"></i>
                <i class="fa-solid fa-envelope"></i>
            </div>
        </div>
        <div class="copyright">
            <p><b>Copyright ©2023</b> | Design by <b>G01</b></p>
        </div>
    </div>
    <script>
        let count = 0;
        function chkValidate() {
             // !pswCondition.test(matkhau) --> cách 2 //!matkhau.match(/[a-z]/) --> cách 1
              // (?=.*[0-9]) -> ít nhất 1 con số
            // (?=.*[!@#$%^&*]) -> ít nhất một ký tự đặc biệt
            // [a-zA-Z0-9!@#$%^&*] -> có thể bao gồm chữ hoa, chữ thường, số
            // {6,16} -> phải nhiều hơn 6 ký tự

            var taikhoan = document.getElementById("txtTaotaikhoan").value;
            var matkhau = document.getElementById("txtTaomatkhau").value;
            var email = document.getElementById("txtEmail").value;
            var rematkhau = document.getElementById("txtRematkhau").value;
            var pswCondition1 = /(?=.*[a-z])(?=.*[A-Z])/;
            var pswCondition2 = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
            if (!pswCondition1.test(matkhau)) {
                event.preventDefault();
                if (count < 3) {
                    count++;
                    alert("Mật khẩu phải bao gồm chữ hoa và chữ thường " + count);
                    document.getElementById("txtTaomatkhau").style.borderColor = "red";
                    document.getElementById("txtTaomatkhau").style.borderWidth = "medium";
                } else {
                    alert("Bạn đã nhập sai định dạng mật khẩu hơn 3 lần");
                    document.getElementById("myForm").reset();
                }
            } else if (matkhau != rematkhau) {
                event.preventDefault();
                alert("Mật khẩu xác nhận không trùng với mật khẩu đã nhập!");
                document.getElementById("txtTaomatkhau").style.borderColor = "red";
                document.getElementById("txtTaomatkhau").style.borderWidth = "medium";
                document.getElementById("txtRematkhau").style.borderColor = "red";
                document.getElementById("txtRematkhau").style.borderWidth = "medium";
            } else {
                alert("Đăng ký thành công!");
            }

            //var mst = document.getElementById("mst").value;
            //var pattern = /^[a-zA-Z]{3}\d{5}[1-9]$/;

            //// Check if mstInput matches the pattern
            //if (!pattern.test(mst)) {
            //    alert("MST must have 3 letters, followed by 5 digits, and the last character not equal to 0.");
            //    return false; // Prevent form submission
            //}

            // Additional validation logic can be added here if needed

            /*return true;*/ // Allow form submission

            //var isValid = /^.{8,20}$/.test(mst) && parseInt(mst[0]) > 0;
            //if (!isValid) {
            //    alert("MST phải là số, bắt đầu từ số > 0, và có ít nhất 8 kí tự.");
            //    event.preventDefault();
            //    document.getElementById("txtMST").focus;
            //}
            
        }
    </script>
</body>
</html>
