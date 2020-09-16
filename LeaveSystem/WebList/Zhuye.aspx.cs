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
    public partial class Zhuye : System.Web.UI.Page
    {
        Student x = new Student();
        Vacation a = new Vacation();
        protected void Page_Load(object sender, EventArgs e)
        {
            x = StudentBLL.FindAboutId(Session["stuid"].ToString().Trim());
            Label2.Text = x.Name;

            Count.Text = VacationBLL.Count(a).ToString();
        }
    }
}