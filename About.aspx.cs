using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using GocNetwork.Business.Component;
using GocNetwork.Business.Entities;
namespace GocNetwork
{
    public partial class About : System.Web.UI.Page
    {
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
                }
            }
        }
    }
}