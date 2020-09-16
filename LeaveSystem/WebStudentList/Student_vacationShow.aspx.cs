using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;
using DAL;
namespace LeaveSystem.WebStudentList
{
    public partial class Student_vacationShow : System.Web.UI.Page
    {
        Vacation a = new Vacation();
        Student x = new Student();
        protected void Page_Load(object sender, EventArgs e)
        {
            a = VacationBLL.FindAboutId(getNumber());
            setVacation(a);
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
    }
}