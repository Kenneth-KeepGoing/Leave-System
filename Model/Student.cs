using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
     public class Student
    {
        private string ID;
        private string name;
        private string sex;
        private string political;
        private string pincodes;
        private string grade;
        private string Class;
        private string address;
        private string phone;
        private bool main = false;
        private string imgurl = "default.png";//相片

        public bool Main
        {
            get { return main; }
            set { main = value; }
        }

        public string Id
        {
            get { return ID;  }
            set { ID = value; }
        }
        public string Imgurl
        {
            get { return imgurl; }
            set { imgurl = value; }
        }
        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public string Sex
        {
            get { return sex; }
            set { sex = value; }
        }
        public string Political
        {
            get { return political; }
            set { political = value; }
        }
        public string Pincodes
        {
            get { return pincodes; }
            set { pincodes = value; }
        }
        public string Grade
        {
            get { return grade; }
            set { grade = value; }
        }
        public string class1
        {
            get { return Class; }
            set { Class = value; }
        }
        public string Address
        {
            get { return address; }
            set { address = value; }
        }
        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }
        public Student(string ID, string name, string sex, string political, string pincodes, string grade, string Class, string address, string phone,bool main,string imgurl)
        {
            this.ID = ID;
            this.name = name;
            this.sex = sex;
            this.political = political;
            this.pincodes = pincodes;
            this.grade = grade;
            this.Class = Class;
            this.address = address;
            this.phone = phone;
            this.main = main;
            this.imgurl = imgurl;

        }

        public Student()
        {
        }
    }
}
