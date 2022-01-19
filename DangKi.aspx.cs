using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GocNetwork.Business.Entities;
using GocNetwork.Business.Component;
using System.Data;
using System.Web.Security;
namespace GocNetwork.Presentation
{
    public partial class DangKi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        TaiKhoanBLL TKBLL = new TaiKhoanBLL();
        NguoiDungBLL NDBLL = new NguoiDungBLL();
        private int TaoKeyTuDong()
        {
            int MaNguoiDung;
            string hour = DateTime.Now.Hour.ToString();
            string minute = DateTime.Now.Minute.ToString();
            string second = DateTime.Now.Second.ToString();
            MaNguoiDung = Convert.ToInt32(hour + minute + second);
            return MaNguoiDung;
        }

        protected void btndangki_Click(object sender, EventArgs e)
        {
            captcha1.ValidateCaptcha(txtCaptcha.Text.Trim());
            if (TKBLL.KiemTra(txtTenTaiKhoan.Text, txtMatKhau.Text) == false && String.Equals(txtMatKhau.Text, txtMatKhauLai.Text) && !String.IsNullOrEmpty(txtHoTen.Text) && DateTime.Parse(dpkngaysinh.Text) < DateTime.Now && !String.IsNullOrEmpty(txtSDT.Text) && !String.IsNullOrEmpty(txtEmail.Text) && !String.IsNullOrEmpty(txtTenTaiKhoan.Text) && !String.IsNullOrEmpty(txtMatKhau.Text) && !String.IsNullOrEmpty(txtMatKhauLai.Text) && captcha1.UserValidated && !String.IsNullOrEmpty(txtCaptcha.Text))
            {
                try
                { 
                    int MaNguoiDung = TaoKeyTuDong();
                    NguoiDung nd;
                    string sex = "";
                    if (RbtNam.Checked)
                        sex = "Nam";
                    else
                        sex = "Nữ";
                    nd = new NguoiDung(MaNguoiDung, txtHoTen.Text, sex, DateTime.Parse(dpkngaysinh.Text), txtDiaChi.Text, txtSDT.Text, txtEmail.Text);
                    NDBLL.ThemNguoiDung(nd);

                    TaiKhoan tk = new TaiKhoan(txtTenTaiKhoan.Text, txtMatKhau.Text, MaNguoiDung, DateTime.Now, "user", "bình thường");
                    TKBLL.ThemTaiKhoan(tk);
                    Session["Manguoidung"] = MaNguoiDung.ToString();
                    Session["name"] = txtTenTaiKhoan.Text;
                    Session["pass"] = txtMatKhau.Text;
                    Response.Write("<script>alert('Đăng ký tài khoản thành công!')</script>");
                }
                catch
                {
                    GocNetwork.Alert.Show("LỖI! ĐĂNG KÝ KHÔNG THÀNH CÔNG.");
                }
            }
            else
            {
                GocNetwork.Alert.Show("ĐĂNG KÝ KHÔNG THÀNH CÔNG.");
            }
        }

        //Đổi captcha đăng ký
        protected void ResetCaptcha_Click(object sender, EventArgs e)
        {
            Response.Cookies["Captcha"]["value"] = (Guid.NewGuid().ToString()).Substring(0, 5);
        }
    }
}