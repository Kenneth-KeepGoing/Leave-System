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
    public partial class User_New : System.Web.UI.Page
    {
        string name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string y = Session["stuid"].ToString().Trim();
            try
            {
                name = Request.QueryString["id"].ToString();
                TextBox3.Text = name;
            }
            catch
            {
            }
        }
        protected void New_Click(object sender, EventArgs e)
        {
            string uid = name;
            string pwd = TextBox2.Text;
            string pri = inputState1.Items[inputState1.SelectedIndex].Text;
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
            if (AdminBLL.Update(a))
            {
                Response.Redirect("/WebReturn/UserNew_Return.aspx");
            }
            else
            {
                Response.Redirect("/WebReturn/UserNew_Return0.aspx");
            }
        }


    }
}