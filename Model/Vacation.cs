using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
    public class Vacation
    {
        private string Number;
        private string Id;
        private string Name;
        private string Type;
        private string Reason;
        private string Daystart;
        private string Dayover;
        private string Applytime;
        private string Agreepeople;
        private string Condition="未审批";

        public string number
        {
            get { return Number; }
            set { Number = value; }
        }
        public string id
        {
            get { return Id; }
            set { Id = value; }
        }
        public string name
        {
            get { return Name; }
            set { Name = value; }
        }
        public string type
        {
            get { return Type; }
            set { Type = value; }
        }
        public string reason
        {
            get { return Reason;}
            set { Reason = value; }
        }
        public string daystart
        {
            get { return Daystart; }
            set { Daystart = value; }
        }
        public string dayover
        {
            get { return Dayover; }
            set { Dayover = value; }
        }
        public string applytime
        {
            get { return Applytime; }
            set { Applytime = value; }
        }
        public string agreepeople
        {
            get { return Agreepeople; }
            set { Agreepeople = value; }
        }
        public string condition
        {
            get { return Condition;}
            set { Condition = value; }
        }
        public Vacation(string Condition)
        {
            this.Condition = Condition;
        }

        public Vacation()
        {
        }
    }
}
