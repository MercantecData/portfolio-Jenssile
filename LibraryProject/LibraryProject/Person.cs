using System;
using System.Collections.Generic;
using System.Text;

namespace LibraryProject
{
    class Person
    {
        private string name;
        private int age;
        private string gender;
        private int custumerid;
        public bool hasbook;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public int Age
        {
            get { return age; }
            set { age = value; }
        }
        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }
        public int CustumerID
        {
            get { return custumerid; }
            set { custumerid = value; }
        }
    }
}
