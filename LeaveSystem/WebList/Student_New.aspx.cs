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
    public partial class Student_New : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string y = Session["stuid"].ToString().Trim();
        }
        protected void New_Click(object sender, EventArgs e)
        {
       
            Student stu = new Student();
            if (!HeFaXingJianCe())
            {
                HeFa.Text = " 该学号已存在！";
            }
            setInFor(stu);
            Admin a = new Admin();
            a.Id = Xuehao.Text;
            a.Password = "000000";
            a.Privilege = 0;
            AdminBLL.Add(a);
            bool bo = StudentBLL.Add(stu);
            if (stu.Main)
            {
                Jianche.Text = "录入成功";
            }
            else
                Jianche.Text = bo.ToString();
        }
        private bool HeFaXingJianCe()
        {
                string x = Xuehao.Text;
                if (StudentBLL.FindAboutId(x).Main) { return false; }
                else if (!StudentBLL.FindAboutId(x).Main) { return true; }
                else { return false; }            
        }
        private void setInFor(Student a)
        {
            a.Id = Xuehao.Text;
            a.Grade = Nianji.Text;
            a.Name = Name.Text;
            a.Pincodes = Pincodes.Text;
            a.Political = political.Text;
            a.Sex = inputState1.Items[inputState1.SelectedIndex].Text;
            a.Address = Zhuzhi.Text;
            a.Phone = Phone.Text;
            a.class1 = Banji.Text;
            a.Main = true;
            if (Picture.HasFile)
            {
                a.Imgurl = Picture.FileName;
                Picture.SaveAs(Server.MapPath("/HeadSculpture/") + Picture.FileName);
            }

        }

    }
}