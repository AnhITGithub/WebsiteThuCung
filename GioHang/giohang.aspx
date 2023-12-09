<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="giohang.aspx.cs" Inherits="WebsiteThuCung.GioHang.giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Giỏ hàng</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="../GioHang/giohang.css" rel="stylesheet" />
    <link href="../fontawesome-free-6.4.0-web/css/all.css" rel="stylesheet" />
    <style>
    </style>
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
        <h2>GIỎ HÀNG</h2>
        <hr />
        <div class="containProduct">
            <table id="myTable">
                <tr style="background-color:darkgray;font-size:1.2rem">
                    <th>STT</th>
                    <th>Ảnh</th>
                    <th>Tên hàng</th>
                    <th>Số lượng</th>
                    <th>Giá</th>
                    <th>Tác vụ</th>
                </tr>
                <asp:ListView ID="CartItems" runat="server" OnItemDataBound="CartItems_ItemDataBound">
                    <ItemTemplate>
                        <tr style="font-size:larger">
                            <td runat="server" id="rowNumberLabel"><%# Container.DataItemIndex + 1 %></td>
                            <td><img src="<%# Eval("Anh") %>" title="<%#Eval("Ten") %>" alt="<%#Eval("Ten") %>" /></td>
                            <td><%# Eval("Ten") %></td>
                             <td><%# Eval("Sl") %></td>
                            <td><%# Eval("Gia") %></td>
                            <td><a href="../XoaGioHang/xoagiohang.aspx?id=<%# Eval("Id") %>"><button>Xóa</button></a></td>
                        </tr>
                    </ItemTemplate>
                </asp:ListView>
             
            </table>
            <hr />
            <table style="border:none;margin-left:880px">
                <tr style="font-size:1.2rem">
                    <th style="border:none">TỔNG SL:</th>
                    <th runat="server" style="border:none" id="tongsoluong">0</th>
                </tr>
                 <tr style="font-size:1.2rem">
                    <th style="border:none">TỔNG TIỀN:</th>
                    <th runat="server" style="border:none" id="tongtien" >0</th>
                </tr>
            </table>
            <hr style="margin-left:890px;margin-top:0;margin-top:10px;border:1px solid #a17129;margin-bottom:0" width="334px"/>
            <input type="button" value="THANH TOÁN" onclick="thanhtoan()"/>
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
                <p><b>Địa chỉ:</b> 96 P. Định Công, Phương Liệt,<br />
                    Thanh Xuân, Hà Nội</p>
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
        function thanhtoan() {
            const d = new Date().toLocaleString();
            var table = document.getElementById("myTable");
            var rows = table.getElementsByTagName("tr");
            var sl = document.getElementById("tongsoluong").innerHTML;
            if (sl < 5) {
                alert("Phải mua nhiều hơn 5 sản phẩm mới có thể thanh toán!");
                window.location.href = '../DMTrangSuc/dmtrangsuc.aspx';
            } else {
                alert("Đã thanh toán " + (rows.length-1) + " mặt hàng vào lúc " + d + "!");
                window.location.href = '../GioiThieu/gioithieu.aspx';
                document.cookie.split(";").forEach(function (c) { document.cookie = c.replace(/^ +/, "").replace(/=.*/, "=;expires=" + new Date().toUTCString() + ";path=/"); });
            }
        }
    </script>
</body>
</html>
