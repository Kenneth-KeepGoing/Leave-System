using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using Model;
using BLL;

namespace SIMSystem
{
    public partial class StudentLogin : System.Web.UI.Page
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
            a.Privilege = 0;

            if (AdminBLL.checkAdmin(a))
            {
                Session["stuid"] = uid;
                Response.Redirect("WebStudentList/Student_Zhuye.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误！');history.back();</script>");
            }
        }
    }
}