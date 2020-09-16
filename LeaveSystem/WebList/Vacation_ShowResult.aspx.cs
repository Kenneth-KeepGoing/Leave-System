using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using Model;

namespace LeaveSystem.WebList
{
    public partial class Vacation_ShowResult : System.Web.UI.Page
    {
        Vacation a = new Vacation();
        Student x = new Student();
        protected void Page_Load(object sender, EventArgs e)
        {
            a = VacationBLL.FindAboutId(getNumber());
            setVacation(a);
            string y = Session["stuid"].ToString().Trim();
        }

        private string getNumber()
        {
            try
            {
                string id = Request.QueryString["Number"].ToString();
                return id;
            }
            catch { return "10001"; }
        }
        private void setVacation(Vacation a)
        {
            number.Text = getNumber().ToString();
            xuehao.Text = a.id;
            Name.Text = a.name;
            type.Text = a.type;
            reason.Text = a.reason;
            timestart.Text = a.daystart;
            timeover.Text = a.dayover;
            condition.Text = a.condition;
            agreepeople.Text = a.agreepeople;
            applytime.Text = a.applytime;
            a.number = a.number;
        }
        protected void Del_Click(object sender, EventArgs e)
        {
            string Id = number.Text;
            if (VacationBLL.Delete(Id))
            {
                Response.Redirect("/WebReturn/VacationNew_Return.aspx");
            }
            else
            {
                Response.Write("<script>alert('操作失败，请稍后再尝试！');history.back();</script>");
            }
        }
    }
}