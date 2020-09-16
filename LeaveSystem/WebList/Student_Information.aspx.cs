using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace LeaveSystem.WebList
{
    public partial class Student_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string y = Session["stuid"].ToString().Trim();
            Liebiao.DataSource = StudentBLL.GetALL();
            Liebiao.DataBind();
        }
        protected void Chxun_Click(object sender, EventArgs e)
        {
            Liebiao.DataSource = StudentBLL.OneStudensGet(TextBox1.Text);
            Liebiao.DataBind();
        }
        protected void Xianshi_Click(object sender, EventArgs e)
        {
            Liebiao.DataSource = StudentBLL.GetALL();
            Liebiao.DataBind();
        }
    }
}