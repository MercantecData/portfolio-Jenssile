using System;

namespace OBJProgramming
{
    class Program
    {
        static void Main(string[] args)
        {
            Bag NewBag = new Bag();

            NewBag.Colour = 0xf54242;
            NewBag.Hight = 100.7465;
            NewBag.Width = 580.376;
            NewBag.Deapth = 59.673772;
            NewBag.Empty = true;


            var person = new Person();
            person.name = "name";
            person.age = 18;

            Console.WriteLine(person.age);
        }
    }
}