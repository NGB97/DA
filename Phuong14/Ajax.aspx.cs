using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System.Data;

public partial class Ajax : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string action = Request.QueryString["Action"].Trim();
            switch (action)
            {
                case "PrinfKhaiSinh":
                    PrinfKhaiSinh(); break;

            }
        }
        catch { }
    }
    private void PrinfKhaiSinh()
    {
        string sqlKhaiSinh = @"select *, 'nd'=(select max(id) from tb_DetailB) from  tb_DetailB";
        DataTable data = Connect.GetTable(sqlKhaiSinh);
        if (data.Rows.Count > 0)
        {
            string html = @"
            <div style='width:100%'>
            <div style='font-family: 'Times New Roman', Times, serif; font-size: 13px; text-align: left; width: 800px; margin-top: -10px; margin-left: -20px;'>
            <div style='margin-top: 0; margin-left: 20px'>";
            html += @"
            <div style='page-break-before:always'>
            <form>
              <h3> CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM </h3>
               <h3> Độc lập - Tự do - Hạnh phúc <h3>
                 <hr  width='25%' size='2px' color='black' align='center' />
               <h3>TỜ KHAI ĐĂNG KÝ KHAI SINH</h3>
               <p class='kg'>Kính gửi: UBND phường 14, quận Gò Vấp, thành phố Hồ Chí Minh</p>
               <p class='tieude'>THÔNG TIN NGƯỜI YÊU CẦU:
               <p>Họ, chữ đệm, tên người yêu cầu:
                  <span class='ten'>" + data.Rows[0]["NYC_HoTen"].ToString() + @"<span>
               </p>
               <p>CMND/CCCD số:
                  <span class='gt'>" + data.Rows[0]["NYC_SoGT"].ToString() + @"</span>
               </p>
            <p>Ngày cấp:
              <span class='gt'>" + DateTime.Parse(data.Rows[0]["NYC_NgayCap"].ToString()).ToString("dd/MM/yyyy") + @"</span>
              <span class='ttgiua'>Nơi cấp:
                <span class='gt'>" + data.Rows[0]["NYC_NoiCap"].ToString() + @"</span>
              </span>
           </p>
           <p>Nơi cư trú:
             <span class='gt'>" + data.Rows[0]["NYC_SoNhaDuong"].ToString() + @", " + data.Rows[0]["NYC_PhuongXa"].ToString() + @", " + data.Rows[0]["NYC_QuanHuyen"].ToString() + @", " + data.Rows[0]["NYC_TinhTP"].ToString() + @"</span>
           </p>
            <p>Quan hệ với trẻ được làm khai sinh:
             <span class='gt'>" + data.Rows[0]["NYC_QuanHe"].ToString() + @"</span>
           </p>
           <p><b>Đề nghị cơ quan đăng ký khai sinh cho người dưới đây:</b></p>
           <p>Họ, chữ đệm, tên:
              <span class='ten'>" + data.Rows[0]["TTT_HoTen"].ToString() + @"<span>
           </p>
           <p>Ngày,tháng,năm sinh:
              <span class='gt'>" + DateTime.Parse(data.Rows[0]["TTT_NgaySinh"].ToString()).ToString("dd/MM/yyyy") + @"</span>
           </p>
           <p>Nơi sinh:
              <span class='gt'> " + data.Rows[0]["TTT_PhuongXa"].ToString() + @", " + data.Rows[0]["TTT_QuanHuyen"].ToString() + @", " + data.Rows[0]["TTT_TinhTP"].ToString() + @"</span>
           </p>
        <p>Giới tính:
              <span class='gt'>" + data.Rows[0]["TTT_GioiTinh"].ToString() + @" </span>
              <span class='ttgiua'>Dân tộc:
                  <span class='gt'>" + data.Rows[0]["TTT_DanToc"].ToString() + @"</span>
              <span class='ttphai'>Quốc tịch:
                  <span class='gt'>" + data.Rows[0]["TTT_QuocGia"].ToString() + @"</span>
              </span>
              </span>
           </p>
           <p>Quê quán:
              <span class='gt'>" + data.Rows[0]["TTT_SoNhaDuong_QQ"].ToString() + @"," + data.Rows[0]["TTT_PhuongXa_QQ"].ToString() + @"," + data.Rows[0]["TTT_QuanHuyen_QQ"].ToString() + @"," + data.Rows[0]["TTT_TinhTP_QQ"].ToString() + @"</span>
           </p>
           <p class='tieude'>THÔNG TIN MẸ: </p>
           <p>Họ, chữ đệm, tên:
              <span class='ten'>" + data.Rows[0]["TTM_HoTen"].ToString() + @"<span>
           </p>
          <p>Dân tộc:
              <span class='gt'>" + data.Rows[0]["TTM_DanToc"].ToString() + @"</span>
              <span class='ttgiua'>Quốc tịch:
                  <span class='gt'>" + data.Rows[0]["TTM_QuocTich"].ToString() + @"</span>
              </span>
           </p>
           <p>Quê quán:
              <span class='gt'>" + data.Rows[0]["TTM_SoNhaDuong"].ToString() + @"," + data.Rows[0]["TTM_PhuongXa"].ToString() + @"," + data.Rows[0]["TTM_QuanHuyen"].ToString() + @"," + data.Rows[0]["TTM_TinhTP"].ToString() + @"</span>
           </p>
           <p class='tieude'>THÔNG TIN CHA:
           <p>Họ, chữ đệm, tên:
              <span class='ten'>" + data.Rows[0]["TTC_HoTen"].ToString() + @"<span>
           </p>
          <p>Dân tộc:
              <span class='gt'>" + data.Rows[0]["TTC_DanToc"].ToString() + @"</span>
              <span class='ttgiua'>Quốc tịch:
                  <span class='gt'>" + data.Rows[0]["TTC_QuocTich"].ToString() + @"</span>
              </span>
           </p>
           <p>Quê quán:
              <span class='gt'>" + data.Rows[0]["TTC_SoNhaDuong"].ToString() + @"," + data.Rows[0]["TTC_PhuongXa"].ToString() + @"," + data.Rows[0]["TTC_QuanHuyen"].ToString() + @"," + data.Rows[0]["TTC_TinhTP"].ToString() + @"</span>
           </p>
           <p class='camdoan'>Tôi cam đoan nội dung đề nghị đăng ký khai sinh trên đây là đúng sự thật, được sự thỏa thuận nhất trí của các bên liên quan theo quy định pháp luật.</p>
           <p>Tôi chịu hoàn toàn trách nhiệm trước pháp luật về nội dung cam đoan của mình.</p>
           <p class='canphai'>Phường 14,ngày&nbsp;
             <span >23&nbsp;
               <span>tháng&nbsp;
                 <span>6&nbsp;
                   <span>năm&nbsp;
                     <span>2019
                     </span>
                   </span>
                 </span>
               </span>
             </span>
           </p>
        <p class='kyten'><b> Người yêu cầu </b></p><br><br><br>
                <p class='Tenkyten'><b> Nguyễn Gia Bảo </b></p>
        </form></div>";

            html += @"
            <div style='page-break-before:always'>&nbsp;
            <form>
              <h3> CỘNG HÒA XÃ HỘI CHỦ NGHĨA VIỆT NAM </h2>
               <h3> Độc lập - Tự do - Hạnh phúc <h2>
                 <hr  width='25%' size='2px' color='black' align='center' />
               <h2>TỜ KHAI ĐĂNG KÝ KHAI SINH</H2>
               <p class='kg'>Kính gửi: UBND phường 14, quận Gò Vấp, thành phố Hồ Chí Minh</p>
               <p class='tieude'>THÔNG TIN NGƯỜI YÊU CẦU:
               <p>Họ, chữ đệm, tên người yêu cầu:
                  <span class='ten'>" + data.Rows[0]["NYC_HoTen"].ToString() + @"<span>
               </p>
             </div>";
        html += @" </div></div></div>";


            Response.Write(html);
        }
    }
}