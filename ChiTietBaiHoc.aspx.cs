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
    public partial class ChiTietBaiHoc : System.Web.UI.Page
    {
        ChuyenMucBLL CMBLL = new ChuyenMucBLL();
        protected void Page_Load(object sender, EventArgs e)
        {
            string cateid = Request.QueryString["cateid"].ToString();

            if (Session["name"] == null)
            {
                string urlCurrent = HttpContext.Current.Request.Url.ToString();
                Response.Redirect("Login.aspx?ref=" + HttpUtility.UrlEncode(urlCurrent));
            }
            else
            {
                if (cateid != null && cateid != "")
                {
                    List<string> duongdan = CMBLL.LayDuongDan(int.Parse(cateid));
                    lblduongdan.Text = "Trang chủ";
                    for (int i = duongdan.Count - 1; i >= 0; i--)
                    {
                        lblduongdan.Text = lblduongdan.Text + " > " + duongdan[i];
                    }
                    lblTenChuyenMuc.Text = CMBLL.LayTenCM(int.Parse(cateid));
                }
                string option = Request.QueryString["option"];
                Control ctrl = null;
                Control ctrl1 = null;
                switch (option)
                {
                    case "ChiTietTin":
                        {
                            ctrl = Page.LoadControl("Presentation/UserControls/ChiTietTin.ascx");
                            break;
                        }
                    case "tailieu":
                        {
                             ctrl = Page.LoadControl("Presentation/UserControls/BaiTap-ViDu.ascx");
                             ctrl1 = Page.LoadControl("Presentation/UserControls/BaiHocLienQuan.ascx");
                            break;
                        }
                    case "video":
                        {
                            ctrl = Page.LoadControl("Presentation/UserControls/Video-iframe.ascx");
                            break;
                        }
                        default:
                        break;
                }
                if (ctrl != null)
                {
                    phContent.Controls.Add(ctrl);
                }
                if (ctrl1 != null)
                {
                    PlaceHolder1.Controls.Add(ctrl1);
                }
            }
            
        }
    }
}