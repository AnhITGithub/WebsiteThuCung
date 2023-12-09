<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gioithieu.aspx.cs" Inherits="WebsiteThuCung.GioiThieu.gioithieu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giới thiệu</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../GioiThieu/gioithieu.css" rel="stylesheet" />
    <link href="../fontawesome-free-6.4.0-web/css/all.css" rel="stylesheet" />
</head>
<body>
    <%--Đầu--%>
    <div class="header">
        <div class="top">
            <div class="brand">
                <a href="../TrangChu/trangchu.aspx">
                    <img alt="Ảnh thương hiệu" src="brand.jpg" /></a>
            </div>
            <div class="log" id="hello" runat="server">
                <a href="../Login/trangchu.aspx" ><i class="fa-solid fa-right-to-bracket"></i>Đăng nhập</a> |
                <a href="../GioHang/giohang.aspx"><i class="fa-solid fa-cart-shopping"></i>Giỏ hàng</a>
            </div>
        </div>
        <div class="nav">
            <ul>
                <li><a href="">DANH MỤC SẢN PHẨM</a>
                    <div class="dropdown">
                        <ul>
                            <li><a href="">Đồ ăn</a></li>
                            <li><a href="">Phụ kiện</a></li>
                            <li><a href="">Đồ chơi</a></li>
                            <li><a href="../DMTrangSuc/dmtrangsuc.aspx">Thời trang</a></li>
                        </ul>
                    </div>
                </li>
                <li><a href="../TinTuc/trangchu.aspx">TIN TỨC</a></li>
                <li><a href="../LienHe/trangchu.aspx">LIÊN HỆ</a></li>
                <li><a href="../GioiThieu/gioithieu.aspx">GIỚI THIỆU</a></li>
            </ul>
        </div>
    </div>

    <%--Thân--%>
    <div class="container">
        <h2>VỀ CHÚNG TÔI</h2>
        <hr />
        <div class="contain">
            <div class="image">
                <img src="corgi.jpg" alt="Ảnh giới thiệu" />
            </div>
            <div class="introduce">
                <h3>Sứ mệnh của THE PET SHOP</h3>
                <p>
                    Chào mừng bạn đến với cửa hàng chăm sóc thú cưng của chúng tôi, 
                nơi mà sự yêu thương và chăm sóc cho người bạn lông luôn là ưu tiên hàng đầu. 
                Tại cửa hàng của chúng tôi, chúng tôi tự hào cung cấp một sự lựa chọn đa dạng 
                về đồ và phụ kiện chất lượng dành cho thú cưng của bạn. Bạn có thể tìm thấy từ 
                thức ăn dinh dưỡng cao cấp đến đồ chơi thú vị, phụ kiện thời trang và sản phẩm 
                chăm sóc sức khỏe. Đội ngũ nhân viên nhiệt tình và am hiểu của chúng tôi luôn sẵn 
                sàng hỗ trợ bạn trong việc tìm kiếm những sản phẩm phù hợp nhất với thú cưng của bạn. 
                Chúng tôi cam kết đảm bảo rằng người bạn lông của bạn sẽ được chăm sóc tốt nhất và có 
                một cuộc sống hạnh phúc và khỏe mạnh.
                </p>
                <button>Xem thêm</button>
            </div>
        </div>

    </div>

    <%--Kết--%>
    <div class="footer">
        <div class="foursure">
            <div class="sure">
                <img alt="Ảnh giao hàng" src="fast-delivery.png" />
                <div class="text">
                    <h3>GIAO HÀNG MIỄN PHÍ</h3>
                    <p>Với đơn trên 500.000đ</p>
                </div>
            </div>
            <div class="sure">
                <img alt="Ảnh 24/7" src="24-7.png" />
                <div class="text">
                    <h3>HỖ TRỢ 24/7</h3>
                    <p>Nhiệt tình chu đáo</p>
                </div>
            </div>
            <div class="sure">
                <img alt="Ảnh hộp" src="box.png" />
                <div class="text">
                    <h3>ĐỔI TRẢ TRONG NGÀY</h3>
                    <p>Nhanh chóng thuận tiện</p>
                </div>
            </div>
            <div class="sure">
                <img alt="Ảnh giá" src="pricing.png" />
                <div class="text">
                    <h3>GIÁ TIÊU CHUẨN</h3>
                    <p>Chuẩn quốc tế</p>
                </div>
            </div>
        </div>
        <div class="bottom">
            <div class="col_bottom">
                <h3>THE PET SHOP</h3>
                <p>
                    <b>Địa chỉ:</b> 96 P. Định Công, Phương Liệt,<br />
                    Thanh Xuân, Hà Nội
                </p>
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
                <input type="text" placeholder="Nhập email..." />
                <input type="button" value="Đăng ký" />
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
</body>
</html>
