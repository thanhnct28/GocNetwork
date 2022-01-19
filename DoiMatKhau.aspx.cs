using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GocNetwork.DataAccess.Component;

namespace GocNetwork
{
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {     
        }

        protected void ChangePwd_Click(object sender, EventArgs e)
        {
            DataAccessHelper help = new DataAccessHelper();
            DataTable dt = help.LoadDuLieu("select TenTaiKhoan, MatKhau from TaiKhoan where TenTaiKhoan = '" + NameAccount.Text + "' and MatKhau = '" + OldPassword.Text + "' ");

            if (String.IsNullOrEmpty(NameAccount.Text) || String.IsNullOrEmpty(OldPassword.Text) || String.IsNullOrEmpty(NewPassword.Text) || String.IsNullOrEmpty(ConPassword.Text))
            {
                Response.Write("<script>alert('Vui lòng nhập đầy đủ thông tin!')</script>");
                return;
            }
            else
            {
                if (dt.Rows.Count.ToString() == "1")
                {
                    if (NewPassword.Text == ConPassword.Text)
                    {
                        if (OldPassword.Text == ConPassword.Text)
                        {
                            lbl_dmk_msg.Text = "Mật khẩu cũ và mật khẩu mới phải khác nhau!";
                            lbl_dmk_msg.ForeColor = System.Drawing.Color.Red;
                        }
                        else
                        {
                            string sql = "Update TaiKhoan set MatKhau = '" + ConPassword.Text + "' where MatKhau = '" + OldPassword.Text + "' ";
                            help.ThucThi(sql);
                            lbl_dmk_msg.Text = "Đổi mật khẩu thành công!";
                            lbl_dmk_msg.ForeColor = System.Drawing.Color.Green;
                        }
                    }
                    else
                    {
                        lbl_dmk_msg.Text = "Mật khẩu mới và mật khẩu nhập lại phải giống nhau!";
                        lbl_dmk_msg.ForeColor = System.Drawing.Color.Red;
                    }
                }
                else
                {
                    lbl_dmk_msg.Text = "Kiểm tra lại tên tài khoản và mật khẩu cũ!";
                    lbl_dmk_msg.ForeColor = System.Drawing.Color.Red;
                }
            }
        }
    }
}