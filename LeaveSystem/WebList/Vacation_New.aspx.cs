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
    public partial class Vacation_New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            string y = Session["stuid"].ToString().Trim();
         
        }
        protected void New_Click(object sender, EventArgs e)
        {
            Vacation x = new Vacation();
            setInFor(x);

            if (VacationBLL.Add(x))
            {
                Response.Redirect("/WebReturn/VacationNew_Return.aspx");
            }
            else
            {
                Response.Write("<script>alert('提交失败！请注意学号是否输入正确！');history.back();</script>");
            }
        }
        private void setInFor(Vacation a)
        {
            Random rd = new Random();
            a.id = Id.Text;
            a.name = Name.Text;
            a.type = Request.Form["inlineRadioOptions"];
            a.reason = Request.Form["reason"];
            a.daystart = Request.Form["time1"];
            a.dayover = Request.Form["time2"];
            a.applytime = DateTime.Now.ToString();
            a.number = rd.Next(1000000,9999999).ToString();
        }
    }
}