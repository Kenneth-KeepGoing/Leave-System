using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace LeaveSystem.WebList
{
    public partial class User_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string y = Session["stuid"].ToString().Trim();
            if (!IsPostBack)
            {
                try
                {
                    Liebiao.DataSource = AdminBLL.adminList();
                    Liebiao.DataBind();
                }
                catch
                {
                    Response.Write("<script>alert('参数错误');history.back();</script>");
                }
            }
        }
        protected void Chxun_Click(object sender, EventArgs e)
        {
            Liebiao.DataSource = AdminBLL.OneadminList(TextBox1.Text);
            Liebiao.DataBind();
        }
        protected void Xianshi_Click(object sender, EventArgs e)
        {
            Liebiao.DataSource = AdminBLL.adminList();
            Liebiao.DataBind();
        }
        protected void New_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Add.aspx");
        }
     }
}