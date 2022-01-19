using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GocNetwork.DataAccess.Component;

namespace GocNetwork
{
    public partial class QuenMatKhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void ButPwd_Click(object sender, EventArgs e)
        {
            string email = TxtEmail.Text;
            DataAccessHelper help = new DataAccessHelper();
            DataTable dt = help.LoadDuLieu($"select NguoiDung.Email, TaiKhoan.MatKhau from NguoiDung, TaiKhoan where NguoiDung.MaNguoiDung = TaiKhoan.MaNguoiDung and Email= '{email}'");
            
            if(dt.Rows.Count>0)
            {
                string Email = dt.Rows[0].ItemArray[0].ToString();
                string password = dt.Rows[0].ItemArray[1].ToString();
                MailMessage mm = new MailMessage("gocnetworks@gmail.com", Email);
                mm.Subject = "Mật Khẩu Của Bạn!";
                mm.Body = string.Format("Xin chào! : <h1>{0}</h1> là Email của bạn <br/><br/> mật khẩu của bạn là <h1>{1}</h1>", Email, password);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential nc = new NetworkCredential();
                nc.UserName = "gocnetworks@gmail.com";
                nc.Password = "g0cnetwOrk41L";
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = nc;
                smtp.Port = 587;
                smtp.Send(mm);
                Labmsg.Text = "Mật khẩu của bạn đã được gửi đến " + TxtEmail.Text;
                Labmsg.ForeColor = Color.Green; 
            }    
            else
            {
                Labmsg.Text = TxtEmail.Text + " - Email này không tồn tại trong cơ sở dữ liệu của chúng tôi!";
                Labmsg.ForeColor = Color.Red;
            }
        }
    }
}