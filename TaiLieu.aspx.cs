using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GocNetwork.Business.Component;
using GocNetwork.Business.Entities;
using System.Data;

namespace GocNetwork.Presentation
{
    public partial class TaiLieu : System.Web.UI.Page
    {
        TaiLieuBLL TLBLL = new TaiLieuBLL();
        ChuyenMucBLL CMBLL = new ChuyenMucBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cateid = Request.QueryString["cateid"].ToString();
            if (cateid != null && cateid != "")
            {
                List<string> duongdan = CMBLL.LayDuongDan(int.Parse(cateid));
                lblduongdan.Text = "Trang chủ";
                for (int i = duongdan.Count - 1; i >= 0; i--)
                {
                    lblduongdan.Text = lblduongdan.Text + " > " + duongdan[i];
                    grvTaiLieu.DataSource = TLBLL.LoadDL();
                    grvTaiLieu.DataBind();
                }
            }
            //if (Session["name"] == null)
            //{
            //    Response.Write("<script>alert('Bạn phải đăng nhập mới vào dc trang web này!')</script>");
            //    Response.Redirect("Login.aspx");
            //}
            //else
            //{
            //    grvTaiLieu.DataSource = TLBLL.LoadDL();
            //    grvTaiLieu.DataBind();
            //}
        }

        protected void grvTaiLieu_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "cmdTaiLieu")
            {
                string id = e.CommandArgument.ToString() ;
                DataTable dt= TLBLL.LayLinkTheoMa(int.Parse(id));
                string link = dt.Rows[0][4].ToString();
                Response.Redirect(link);
            }
        }

        protected void grvTaiLieu_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvTaiLieu.PageIndex = e.NewPageIndex;
            grvTaiLieu.DataBind();
        }
    }
}