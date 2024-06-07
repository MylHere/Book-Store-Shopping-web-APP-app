using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Ex04Cart.Models
{
    public class Book
    {
        public int Id { get; set; }
        public string Title { get; set; }
        public string Author { get; set; }
        public int GenreId { get; set; }
    }
}
