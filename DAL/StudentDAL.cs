using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;

namespace DAL
{
    public class StudentDAL
    {
        static string sql;
        static Student a;
        static DataSet ds;
        static DataRow dr;

        public static void AddToAdmin(Student a)
        {
            string x = a.Pincodes.Substring(a.Pincodes.Length - 6);
            sql = string.Format("insert into T_Admin(ID,Password,Privilege) values ('{0}','{1}','{2}')", a.Id, x, 0);
            DBAcess.ExecSqlCommand(sql);
        }
        public static bool Add(Student a)
        {  
            sql = string.Format("insert into T_Student(ID,name,sex,political,pincodes,grade,class,address,phone,main,img) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}')", a.Id, a.Name, a.Sex, a.Political,a.Pincodes, a.Grade, a.class1, a.Address,a.Phone,a.Main,a.Imgurl);
            return DBAcess.ExecSqlCommand(sql);
        }

        public static bool Update(Student a)
        {
            sql = string.Format("update T_Student set name='{0}',political='{1}',grade='{2}',class='{3}',address='{4}',phone='{5}',sex='{6}',pincodes='{7}',img='{8}' where ID='{9}'", a.Name, a.Political, a.Grade, a.class1, a.Address, a.Phone, a.Sex, a.Pincodes,a.Imgurl, a.Id);
            return DBAcess.ExecSqlCommand(sql);
        }
       
        public static bool Delete(string id)
        {
            sql = string.Format("Delete T_Student where id='{0}'", id);
            return DBAcess.ExecSqlCommand(sql);
        }

        public static Student GetbyId(string id)
        {
            a = new Student();
            string sql = string.Format("select * from T_Student where id='{0}'", id);
            dr = DBAcess.GetDataRow(sql);
            try
            {
                a.Id = dr["ID"].ToString();
                a.Name = dr["name"].ToString();
                a.Sex = dr["sex"].ToString();
                a.Political = dr["political"].ToString();
                a.Pincodes = dr["pincodes"].ToString();
                a.Grade = dr["grade"].ToString();
                a.class1 = dr["class"].ToString();
                a.Address = dr["address"].ToString();
                a.Phone = dr["phone"].ToString();
                a.Main = Convert.ToBoolean(dr["main"]);
                a.Imgurl = dr["img"].ToString();
                return a;
            }
            catch
            {
                //throw ei;
                // return null;
                return a;
            }
        }
        public static List<Student> GetALL()
        {
            List<Student> list = new List<Student>();
            sql = "select * from T_Student";
            ds = DBAcess.GetDataSet(sql);
            if (ds == null)
            {
                return null;
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    a = new Student();
                    a.Id = dr["ID"].ToString();
                    a.Name = dr["name"].ToString();
                    a.Sex = dr["sex"].ToString();
                    a.Political = dr["political"].ToString();
                    a.Grade = dr["grade"].ToString();
                    a.class1 = dr["class"].ToString();
                    a.Address = dr["address"].ToString();
                    a.Phone = dr["phone"].ToString();
                    a.Main = true;
                    list.Add(a);
                }
                return list;
            }
        }
        public static List<Student> OneStudensGet(String id)
        {
            List<Student> list = new List<Student>();

            string sql = string.Format("select * from T_Student where id='{0}'",id);
            ds = DBAcess.GetDataSet(sql);
            if (ds == null)
            {
                return null;
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    a = new Student();
                    a.Id = dr["ID"].ToString();
                    a.Name = dr["name"].ToString();
                    a.Sex = dr["sex"].ToString();
                    a.Political = dr["political"].ToString();
                    a.Grade = dr["grade"].ToString();
                    a.class1 = dr["class"].ToString();
                    a.Address = dr["address"].ToString();
                    a.Phone = dr["phone"].ToString();
                    a.Main = true;
                    list.Add(a);
                }
                return list;
            }
        }

    }
}