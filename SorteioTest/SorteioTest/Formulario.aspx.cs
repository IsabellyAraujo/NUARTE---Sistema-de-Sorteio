using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SorteioTest
{
    public partial class Formulario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string nome = TextBox1.Text;
            string rg = TextBox2.Text;

            Modelo.Espectador espectador = new Modelo.Espectador(0, nome, rg);
            DAL.DALEspectador DALEspectador = new DAL.DALEspectador();
            DALEspectador.Insert(espectador);
            Response.Redirect("~\\Concluido.aspx");
        }
    }
}