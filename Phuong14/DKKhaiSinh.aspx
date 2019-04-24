<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="DKKhaiSinh.aspx.cs" Inherits="DKKhaiSinh" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<script>
          function PrinfKhaiSinh1() {
          //  alert(idDonHang);
            var xmlhttp;
            if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            }
            else {// code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    if (xmlhttp.responseText != "") {
                        var print = window.open('', '_blank');

                        var shtml = "<html>";
                        shtml += "<head>";
                        shtml += "<link rel = 'stylesheet' type = 'text/css' media = 'print' href = 'Content/css/dk_khaisinh.css'>";
                        shtml += "</head>";
                        shtml += "<body onload=\"window.print(); window.close();\">";
                        shtml += xmlhttp.responseText;
                        shtml += "</body>";
                        shtml += "</html>";

                        print.document.write(shtml);
                        print.document.close();
                    }
                }
            }
            xmlhttp.open("GET", "../Ajax.aspx?Action=PrinfKhaiSinh", true);
            xmlhttp.send();
        }
 </script>
    <div class="check_qh margin_top" id="abc" runat="server">
        <h3 class="dk">đăng ký khai sinh trực tuyến</h3>
    </div>

    <div class="container position top_ft">
        <div class="col-md-offset-1  col-md-10 bg_form">
            <div class=" bd_bottom">
                <h5>thông tin người yêu cầu</h5>
            </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 ">
                            <label for="">Họ và tên <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9 ">
                            <input class="form-control  left" data-val="true" data-val-required="" id="txtNYC_HoTen" runat='server' name="Content.ContentName" value="" placeholder="" type="text" required pattent  />
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Số điện thoại <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control " data-val="true" data-val-required="" id="txtNYC_SDT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />

                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Email <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_Email" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div>
                <br>
                <div class="">
                    <h6>Giấy tờ</h6>
                </div>
                <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Loại giấy tờ<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_LoaiGT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Số giấy tờ <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_SoGT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Ngày cấp <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_NgayCap" runat="server" name="Content.ContentName" value="" placeholder="" type="date" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Nơi cấp <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_NoiCap" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />                            
                        </div>
                    </div>
                </div> <br>
                <div class="">
                    <h6>Nơi cư trú</h6>
                </div>
                <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quốc gia<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_QuocGia" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />              
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Tỉnh/Thành phố <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_TinhTP" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quận/huyện<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_QuanHuyen" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Phường/Xã<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_PhuongXa" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>

                </div> <br>
                <div class="row">
                    <div class=" col-lg-12 col-md-12 col-sm-12">
                        <div class="row col-lg-2 col-md-2 col-sm-2 col-xs-3">
                            <label for="">Số nhà/Đường <span>*</span></label>
                        </div>
                        <div class="row col-lg-10 col-md-10 col-sm-10 col-xs-9">
                            <input class="form-control left_1" placeholder="Khu phố/Thôn/Tổ/Xóm/Tòa nhà, số nhà, đường" data-val="true" data-val-required="" id="txtNYC_SoNhaDuong" runat="server" name="Content.ContentName" value="" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Mối quan hệ<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtNYC_QuanHe" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div>
                <div class=" bd_bottom">
                    <h5>thông tin trẻ</h5>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Họ và tên <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_HoTen" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>    
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Quan hệ với chủ hộ<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_QuanHe" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Giới tính <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_GioiTinh" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Ngày sinh <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_NgaySinh" runat="server" name="Content.ContentName" value="" placeholder="" type="date" required autofocus />

                        </div>
                    </div>
                </div> <br>
                
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quốc Gia<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_QuocGia_NoiSinh" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Dân tộc<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_DanToc" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>

                </div>
                <br>
                <div class="">
                    <h6>Thông tin y tế</h6>
                </div>
                <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Tên cơ sở y tế <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_TenCSYT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                     <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Con Thứ<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_ConThu" runat="server" name="Content.ContentName" value="" placeholder="Là con thứ mấy của gia đình" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                 <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Kiểu sinh<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_KieuSinh" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Cân nặng<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_CanNang" runat="server" name="Content.ContentName" value="" placeholder="Đơn vị gram" type="text" required autofocus />
                        </div>
                    </div>

                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quốc gia<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_QuocGia" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Tỉnh/Thành phố<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_TinhTP" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>

                </div> <br>

                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quận/huyện<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_QuanHuyen" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Phường/Xã<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_PhuongXa" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div>
                <br>
                <div class="">
                    <h6>Quê quán</h6>
                </div>
                <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quốc gia<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_QuocGia_QQ" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Tỉnh/Thành phố <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_TinhTP_QQ" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quận/huyện<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_QuanHuyen_QQ" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Phường/Xã<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_PhuongXa_QQ" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>

                </div> <br>
                <div class="row">
                    <div class=" col-lg-12 col-md-12 col-sm-12">
                        <div class="row col-lg-2 col-md-2 col-sm-2 col-xs-3">
                            <label for="">Số nhà/Đường <span>*</span></label>

                        </div>
                        <div class="row col-lg-10 col-md-10 col-sm-10 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_SoNhaDuong_QQ" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />

                        </div>

                    </div>

                </div> <br>
               
                <div class="">
                    <h6>Thông tin BHYT</h6>
                </div>
                <br>
                 <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Nơi khám chữa bệnh ban đầu<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTT_KCB" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>

                <div class=" bd_bottom">
                    <h5>thông tin mẹ</h5>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Họ và tên <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTM_HoTen" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for ="">Năm Sinh</label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTM_NamSinh" runat="server" name="Content.ContentName" value="" placeholder="" type="date" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Loại giấy tờ<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                           <input class="form-control" data-val="true" data-val-required="" id="txtTTM_LoaiGT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
               
                </div> <br>
                <div class="row">
                   <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Số giấy tờ <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTM_SoGT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />

                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Ngày cấp<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTM_NgayCap" runat="server" name="Content.ContentName" value="" placeholder="" type="date" required autofocus />
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quốc tịch<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTM_QuocTich" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Dân tộc<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTM_DanToc" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div>
                <br>
                <div class="row col-lg-12 col-md-12 col-sm-12 col-xs-6">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <h6>Nơi cư trú</h6>
                    </div>
                    <div class=" col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="form-check">
                            <div class="col-md-4 col-sm-4 col-xs-3">
                                <label class="form-check-label" for="">Đã chết</label>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="checkbox" class="form-check-input" id="checkDisable">
                            </div>

                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quốc gia<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                             <input class="form-control" data-val="true" data-val-required="" id="txtTTM_QuocGia" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Tỉnh/Thành phố <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                             <input class="form-control" data-val="true" data-val-required="" id="txtTTM_TinhTP" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quận/huyện<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                             <input class="form-control" data-val="true" data-val-required="" id="txtTTM_QuanHuyen" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Phường/Xã<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                             <input class="form-control" data-val="true" data-val-required="" id="txtTTM_PhuongXa" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>

                </div> <br>
                <div class="row">
                    <div class=" col-lg-12 col-md-12 col-sm-12">
                        <div class="row col-lg-2 col-md-2 col-sm-2 col-xs-3">
                            <label for="">Số nhà/Đường <span>*</span></label>

                        </div>
                        <div class="row col-lg-10 col-md-10 col-sm-10 col-xs-9">
                             <input class="form-control left_1" data-val="true" data-val-required="" id="txtTTM_SoNhaDuong" runat="server" name="Content.ContentName" value="" placeholder="Khu phố/Thôn/Tổ/Xóm/Tòa nhà, số nhà, đường" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class=" bd_bottom">
                    <h5>thông tin cha</h5>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Họ và tên <span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                             <input class="form-control" data-val="true" data-val-required="" id="txtTTC_HoTen" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Năm Sinh<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_NamSinh" runat="server" name="Content.ContentName" value="" placeholder="" type="date" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Loại giấy tờ<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_LoaiGT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
            
                </div> <br>
                 <div class="row">
                    
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Số giấy tờ <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_SoGT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />

                        </div>
                    </div>
                     <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Ngày Cấp<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_NgayCap" runat="server" name="Content.ContentName" value="" placeholder="" type="date" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quốc tịch<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_QuocTich" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Dân tộc<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_DanToc" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>

                </div>
                <br>
                <div class="row col-lg-12 col-md-12 col-sm-12 col-xs-6">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <h6>Nơi cư trú</h6>
                    </div>
                    <div class=" col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="form-check">
                            <div class="col-md-4 col-sm-4 col-xs-3">
                                <label class="form-check-label" for="exampleCheck1">Đã chết</label>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3">
                                <input type="checkbox" class="form-check-input" id="checkDisable1">
                            </div>

                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quốc gia<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_QuocGia" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Tỉnh/Thành phố <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_TinhTP" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quận/huyện<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_QuanHuyen" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Phường/Xã<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_PhuongXa" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>

                </div> <br>
                <div class="row">
                    <div class=" col-lg-12 col-md-12 col-sm-12">
                        <div class="row col-lg-2 col-md-2 col-sm-2 col-xs-3">
                            <label for="">Số nhà/Đường <span>*</span></label>

                        </div>
                        <div class="row col-lg-10 col-md-10 col-sm-10 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtTTC_SoNhaDuong" runat="server" name="Content.ContentName" value="" placeholder="Khu phố/Thôn/Tổ/Xóm/Tòa nhà, số nhà, đường" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class=" bd_bottom">
                    <h5>thông tin hộ khẩu</h5>
                </div> <br>

                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 ">
                            <label class="" for="">Tên chủ hộ<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtCH_HoTen" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 ">
                            <label class="" for="">Năm sinh<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtCH_NamSinh" runat="server" name="Content.ContentName" value="" placeholder="" type="date" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Loại giấy tờ</label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                             <input class="form-control" data-val="true" data-val-required="" id="txtCH_LoaiGT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Số giấy tờ </label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtCH_SoGT" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />

                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Số sổ hộ khẩu <span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtCH_SHK" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />

                        </div>
                    </div>
                   
                </div> <br>
               
                <div class="">
                    <h6>Nơi ở hiện tại</h6>
                </div>
                <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quốc gia<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtCH_QuocGia" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Tỉnh/Thành phố <span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtCH_TinhTP" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                </div> <br>
                <div class="row">
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3">
                            <label for="">Quận/huyện<span>*</span></label>
                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtCH_QuanHuyen" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>
                    <div class="row col-lg-6 col-md-6 col-sm-6 col-xs-6">
                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-3 mg_left">
                            <label for="">Phường/Xã<span>*</span></label>

                        </div>
                        <div class="row col-lg-8 col-md-8 col-sm-8 col-xs-9">
                            <input class="form-control" data-val="true" data-val-required="" id="txtCH_PhuongXa" runat="server" name="Content.ContentName" value="" placeholder="" type="text" required autofocus />
                        </div>
                    </div>

                </div> <br>
           
                <div class="row">
                    <div class=" col-lg-12 col-md-12 col-sm-12">
                        <div class="row col-lg-2 col-md-2 col-sm-2 col-xs-3">
                            <label for="">Số nhà/Đường </label>

                        </div>
                        <div class="row col-lg-10 col-md-10 col-sm-10 col-xs-9">
                         
                            <input class="form-control" data-val="true" data-val-required="" id="txtCH_SoNhaDuong" runat="server" name="Content.ContentName" value="" placeholder="Khu phố/Thôn/Tổ/Xóm/Tòa nhà, số nhà, đường" type="text" required autofocus />
                            <i style="color: red;">Chỉ ghi số nhà, đường (nếu không có thì bỏ trống)</i>

                        </div>

                    </div>

                </div> <br>

        </div>
        <div
            class="col-md-offset-1 col-lg-offset-1 col-sm-offset-1 col-xs-offset-1 col-md-10 col-lg-10 col-sm-10 col-xs-9">
            <div class="form-check">
                <div class="col-md-1 col-lg-1 col-sm-1 col-xs-1">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1">
                </div>
                <div class="col-md-11 col-lg-11 col-sm-11 col-xs-11">
                    <label class="form-check-label label" for="exampleCheck1">Tôi xin chịu trách nhiệm trước pháp
                        luật
                        về lời
                        khai trên.</label>
                </div>
            </div>
        </div>
        <div
            class="col-lg-offset-9 col-lg-3 col-md-offset-9 col-md-3 col-sm-offset-9 col-sm-3 col-xs-offset-9 col-xs-3">
            <asp:LinkButton id="btLuu" type="button" class="btn" OnClick="btLuu_Click" runat="server" >Gửi thông tin</asp:LinkButton>
            <button href="#" type="button" class="btn" OnClick="PrinfKhaiSinh1()" runat="server" >In</button>
        </div>
    </div>
    <br>

</asp:Content>
