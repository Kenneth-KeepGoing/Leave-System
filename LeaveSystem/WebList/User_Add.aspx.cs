using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;

namespace LeaveSystem.WebList
{
    public partial class User_Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void New_Click(object sender, EventArgs e)
        {
            string uid = TextBox3.Text;
            string pwd = TextBox2.Text;
            string pri= inputState1.Items[inputState1.SelectedIndex].Text;
            Admin a = new Admin();
            a.Id = uid;
            a.Password = pwd;
            if (pri == "普通用户")
            {
                a.Privilege = 0;
            }
            else if (pri == "超级管理员")
            {
                a.Privilege = 1;
            }

            if (AdminBLL.Add(a))
            {
                Response.Redirect("/WebReturn/UserNew_Return.aspx");
            }
            else
            {

                Response.Write("<script>alert('添加失败，该用户已存在');history.back();</script>");
            }
        }
    }
}