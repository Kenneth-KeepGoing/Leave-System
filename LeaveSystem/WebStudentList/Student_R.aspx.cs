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
    public partial class Student_R : System.Web.UI.Page
    {

        Student x = new Student();
        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (!IsPostBack)
            {
                x = StudentBLL.FindAboutId(getId());
                setStudent(x);
            }
        }
        private void setStudent(Student a)
        {
            Xuehao.Text = a.Id.ToString();
            Nianji.Text = a.Grade;
            Name.Text = a.Name;
            political.Text = a.Political;
            Pincodes.Text = a.Pincodes;
            Zhuzhi.Text = a.Address;
            Banji.Text = a.class1;
            Phone.Text = a.Phone;
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
        protected void New_Click(object sender, EventArgs e)
        {
            x.Id = getId();
            x.Grade = Nianji.Text;
            x.Name = Name.Text;
            x.Pincodes = Pincodes.Text;
            x.Political = political.Text;
            x.Sex = inputState1.Items[inputState1.SelectedIndex].Text;
            x.Address = Zhuzhi.Text;
            x.Phone = Phone.Text;
            x.class1 = Banji.Text;
            if (Picture.HasFile)
            {
                x.Imgurl = Picture.FileName;
                Picture.SaveAs(Server.MapPath("/HeadSculpture/") + Picture.FileName);
            }
            bool a = StudentBLL.Revise(x);
            Jianche.Text = "修改成功！";
        }

    }
}