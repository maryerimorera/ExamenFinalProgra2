using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Bingresar_Click(object sender, EventArgs e)
        {
            if (Clases.Usuario.ValidarUsuario(Usuario.Text, Clave.Text) < 0)
            {
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                Page.RegisterStartupScript("UserMsg", "<script>alert('El usuario o la clave no son correctos'); if (alert) { windows.location = 'Login.aspx';} </script>");
            }
        }
    }
}