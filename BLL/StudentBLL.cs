using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;
using System.Collections;

namespace BLL
{
    public class StudentBLL
    {
        public static bool Add(Student a)
        {
            return StudentDAL.Add(a);

        }
        public static bool Revise(Student a)
        {
            return StudentDAL.Update(a);
        }
        public static bool Delete(string a)
        {
            return StudentDAL.Delete(a);
        }
        public static Student FindAboutId(string id)
        {
            return StudentDAL.GetbyId(id);
        }
        public static List<Student> GetALL()
        {
            return StudentDAL.GetALL();
        }
        public static List<Student> OneStudensGet(String id)
        {
            return StudentDAL.OneStudensGet(id);
        }
    }
}
