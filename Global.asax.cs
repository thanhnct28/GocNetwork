using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.IO;

namespace GocNetwork
{
    public class Global1 : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
            StreamReader sr = new StreamReader(Server.MapPath("~/Counter.txt"));
            int counter = int.Parse(sr.ReadLine());
            sr.Close();
            sr.Dispose();

            Application["counter"] = counter;
            Application["online"] = 0;
        }
       
        protected void Session_Start(object sender, EventArgs e)
        {
            HttpCookie cookpass = Request.Cookies["pass"];
            HttpCookie cookname = Request.Cookies["name"];
            Session["Manguoidung"] = null;
            //if (cookname.Value != null && cookpass.Value != null)
            //{
            //    if (cookname.Expires > DateTime.Now && cookpass.Expires > DateTime.Now)
            //    {
            //        Session["pass"] = cookpass.Value.ToString();
            //        Session["name"] = cookname.Value.ToString();
            //        //Redirect den trang luu truoc do
            //    }
            //}
            //else
            //{
            //    Session["pass"] = null;
            //    Session["name"] = null;
            //}
            Application["counter"] = (int)Application["counter"] + 1;
            Application["online"] = (int)Application["online"] + 1;
            StreamWriter sw = new StreamWriter(Server.MapPath("~/Counter.txt"));
            sw.Write(Application["counter"]);
            sw.Close();
            sw.Dispose();
        }
        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {
        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["online"] = (int)Application["online"] - 1;
            //Luu trang cuoi cung da tham
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}