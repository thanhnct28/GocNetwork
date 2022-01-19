using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GocNetwork.Business.Component;
using GocNetwork.Business.Entities;
using GocNetwork.DataAccess.Component;
using CKFinder;

namespace GocNetwork.Presentation
{
    public partial class HoiDap : System.Web.UI.Page
    {
        TaiKhoanBLL TKBLL = new TaiKhoanBLL();
        ChuyenMucBLL CMBLL = new ChuyenMucBLL();
        CauHoiBLL CHBLL = new CauHoiBLL();

        private void load_page()
        {
            string cateid = Request.QueryString["cateid"].ToString();
            if (cateid != null && cateid != "")
            {
                List<string> duongdan = CMBLL.LayDuongDan(int.Parse(cateid));
                lblduongdan.Text = "Trang chủ";
                for (int i = duongdan.Count - 1; i >= 0; i--)
                {
                    lblduongdan.Text = lblduongdan.Text + " > " + duongdan[i];
                }
            }
            if (Session["name"] == null)
            {
                Response.Write("<script>alert('Bạn phải đăng nhập mới vào dc trang web này!')</script>");
                Response.Redirect("Login.aspx");
            }

            //Upload ảnh bằng CKFinder
            CKFinder.FileBrowser _FileBrowser = new CKFinder.FileBrowser();
            _FileBrowser.BasePath = "/ckfinder";
            _FileBrowser.SetupCKEditor(CKEditorControl1);

            if (!Page.IsPostBack)
                lblluotCauhoi.Text = CHBLL.LayCauHoiTheoIDTaiKhoan().Rows.Count.ToString();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            load_page();
        }
        protected void btnGuiCauHoi_Click(object sender, EventArgs e)
        {
            int idtaikhoan = (int)Session["IDNguoiDung"];
            CauHoi ch = new CauHoi(0, idtaikhoan, txtChuDe.Text, CKEditorControl1.Text, DateTime.Now, "chưa trả lời");
            CHBLL.ThemCauHoi(ch);
            lblluotCauhoi.Text = CHBLL.LayCauHoiTheoIDTaiKhoan().Rows.Count.ToString();
            Response.Write("<script>alert('Bạn gửi câu hỏi thành công!')</script>");
            loadcauhoi();
        }
        private void loadcauhoi()
        {
            rptQuestion.DataSource = CHBLL.LayCauHoiTheoIDTaiKhoan();
            rptQuestion.DataBind();
        }
        protected void btnXemCauHoi_Click(object sender, EventArgs e)
        {
            loadcauhoi();
        }

        //Nút xóa câu hỏi
        protected void OnDelete(object sender, EventArgs e)
        {
            RepeaterItem item = (sender as LinkButton).Parent as RepeaterItem;
            int idCH = Convert.ToInt32((item.FindControl("hdfIDCauHoi") as HiddenField).Value);
            CauHoiDAL ch = new CauHoiDAL();
            ch.XoaCauHoi(idCH);
            loadcauhoi();
            lblluotCauhoi.Text = CHBLL.LayCauHoiTheoIDTaiKhoan().Rows.Count.ToString();
        }
    }
}