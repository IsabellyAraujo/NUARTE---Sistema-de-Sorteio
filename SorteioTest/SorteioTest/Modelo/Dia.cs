using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SorteioTest.Modelo
{
    public class Dia
    {
        private int id;
        private DateTime data;

        public int Id
        {
            get
            {
                return id;
            }
        }

        public DateTime Data
        {
            get
            {
                return data;
            }

            set
            {
                data = value;
            }
        }

        public Dia(int id, DateTime data)
        {
            this.id = id;
            this.data = data;
        }
    }
}