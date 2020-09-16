using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using DAL;
using BLL;

namespace LeaveSystem.WebStudentList
{
    public partial class Student_vacationNew : System.Web.UI.Page
    {
        Student y = new Student();
        protected void Page_Load(object sender, EventArgs e)
        {
            string a = Session["stuid"].ToString().Trim();
            y=StudentBLL.FindAboutId(a);
            Name.Text = y.Name;
            xuehao.Text = y.Id;
        }
        protected void New_Click(object sender, EventArgs e)
        {
            Vacation x = new Vacation();
            setInFor(x);

            if (VacationBLL.Add(x))
            {
                Response.Redirect("/WebReturn/VacationStudent.aspx");
            }
            else
            {
                Response.Write("<script>alert('提交失败！请注意学号是否输入正确！');history.back();</script>");
            }
        }
        private void setInFor(Vacation a)
        {
            Random rd = new Random();
            a.id = xuehao.Text;
            a.name = Name.Text;
            a.type = Request.Form["inlineRadioOptions"];
            a.reason = Request.Form["reason"];
            a.daystart = Request.Form["time1"];
            a.dayover = Request.Form["time2"];
            a.applytime = DateTime.Now.ToString();
            a.number = rd.Next(1000000, 9999999).ToString();
        }
    }
}