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

namespace GocNetwork
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        TaiKhoanBLL TKBLL = new TaiKhoanBLL();
        //private object btnDangXuat_Click;

        protected void BtnDangNhap_Click(object sender, EventArgs e)
        {

            var dt = TKBLL.LayNguoiDung(txtUser.Text, txtPass.Text);

            if (dt != null)
            {
                if (ckbDuyTriDangNhap.Checked)
                {
                    HttpCookie ckname = new HttpCookie("name");
                    ckname.Value = txtUser.Text;
                    ckname.Expires = DateTime.Now.AddDays(15);
                    Response.Cookies.Add(ckname);
                    HttpCookie ckpass = new HttpCookie("pass");
                    ckpass.Value = txtPass.Text;
                    ckpass.Expires = DateTime.Now.AddDays(15);
                    Response.Cookies.Add(ckpass);
                }
                Session["IDNguoiDung"] = (int)dt["IDTaiKhoan"];
                Session["Manguoidung"] = (int)dt["MaNguoiDung"];
                Session["name"] = txtUser.Text;
                Session["pass"] = txtPass.Text;

                string refURL = Request.QueryString["ref"];

                Response.Redirect(string.IsNullOrEmpty(refURL) ? "Default.aspx" : HttpUtility.UrlDecode(refURL));
            }
            else Response.Write("<script>alert('Username hoặc Password chưa đúng')</script>");
        }

        protected void BtnDangXuat_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect(Request.Path);
        }
    }
}