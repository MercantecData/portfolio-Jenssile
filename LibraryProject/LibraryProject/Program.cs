using System;

namespace LibraryProject
{
    class Program
    {
        static void Main(string[] args)
        {
            Shelf test = new Shelf();
            WriteList(test);
        }
        public static void WriteList(Shelf test)
        {
            foreach (var item in test.List1)
            {
                Console.WriteLine(item.Autour + item.Title + item.Lenddate);
            }
        }
    }
}
