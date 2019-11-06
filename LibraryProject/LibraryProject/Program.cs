using System;

namespace LibraryProject
{
    class Program
    {
        static void Main(string[] args)
        {
            Shelf test = new Shelf();
            

            foreach (var item in test.List1)
            {
                Console.WriteLine(item.Title);
            }
        }
    }
}
