<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chitietsp.aspx.cs" Inherits="WebsiteThuCung.ChiTietSP.chitietsp" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chi tiết sản phẩm</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../ChiTietSP/chitietsp.css" rel="stylesheet" />
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
                <a href="../Login/trangchu.aspx"><i class="fa-solid fa-right-to-bracket"></i>Đăng nhập</a> |
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
        <h2>CHI TIẾT SẢN PHẨM</h2>
        <hr />
        <div class="productDetail">
            <asp:ListView ID="productDetailFashion" runat="server">
                <ItemTemplate>
                    <div class="image">
                        <img src="<%# Eval("Anh") %>" alt="<%# Eval("Ten") %>" title="<%# Eval("Ten") %>" />
                    </div>
                    <div class="detail">
                        <h3 id="tenhang"><%# Eval("Ten") %></h3>
                        <p id="giatien" style="font-weight: bold"><%# Eval("Gia") %> đồng</p>
                        <p style="margin-top: 10px">
                            <%# Eval("Mota") %>
                        </p>
         
            <hr class="hrDetail" />
            <div class="middle">
                <div class="left">
                    <label>Màu sắc:</label>
                    <div class="block">
                        <input class="mausac" type="button" style="background-color: yellow" />
                        <input class="mausac" type="button" style="background-color: red" />
                        <input class="mausac" type="button" style="background-color: aqua" />
                        <input class="mausac" type="button" style="background-color: pink" />
                    </div>
                    <br />
                    <label>Kiểu áo:</label>
                    <div class="style">
                        <input class="kieuao" type="button" value="Có mũ" />
                        <input class="kieuao" type="button" value="Không mũ" />
                    </div>
                    <br />
                    <label>Cỡ áo:</label>
                    <div class="size">
                        <input class="coao" type="button" value="XS" />
                        <input class="coao" type="button" value="S" />
                        <input class="coao" type="button" value="M" />
                        <input class="coao" type="button" value="L" />
                        <input class="coao" type="button" value="XL" />
                        <input class="coao" type="button" value="2XL" />
                    </div>
                    <br />
                    <label>Số lượng:</label>
                    <input type="number" id="soluong" value="<%# Eval("Sl") %>"/>
                </ItemTemplate>
            </asp:ListView>
            <div class="buy">
                <input type="button" class="btn" value="Mua hàng" onclick="muangay()"/>
                <input type="button" runat="server" onserverclick="AddCart_ServerClick" class="btn" value="Thêm vào giỏ hàng" />
            </div>

        </div>
        <div class="right">
            <details>
                <summary>Bảng kích thước và size</summary>
                <img src="sizePic.png" alt="Ảnh size thời trang" />
            </details>
        </div>
        </div>
        </div>


    </div>
    <h2>ĐÁNH GIÁ SẢN PHẨM</h2>
    <hr />
    <div class="rate">
        <form runat="server" method="post">
            <label>Nội dung đánh giá:</label>
            <br />
            <textarea runat="server" name="content" id="content" placeholder="Để lại đánh giá của bạn tại đây..."></textarea>
            <br />
            <label>Nickname:</label>
            <input runat="server" type="text" name="nickname" id="nickname" placeholder="(Tên đại điện)" required="required" />
            <label>Tiêu đề:</label>
            <input runat="server" type="text" name="title" id="title" placeholder="(Chủ đề bàn luận)" />
            <input runat="server" type="submit" value="Gửi" onserverclick="Gui_ServerClick"/>
        </form>
    </div>
    <h2>ĐÁNH GIÁ CỦA NGƯỜI DÙNG</h2>
    <hr />
    <asp:Literal ID="HienDanhgia" runat="server"></asp:Literal>

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
    <script>
        function muangay() {
            var th = document.getElementById("tenhang").innerHTML;
            var gt = document.getElementById("giatien").innerHTML;
            var sl = document.getElementById("soluong").value;
            var tongtien = parseInt(gt) * parseInt(sl);
            tongtien = tongtien.toLocaleString('vi', { style: 'currency', currency: 'VND' });
            alert("BẠN ĐÃ THÀNH CÔNG SẢN PHẨM DƯỚI ĐÂY:"
                 + "\nMặt hàng: " +th 
                 + "\nMang giá: " +gt
                + "\nVới số lượng: " + sl
                + "\nCùng tổng tiền: " + tongtien);
            window.location.href = '../GioiThieu/gioithieu.aspx';
        }
        function ClearFormFields() {
            document.getElementById('nickname').value = '';
            document.getElementById('title').value = '';
            document.getElementById('content').value = '';
        }
    </script>
</body>
</html>
