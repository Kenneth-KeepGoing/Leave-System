using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;

namespace LeaveSystem.WebList
{
    public partial class Vacation_Information : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string y = Session["stuid"].ToString().Trim();
            string condition1 = "未审批";
            Liebiao.DataSource = VacationBLL.GetALL(condition1);
            Liebiao.DataBind();
            Liebiao2.DataSource = VacationBLL.VacationGet2(condition1);
            Liebiao2.DataBind();
        }
        protected void Chxun_Click(object sender, EventArgs e)
        {
            string condition1 = "未审批";
            Liebiao.DataSource = VacationBLL.OneVacationGet(TextBox1.Text,condition1);
            Liebiao.DataBind();
            Liebiao2.DataSource = VacationBLL.VacationGet(TextBox1.Text, condition1);
            Liebiao2.DataBind();
        }
        protected void Xianshi_Click(object sender, EventArgs e)
        {
            string condition1 = "未审批";
            Liebiao.DataSource = VacationBLL.GetALL(condition1);
            Liebiao.DataBind();
            Liebiao2.DataSource = VacationBLL.VacationGet2(condition1);
            Liebiao2.DataBind();
        }
    }
}