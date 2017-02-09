using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SorteioTest.Modelo
{
    public class Espectador
    {
        private int id;
        private string nome;
        private string rg;

        public int Id
        {
            get
            {
                return id;
            }
        }

        public string Nome
        {
            get
            {
                return nome;
            }

            set
            {
                nome = value;
            }
        }

        public string Rg
        {
            get
            {
                return rg;
            }

            set
            {
                rg = value;
            }
        }
        
        public Espectador(int id, string nome, string rg)
        {
            this.id = id;
            this.nome = nome;
            this.rg = rg;
        }
    }
}