using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DAL;
using Model;
using BLL;

namespace LeaveSystem.WebStudentList
{
    public partial class Student_Zhuye : System.Web.UI.Page
    {
        Student x = new Student();
        protected void Page_Load(object sender, EventArgs e)
        {
            x = StudentBLL.FindAboutId(Session["stuid"].ToString().Trim());
            Label2.Text = x.Name;
        }
    }
}