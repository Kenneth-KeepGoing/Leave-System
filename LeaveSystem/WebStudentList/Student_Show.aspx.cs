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
    public partial class Student_Show : System.Web.UI.Page
    {
        Student x = new Student();
        Student y = new Student();

        protected void Page_Load(object sender, EventArgs e)
        {
            string y = Session["stuid"].ToString().Trim();
            //  if (!IsPostBack)
            //  {
            x = StudentBLL.FindAboutId(getId());
            setStudent(x);
            Liebiao.DataSource = VacationBLL.VacationGet3(getId());
            Liebiao.DataBind();
            //    }
        }
        private void setStudent(Student a)
        {
            xuehao.Text = getId().ToString();
            Name.Text = a.Name;
            Sex.Text = a.Sex;
            Political.Text = a.Political;
            Pincodes.Text = a.Pincodes;
            Grade.Text = a.Grade;
            Class.Text = a.class1;
            Address.Text = a.Address;
            Phone.Text = a.Phone;

        }
        public string ABC()
        {
            y = StudentBLL.FindAboutId(getId());
            string x = "/HeadSculpture/" + y.Imgurl;
            return x;
        }
        private string getId()
        {
            try
            {
                string id = Session["stuid"].ToString();
                return id;
            }
            catch { return "10001"; }
        }
        protected void Xiu_Click(object sender, EventArgs e)
        {      
                Response.Redirect("Student_R.aspx");
        }

    }
}