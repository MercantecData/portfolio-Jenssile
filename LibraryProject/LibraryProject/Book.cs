﻿using System;

namespace LibraryProject
{
    class Book
    {
        private string title;
        public bool home;
        private string autour;
        private DateTime lenddate;

        public string Title
        {
            get { return title; }
            set { title = value; }
        }
        public string Autour
        {
            get { return autour; }
            set { autour = value; }
        }
        public DateTime Lenddate
        {
            get { return lenddate; }
            set { lenddate = value; }
        }

        public Book(bool home, string title, string autour)
        {
            this.home = home;
            Title = title ?? throw new ArgumentNullException(nameof(title));
            Autour = autour ?? throw new ArgumentNullException(nameof(autour));
            if (home == false)
            {
                Lenddate = DateTime.Today;
            }
        }
    }
}
