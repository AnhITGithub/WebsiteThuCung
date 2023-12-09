<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="WebsiteThuCung.TinTuc.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tin tức</title>
     <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../Trangchu/trangchu.css" rel="stylesheet" />
    <link href="../fontawesome-free-6.4.0-web/css/all.css" rel="stylesheet" />
</head>
<body>
    <link href="trangchu.css" rel="stylesheet" />
    <div class="header">
        <div class="top">
            <div class="brand">
                <a href="../TrangChu/trangchu.aspx"><img alt="Ảnh thương hiệu" src="brand.jpg"/></a>
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
                            <li><a href="">Đồ dùng</a></li>
                            <li><a href="">Đồ chơi</a></li>
                            <li><a href="../DMTrangSuc/dmtrangsuc.aspx">Trang sức</a></li>
                         </ul>
                    </div>
                </li>
               <li><a href="../TinTuc/trangchu.aspx" class="tintuc">TIN TỨC</a></li>
               <li><a href="../LienHe/trangchu.aspx">LIÊN HỆ</a></li>
               <li><a href="../GioiThieu/gioithieu.aspx">GIỚI THIỆU</a></li>
            </ul>
        </div>
    </div>
     <div class="text-tintuc">
            <h1>Tin Tức</h1>
            <hr />
        </div>
    <div class="container">
        <div class="items">
            <img src="../Img/TinTuc/ChoPhoc.jpg" class="items-img"/>
            <h2 class="title">
                Những Chú Chó Nổi Tiếng Việt Nam và trên thế giới
            </h2>
            <p class="content">Hình ảnh của những chú chó nổi tiếng trên mạng xã hội Việt Nam và thế giới  luôn thu hút sự quan tâm...</p>
        </div>
        <div class="items">
            <img src="../Img/TinTuc/ho.jpg" class="items-img"/>
            <h2 class="title">
                Chăm sóc 7 hổ con Đông Dương sau giải cứu
            </h2>
            <p class="content">7 hổ con Đông Dương sau khi giải cứu từ những người vận chuyển động vật hoang dã...</p>
        </div>
        <div class="items">
            <img src="../Img/TinTuc/Chu-cho-beo-nhat-Ha-Noi.jpg" class="items-img"/>
            <h2 class="title">
                Chó nghiệp vụ của Mỹ chết vì không được chăm sóc tử tế
            </h2>
            <p class="content">Nhiều chú chó nghiệp vụ Mỹ được huấn luyện bày bản chết vì không được chăm sóc tử tế...</p>
        </div>
        <div class="items">
            <img src="../Img/TinTuc/chodoi.jpg" class="items-img"/>
            <h2 class="title">
                Narwhal – chú cún kì lạ với chiếc đuôi trên mặt
            </h2>
            <p class="content">Mới đây nhất trên mạng xã hội bỗng dưng xuất hiện một chú cún con có chiếc đuôi mọc ở ngay...</p>
        </div>
        <div class="items">
            <img src="../Img/TinTuc/hamter.jpg" class="items-img"/>
            <h2 class="title">
                Dữ liệu nghiên cứu ở Hồng Kông về khả năng chuột hamster truyền Covid-19 cho người
            </h2>
            <p class="content">Thú cưng chuột hamster có thể truyền bệnh Covid-19 cho người, và nhiều khả năng là nguồn lây...</p>
        </div>
        <div class="items">
            <img src="../Img/TinTuc/nhim.jpg" class="items-img"/>
            <h2 class="title">
                Phát hiện loài chuột chũi mới ở Tây Nguyên
            </h2>
            <p class="content">Loài chuột chũi được phát hiện tại núi Ngọc Linh (Kon Tum) và khu vực Trung Trường Sơn...</p>
        </div>
        <div class="items">
            <img src="../Img/TinTuc/nuoi.jpg" class="items-img"/>
            <h2 class="title">
                Nuôi chó mèo khi nhà có con nhỏ – NÊN hay KHÔNG?
            </h2>
            <p class="content">Có thể với nhiều người mà nói thú cưng giống như là đứa con đầu lòng vậy đó nhưng...</p>
        </div>
        <div class="items">
            <img src="../Img/TinTuc/nuoi1.jpg" class="items-img"/>
            <h2 class="title">
                Thú cưng đã dạy cho chúng ta biết trưởng thành như thế nào?
            </h2>
            <p class="content">Là một con người, bạn sẽ luôn tin rằng mình là kẻ vượt trội so với muôn loài. Chẳng gì chúng ta...</p>
        </div>
        <div class="items">
            <img src="../Img/TinTuc/tho.jpg" class="items-img"/>
            <h2 class="title">
                Cuộc xâm chiếm nhanh nhất thế giới của động vật có vú
            </h2>
            <p class="content">Dù thường được coi là dễ thương, thỏ là động vật xâm lấn nguy hiểm ở Australia kh...</p>
        </div>
    </div>
    <div class="xemthem">
        <input type="button" value="Xem thêm" onclick="msg()"  id="btnXemthem"/>
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
</body>
</html>
