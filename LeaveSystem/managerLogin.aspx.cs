using System;
using BLL;
using Model;


namespace SIMSystem
{
    public partial class managerLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            string uid = TID.Text;
            string pwd = TPwd.Text;
            Admin a = new Admin();
            a.Id = uid;
            a.Password = pwd;
            a.Privilege = 1;

            if (AdminBLL.checkAdmin(a))
            {
                Session["stuid"] = uid;
                Response.Redirect("WebList/Zhuye.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误！');history.back();</script>");
            }
        }
    }
}