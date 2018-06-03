using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace PARTS.Model
{
    public class Dictionaries
    {
        private String table_name;
        private Dictionary<string, string> dictionary = new Dictionary<string, string>();

        public string Table_name { get => table_name; set => table_name = value; }
        public Dictionary<string, string> Dictionary { get => dictionary; set => dictionary = value; }
    }
}
