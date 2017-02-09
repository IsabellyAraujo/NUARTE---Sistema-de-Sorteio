using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SorteioTest.Modelo
{
    public class DiaEscolhido
    {
        private int espectador_id;
        private int dia_id;

        public int Espectador_id
        {
            get
            {
                return espectador_id;
            }

            set
            {
                espectador_id = value;
            }
        }

        public int Dia_id
        {
            get
            {
                return dia_id;
            }

            set
            {
                dia_id = value;
            }
        }

        public DiaEscolhido(int espectador_id, int dia_id)
        {
            this.espectador_id = espectador_id;
            this.dia_id = dia_id;
        }
    }
}