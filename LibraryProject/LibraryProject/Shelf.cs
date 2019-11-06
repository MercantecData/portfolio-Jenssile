using System;
using System.Collections.Generic;

namespace LibraryProject
{
    class Shelf
    {
        public List<Book> List1 = new List<Book>() {
                new Book(true, "t1", "a1"){ },
                new Book(true, "t2", "a2"){ },
                new Book(true, "t3", "a3"){ },
                new Book(true, "t4", "a4"){ }
        };
    }
}
