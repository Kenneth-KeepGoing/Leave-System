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
    public partial class User_Del : System.Web.UI.Page
    {
        string name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string y = Session["stuid"].ToString().Trim();
            name = Request.QueryString["id"].ToString().Trim();
            TextBox1.Text = name;
            if (!IsPostBack)
            {
                if (name == null)
                {
                    Response.Redirect("User_Information.aspx");
                }
                Admin a = AdminBLL.getRow(name);
                if (a != null)
                {
                    if (a.Privilege == 0)
                    {
                        TextBox2.Text = "普通用户";
                    }
                    else
                    {
                        TextBox2.Text = "超级管理员";
                    }
                }
            }
        }
        protected void New_Click(object sender, EventArgs e)
        {
            if (AdminBLL.Delete(name) || StudentBLL.Delete(name))
            {
                Response.Redirect("/WebReturn/UserNew_Return.aspx");
            }
            else
            {
                Response.Redirect("/WebReturn/UserNew_Return0.aspx");
            }
        }

        protected void Exit_Click(object sender, EventArgs e)
        {
            Response.Redirect("User_Information.aspx");
        }
    }
} 