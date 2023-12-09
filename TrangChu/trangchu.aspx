<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trangchu.aspx.cs" Inherits="WebsiteThuCung.TrangChu.trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../TrangChu/trangchu.css" rel="stylesheet" />
    <link href="../fontawesome-free-6.4.0-web/css/all.css" rel="stylesheet" />
      <%--<meta http-equiv="refresh" content="30">--%>
</head>
<body>
    <%--Đầu--%>
    <div class="header">
        <div class="top">
            <div class="brand">
                <a href="trangchu.aspx"><img alt="Ảnh thương hiệu" src="brand.jpg"/></a>
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
                            <li><a href="../DmTrangSuc/dmtrangsuc.aspx">Thời trang</a></li>
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
        <div class="thumbnail">
            <img src="thumbnail.jpg" alt="Ảnh thumbnail"/>
        </div>
        <h2>SẢN PHẨM NỔI BẬT</h2>
        <hr />
        <div class="product">
            <asp:ListView ID="sanphamnoibat" runat="server">
                    <ItemTemplate>
                        <div class="items">
                            <a href="../ChiTietSP/chitietsp.aspx?id=<%# Eval("Id") %>">
                                <img src="<%# Eval("Anh") %>" alt="<%# Eval("Ten") %>" title="<%# Eval("Ten") %>"/>
                                <p class="title"><%# Eval("Ten") %></p>
                                <p class="price"><%# Eval("Gia") %>đ</p>
                            </a>
                            <button type="submit" runat="server" id="addtocart" onserverclick="AddToCartButton"><i class="fa-solid fa-basket-shopping"></i>Thêm vào giỏ hàng</button>
                        </div>
                    </ItemTemplate>
             </asp:ListView>
        </div>
        <h2>TIN TỨC TRONG NGÀY</h2>
        <hr />
        <div class="newspaper">
            <div class="news">
                <img src="newsPic.jpg" alt="Ảnh tin tức"/>
                <h4>Chuột lang nước thân thiện</h4>
                <p>Hàng trăm con cá sấu cũng không thể làm chuột lang nước hoảng sợ...</p>
            </div>
            <div class="news">
                <img src="newsPic.jpg" alt="Ảnh tin tức"/>
                <h4>Chuột lang nước thân thiện</h4>
                <p>Hàng trăm con cá sấu cũng không thể làm chuột lang nước hoảng sợ...</p>
            </div>
            <div class="news">
                <img src="newsPic.jpg" alt="Ảnh tin tức"/>
                <h4>Chuột lang nước thân thiện</h4>
                <p>Hàng trăm con cá sấu cũng không thể làm chuột lang nước hoảng sợ...</p>
            </div>
        </div>
    </div>
    <%--Kết--%>
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
                <form onsubmit="khuyenmai()">
                    <input type="email" id="email" name="email" placeholder="Nhập email..."/>
                    <input type="submit" value="Đăng ký"/>
                </form>
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
        function khuyenmai() {
            event.preventDefault();
            var x = document.getElementById("email").value;
            if (x == "") {
                alert("Vui lòng nhập Email để đăng ký!");
            } else {
                alert("Đăng ký nhận thông tin khuyến mại thành công với Email: " + x);
                document.getElementById("email").value = "";
            }
        }
    </script>
</body>
</html>
