using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DKKhaiSinh : System.Web.UI.Page
{
    string sID = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btLuu_Click(object sender, EventArgs e)
    {
        string NYC_HoTen = "";
        string NYC_SDT = "";
        string NYC_Email = "";
        string NYC_LoaiGT = "";
        string NYC_SoGT = "";
        string NYC_NgayCap = "";
        string NYC_NoiCap = "";
        string NYC_QuocGia = "";
        string NYC_TinhTP = "";
        string NYC_QuanHuyen = "";
        string NYC_PhuongXa = "";
        string NYC_SoNhaDuong = "";
        string NYC_QuanHe = "";

        string TTT_HoTen = "";
        string TTT_QuanHe = "";
        string TTT_GioiTinh = "";
        string TTT_NgaySinh = "";
        string TTT_QuocGia_NoiSinh = "";
        string TTT_DanToc = "";
        string TTT_TenCSYT = "";
        string TTT_ConThu = "";
        string TTT_KieuSinh = "";
        string TTT_CanNang = "";
        string TTT_QuocGia = "";
        string TTT_TinhTP = "";
        string TTT_QuanHuyen = "";
        string TTT_PhuongXa = "";
        string TTT_QuocGia_QQ = "";
        string TTT_TinhTP_QQ = "";
        string TTT_QuanHuyen_QQ = "";
        string TTT_PhuongXa_QQ = "";
        string TTT_SoNhaDuong_QQ = "";
        string TTT_KCB = "";

        string TTM_HoTen = "";
        string TTM_NamSinh = "";
        string TTM_LoaiGT = "";
        string TTM_SoGT = "";
        string TTM_NgayCap = "";
        string TTM_QuocTich = "";
        string TTM_DanToc = "";
        string TTM_QuocGia = "";
        string TTM_TinhTP = "";
        string TTM_QuanHuyen = "";
        string TTM_PhuongXa = "";
        string TTM_SoNhaDuong = "";

        string TTC_HoTen = "";
        string TTC_NamSinh = "";
        string TTC_LoaiGT = "";
        string TTC_SoGT = "";
        string TTC_NgayCap = "";
        string TTC_QuocTich = "";
        string TTC_DanToc = "";
        string TTC_QuocGia = "";
        string TTC_TinhTP = "";
        string TTC_QuanHuyen = "";
        string TTC_PhuongXa = "";
        string TTC_SoNhaDuong = "";

        string CH_HoTen = "";
        string CH_NamSinh = "";
        string CH_LoaiGT = "";
        string CH_SoGT = "";
        string CH_SHK = "";
        string CH_QuocGia = "";
        string CH_TinhTP = "";
        string CH_QuanHuyen = "";
        string CH_PhuongXa = "";
        string CH_SoNhaDuong = "";

        if (txtNYC_HoTen.Value.Trim() != "")
        {
            NYC_HoTen = txtNYC_HoTen.Value.Trim();
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập Họ tên!')</script>");
            return;
        }

        if (txtNYC_SDT.Value.Trim() != "")
        {

            NYC_SDT = txtNYC_SDT.Value.Trim();
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập Số Điện Thoại!')</script>");
            return;
        }

        if (txtNYC_Email.Value.Trim() != "")
        {
            NYC_Email = txtNYC_Email.Value.Trim();
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập Nhập Email!')</script>");
            return;
        }

        if (txtNYC_LoaiGT.Value.Trim() != "")
        {
            NYC_LoaiGT = txtNYC_LoaiGT.Value.Trim();
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập Loại giấy tờ!')</script>");
            return;
        }

        if (txtNYC_SoGT.Value.Trim() != "")
        {
            NYC_SoGT = txtNYC_SoGT.Value.Trim();
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập Số giấy tờ!')</script>");
            return;
        }

        if (txtNYC_SoGT.Value.Trim() != "")
        {
            NYC_SoGT = txtNYC_SoGT.Value.Trim();
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập Số giấy tờ!')</script>");
            return;
        }

        if (txtNYC_NgayCap.Value.Trim() != "")
        {
            
            NYC_NgayCap =DateTime.Parse(txtNYC_NgayCap.Value.Trim().ToString()).ToString("MM/dd/yyyy");
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập Ngày Cấp!')</script>");
            return;
        }

        if (txtNYC_NoiCap.Value.Trim() != "")
        {
            NYC_NoiCap = txtNYC_NoiCap.Value.Trim();
        }
        else
        {
            Response.Write("<script>alert('Bạn chưa nhập Nơi Cấp!')</script>");
            return;
        }

        NYC_QuocGia = txtNYC_QuocGia.Value.Trim();
        NYC_TinhTP = txtNYC_TinhTP.Value.Trim();
        NYC_QuanHuyen = txtNYC_QuanHuyen.Value.Trim();
        NYC_PhuongXa = txtNYC_PhuongXa.Value.Trim();
        NYC_SoNhaDuong = txtNYC_SoNhaDuong.Value.Trim();
        NYC_QuanHe = txtNYC_QuanHe.Value.Trim();

        TTT_HoTen = txtTTT_HoTen.Value.Trim();
        TTT_QuanHe = txtTTT_QuanHe.Value.Trim();
        TTT_GioiTinh = txtTTT_GioiTinh.Value.Trim();
        
        TTT_NgaySinh = DateTime.Parse(txtTTT_NgaySinh.Value.Trim().ToString()).ToString("MM/dd/yyyy");
        TTT_QuocGia_NoiSinh = txtTTT_QuocGia_NoiSinh.Value.Trim();
        TTT_DanToc = txtTTT_DanToc.Value.Trim();
        TTT_TenCSYT = txtTTT_TenCSYT.Value.Trim();
        TTT_ConThu = txtTTT_ConThu.Value.Trim();
        TTT_KieuSinh = txtTTT_KieuSinh.Value.Trim();
        TTT_CanNang = txtTTT_CanNang.Value.Trim();
        TTT_QuocGia = txtTTT_QuocGia.Value.Trim();
        TTT_TinhTP = txtTTT_TinhTP.Value.Trim();
        TTT_QuanHuyen = txtTTT_QuanHuyen.Value.Trim();
        TTT_PhuongXa = txtTTT_PhuongXa.Value.Trim();
        TTT_QuocGia_QQ = txtTTT_QuocGia_QQ.Value.Trim();
        TTT_TinhTP_QQ = txtTTT_TinhTP_QQ.Value.Trim();
        TTT_QuanHuyen_QQ = txtTTT_QuanHuyen_QQ.Value.Trim();
        TTT_PhuongXa_QQ = txtTTT_PhuongXa_QQ.Value.Trim();
        TTT_SoNhaDuong_QQ = txtTTT_SoNhaDuong_QQ.Value.Trim();
        TTT_KCB = txtTTT_KCB.Value.Trim();




        TTM_HoTen = txtTTM_HoTen.Value.Trim();
        TTM_NamSinh = DateTime.Parse(txtTTM_NamSinh.Value.Trim().ToString()).ToString("MM/dd/yyyy");
        TTM_LoaiGT = txtTTM_LoaiGT.Value.Trim();
        TTM_SoGT = txtTTM_SoGT.Value.Trim();
        TTM_NgayCap = DateTime.Parse(txtTTM_NgayCap.Value.Trim().ToString()).ToString("MM/dd/yyyy");
        TTM_QuocTich = txtTTM_QuocTich.Value.Trim();
        TTM_DanToc = txtTTM_DanToc.Value.Trim();
        TTM_QuocGia = txtTTM_QuocGia.Value.Trim();
        TTM_TinhTP = txtTTM_TinhTP.Value.Trim();
        TTM_QuanHuyen = txtTTM_QuanHuyen.Value.Trim();
        TTM_PhuongXa = txtTTM_PhuongXa.Value.Trim();
        TTM_SoNhaDuong = txtTTM_SoNhaDuong.Value.Trim();


        TTC_HoTen = txtTTC_HoTen.Value.Trim(); 
        TTC_NamSinh = DateTime.Parse(txtTTC_NamSinh.Value.Trim().ToString()).ToString("MM/dd/yyyy");
        TTC_LoaiGT = txtTTC_LoaiGT.Value.Trim();
        TTC_SoGT = txtTTC_SoGT.Value.Trim();
        TTC_NgayCap = DateTime.Parse(txtTTC_NgayCap.Value.Trim().ToString()).ToString("MM/dd/yyyy");

        TTC_QuocTich = txtTTC_QuocTich.Value.Trim();
        TTC_DanToc = txtTTC_DanToc.Value.Trim();
        TTC_QuocGia = txtTTC_QuocGia.Value.Trim();
        TTC_TinhTP = txtTTC_TinhTP.Value.Trim();
        TTC_QuanHuyen = txtTTC_QuanHuyen.Value.Trim();
        TTC_PhuongXa = txtTTC_PhuongXa.Value.Trim();
        TTC_SoNhaDuong = txtTTC_SoNhaDuong.Value.Trim();
        CH_HoTen = txtCH_HoTen.Value.Trim();
        CH_NamSinh = DateTime.Parse(txtCH_NamSinh.Value.Trim().ToString()).ToString("MM/dd/yyyy");

        CH_LoaiGT = txtCH_LoaiGT.Value.Trim();
        CH_SoGT = txtCH_SoGT.Value.Trim();
        CH_SHK = txtCH_SHK.Value.Trim();
        CH_QuocGia = txtCH_QuocGia.Value.Trim();
        CH_TinhTP = txtCH_TinhTP.Value.Trim();
        CH_QuanHuyen = txtCH_QuanHuyen.Value.Trim();
        CH_PhuongXa = txtCH_PhuongXa.Value.Trim();
        CH_SoNhaDuong = txtCH_SoNhaDuong.Value.Trim();
        
        if (sID == "")
        {
            string sqlInsert = "insert into tb_DetailB(NYC_HoTen,NYC_SDT,NYC_Email,NYC_LoaiGT,NYC_SoGT,NYC_NgayCap,NYC_NoiCap,NYC_QuocGia,NYC_TinhTP,NYC_QuanHuyen,NYC_PhuongXa,NYC_SoNhaDuong,NYC_QuanHe,TTT_HoTen,TTT_QuanHe,TTT_GioiTinh,TTT_NgaySinh,TTT_QuocGia_NoiSinh,TTT_DanToc,TTT_TenCSYT,TTT_ConThu,TTT_KieuSinh,TTT_CanNang,TTT_QuocGia,TTT_TinhTP,TTT_QuanHuyen,TTT_PhuongXa,TTT_QuocGia_QQ,TTT_TinhTP_QQ,TTT_QuanHuyen_QQ,TTT_PhuongXa_QQ,TTT_SoNhaDuong_QQ,TTT_KCB,TTM_HoTen,TTM_NamSinh,TTM_LoaiGT,TTM_SoGT,TTM_NgayCap,TTM_QuocTich,TTM_DanToc,TTM_QuocGia,TTM_TinhTP,TTM_QuanHuyen,TTM_PhuongXa,TTM_SoNhaDuong,TTC_HoTen,TTC_NamSinh,TTC_LoaiGT,TTC_SoGT,TTC_NgayCap,TTC_QuocTich,TTC_DanToc,TTC_QuocGia,TTC_TinhTP,TTC_QuanHuyen,TTC_PhuongXa,TTC_SoNhaDuong,CH_HoTen,CH_NamSinh,CH_LoaiGT,CH_SoGT,CH_SHK,CH_QuocGia,CH_TinhTP,CH_QuanHuyen,CH_PhuongXa,CH_SoNhaDuong)";
            sqlInsert += " values(N'" + NYC_HoTen + "','" + NYC_SDT + "','" + NYC_Email + "',N'" + NYC_LoaiGT + "','" + NYC_SoGT + "','" + NYC_NgayCap + "',N'" + NYC_NoiCap + "',N'" + NYC_QuocGia + "',N'" + NYC_TinhTP + "',N'" + NYC_QuanHuyen + "',N'" + NYC_PhuongXa + "',N'" + NYC_SoNhaDuong + "',N'" + NYC_QuanHe + "',N'" + TTT_HoTen + "',N'" + TTT_QuanHe + "',N'" + TTT_GioiTinh + "','" + TTT_NgaySinh + "',N'" + TTT_QuocGia_NoiSinh + "',N'" + TTT_DanToc + "',N'" + TTT_TenCSYT + "','" + TTT_ConThu + "',N'" + TTT_KieuSinh + "',N'" + TTT_CanNang + "',N'" + TTT_QuocGia + "',N'" + TTT_TinhTP + "',N'" + TTT_QuanHuyen + "',N'" + TTT_PhuongXa + "',N'" + TTT_QuocGia_QQ + "',N'" + TTT_TinhTP_QQ + "',N'" + TTT_QuanHuyen_QQ + "',N'" + TTT_PhuongXa_QQ + "',N'" + TTT_SoNhaDuong_QQ + "',N'" + TTT_KCB + "',N'" + TTM_HoTen + "','" + TTM_NamSinh + "',N'" + TTM_LoaiGT + "','" + TTM_SoGT + "','" + TTM_NgayCap + "',N'" + TTM_QuocTich + "',N'" + TTM_DanToc + "',N'" + TTM_QuocGia + "',N'" + TTM_TinhTP + "',N'" + TTM_QuanHuyen + "',N'" + TTM_PhuongXa + "',N'" + TTM_SoNhaDuong + "',N'" + TTC_HoTen + "',N'" + TTC_NamSinh + "',N'" + TTC_LoaiGT + "','" + TTC_SoGT + "','" + TTC_NgayCap + "',N'" + TTC_QuocTich + "',N'" + TTC_DanToc + "',N'" + TTC_QuocGia + "',N'" + TTC_TinhTP + "',N'" + TTC_QuanHuyen + "',N'" + TTC_PhuongXa + "',N'" + TTC_SoNhaDuong + "',N'" + CH_HoTen + "','" + CH_NamSinh + "',N'" + CH_LoaiGT + "','" + CH_SoGT + "',N'" + CH_SHK + "',N'" + CH_QuocGia + "',N'" + CH_TinhTP + "',N'" + CH_QuanHuyen + "',N'" + CH_PhuongXa + "',N'" + CH_SoNhaDuong + "')";
            bool ktInsert = Connect.Exec(sqlInsert);
            if (ktInsert)
            {
                Response.Redirect("DKKhaiSinh.aspx");
            }
            else
            {
                Response.Write("<script>alert('Lỗi!')</script>");
            }

        }

    }

}