using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using DAL;

namespace BLL
{
     public class VacationBLL
    {
        public static int Count(Vacation a)
        {
            return VacationDAL.Count(a);

        }
        public static bool Add(Vacation a)
        {
            return VacationDAL.Add(a);

        }
        public static bool Revise(Vacation a)
        {
            return VacationDAL.Update(a);
        }
        public static bool Delete(string a)
        {
            return VacationDAL.Delete(a);
        }
        public static Vacation FindAboutId(string id)
        {
            return VacationDAL.GetbyId(id);
        }
        public static List<Vacation> GetALL(string condition)
        {
            return VacationDAL.GetALL(condition);
        }
        public static List<Vacation> OneVacationGet(String id,String condition)
        {
            return VacationDAL.OneVacationGet(id,condition);
        }
        public static bool UpdateAgree(Vacation a)
        {
            return VacationDAL.UpdateAgree(a);
        }
        public static List<Vacation> VacationGet2(String condition)
        {
            return VacationDAL.VacationGet2(condition);
        }
        public static List<Vacation> VacationGet(String id,String condition)
        {
            return VacationDAL.VacationGet(id,condition);
        }
        public static List<Vacation> VacationGet3(String id)
        {
            return VacationDAL.VacationGet3(id);
        }
    }
}
