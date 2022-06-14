using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2_Grupo6
{
    public partial class IngresoAlumnos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Evitamos que recargue el DDL en cada envio
            if (!IsPostBack)
            {
                string[] turnos = { "Mañana", "Tarde", "Noche" };
                ddlTurnos.DataSource = turnos;
                ddlTurnos.DataBind();
                ddlTurnos.Items.Insert(0, new ListItem("Seleccione turno"));
            }
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            DataLinqClassDataContext instance = new DataLinqClassDataContext();

            alumno alumnos = new alumno
            {
                apellido_alumno = txtApellido.Text,
                nombre_alumno = txtNombre.Text,
                dni_alumno = Convert.ToInt32(txtDocumento.Text),
                email_alumno = txtEmail.Text,
                turno_alumno = ddlTurnos.SelectedItem.Value,
            };

            instance.alumnos.InsertOnSubmit(alumnos);
            instance.SubmitChanges();
        }
    }
}