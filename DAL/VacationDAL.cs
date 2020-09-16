using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;

namespace DAL
{
   public class VacationDAL
    {
        static string sql;
        static Vacation a;
        static DataSet ds;
        static DataRow dr;

        public static int Count(Vacation a)
        {
            sql = string.Format("SELECT COUNT(condition) FROM T_Vacation WHERE condition = '未审批'");
            return DBAcess.ExecSqlCommand1(sql);
        }
        public static bool Add(Vacation a)
        {
            sql = string.Format("insert into T_Vacation(ID,name,type,reason,daystart,dayover,applytime,condition,Number) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", a.id,a.name,a.type,a.reason,a.daystart,a.dayover,a.applytime,a.condition,a.number);
            return DBAcess.ExecSqlCommand(sql);
        }

        public static bool Update(Vacation a)
        {
            sql = string.Format("update T_Vacation set condition='{0}',agreepeople='{1}'where Number='{2}'", a.condition,a.agreepeople, a.number);
            return DBAcess.ExecSqlCommand(sql);
        }

        public static bool UpdateAgree(Vacation a)
        {
            sql = string.Format("update T_Vacation set agreepeople='{0}' where Number='{1}'", a.agreepeople, a.number);
            return DBAcess.ExecSqlCommand(sql);
        }

        public static bool Delete(string id)
        {
            sql = string.Format("Delete T_Vacation where Number='{0}'", id);
            return DBAcess.ExecSqlCommand(sql);
        }

        public static Vacation GetbyId(string id)
        {
            a = new Vacation();
            string sql = string.Format("select * from T_Vacation where Number='{0}'", id);
            dr = DBAcess.GetDataRow(sql);
            try
            {
                a.number = dr["Number"].ToString();
                a.id = dr["ID"].ToString();
                a.name = dr["name"].ToString();
                a.type = dr["type"].ToString();
                a.reason = dr["reason"].ToString();
                a.daystart = dr["daystart"].ToString();
                a.dayover = dr["dayover"].ToString();
                a.applytime = dr["applytime"].ToString();
                a.agreepeople = dr["agreepeople"].ToString();
                a.condition = dr["condition"].ToString();
                return a;
            }
            catch
            {
                return a;
            }
        }
        public static List<Vacation> GetALL(string condition)
        {
            List<Vacation> list = new List<Vacation>();
            string sql = string.Format("select * from T_Vacation where condition='{0}'", condition);
            ds = DBAcess.GetDataSet(sql);
            if (ds == null)
            {
                return null;
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    a = new Vacation();
                    a.number = dr["Number"].ToString();
                    a.id = dr["ID"].ToString();
                    a.name = dr["name"].ToString();
                    a.type = dr["type"].ToString();
                    a.reason = dr["reason"].ToString();
                    a.daystart = dr["daystart"].ToString();
                    a.dayover = dr["dayover"].ToString();
                    a.applytime = dr["applytime"].ToString();
                    a.agreepeople = dr["applytime"].ToString();
                    a.condition = dr["condition"].ToString();
                    list.Add(a);
                }
                return list;
            }
        }
        public static List<Vacation> OneVacationGet(String id,String condition)
        {
            List<Vacation> list = new List<Vacation>();

            string sql = string.Format("select * from T_Vacation where ID='{0}'and condition='{1}'", id,condition);
            ds = DBAcess.GetDataSet(sql);
            if (ds == null)
            {
                return null;
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    a = new Vacation();
                    a.number = dr["Number"].ToString();
                    a.id = dr["ID"].ToString();
                    a.name = dr["name"].ToString();
                    a.type = dr["type"].ToString();
                    a.reason = dr["reason"].ToString();
                    a.daystart = dr["daystart"].ToString();
                    a.dayover = dr["dayover"].ToString();
                    a.applytime = dr["applytime"].ToString();
                    a.agreepeople = dr["applytime"].ToString();
                    a.condition = dr["condition"].ToString();
                    list.Add(a);
                }
                return list;
            }
        }

        public static List<Vacation> VacationGet(String id, String condition)
        {
            List<Vacation> list = new List<Vacation>();

            string sql = string.Format("select * from T_Vacation where ID='{0}'and condition NOT IN('{1}')", id, condition);
            ds = DBAcess.GetDataSet(sql);
            if (ds == null)
            {
                return null;
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    a = new Vacation();
                    a.number = dr["Number"].ToString();
                    a.id = dr["ID"].ToString();
                    a.name = dr["name"].ToString();
                    a.type = dr["type"].ToString();
                    a.reason = dr["reason"].ToString();
                    a.daystart = dr["daystart"].ToString();
                    a.dayover = dr["dayover"].ToString();
                    a.applytime = dr["applytime"].ToString();
                    a.agreepeople = dr["applytime"].ToString();
                    a.condition = dr["condition"].ToString();
                    list.Add(a);
                }
                return list;
            }
        }
        public static List<Vacation> VacationGet2( String condition)
        {
            List<Vacation> list = new List<Vacation>();

            string sql = string.Format("select * from T_Vacation where condition NOT IN('{0}')", condition);
            ds = DBAcess.GetDataSet(sql);
            if (ds == null)
            {
                return null;
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    a = new Vacation();
                    a.number = dr["Number"].ToString();
                    a.id = dr["ID"].ToString();
                    a.name = dr["name"].ToString();
                    a.type = dr["type"].ToString();
                    a.reason = dr["reason"].ToString();
                    a.daystart = dr["daystart"].ToString();
                    a.dayover = dr["dayover"].ToString();
                    a.applytime = dr["applytime"].ToString();
                    a.agreepeople = dr["applytime"].ToString();
                    a.condition = dr["condition"].ToString();
                    list.Add(a);
                }
                return list;
            }
        }

        public static List<Vacation> VacationGet3(String id)
        {
            List<Vacation> list = new List<Vacation>();

            string sql = string.Format("select * from T_Vacation where ID='{0}'", id);
            ds = DBAcess.GetDataSet(sql);
            if (ds == null)
            {
                return null;
            }
            else
            {
                foreach (DataRow dr in ds.Tables[0].Rows)
                {
                    a = new Vacation();
                    a.number = dr["Number"].ToString();
                    a.id = dr["ID"].ToString();
                    a.name = dr["name"].ToString();
                    a.type = dr["type"].ToString();
                    a.reason = dr["reason"].ToString();
                    a.daystart = dr["daystart"].ToString();
                    a.dayover = dr["dayover"].ToString();
                    a.applytime = dr["applytime"].ToString();
                    a.agreepeople = dr["applytime"].ToString();
                    a.condition = dr["condition"].ToString();
                    list.Add(a);
                }
                return list;
            }
        }

    }
}
