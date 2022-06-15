using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Parcial2_Grupo6
{
    public partial class MostrarDatos : System.Web.UI.Page
    {
        private string dniInput;
        protected void Page_Load(object sender, EventArgs e)
        {
            dniInput = Request.QueryString["documento"];

            DataLinqClassDataContext instance = new DataLinqClassDataContext();

            //IQueryable consultaPorDNI = instance.alumnos.Where(dni => dni.dni_alumno.ToString() == dniInput.ToString())
            //                                            .Select(dato => new { dato.nombre_alumno, dato.apellido_alumno, dato.dni_alumno,
            //                                                dato.email_alumno, dato.turno_alumno });

            //IQueryable consultaPorDNI = instance.alumnos.Select(dato => new { dato.nombre_alumno, dato.apellido_alumno, dato.dni_alumno, 
            //                                                       dato.email_alumno, dato.turno_alumno });

            var consultaPorDNI = from dato in instance.alumnos
                                        where dato.dni_alumno.ToString() == dniInput
                                        select dato;

            foreach (var consulta in consultaPorDNI) {
                Console.WriteLine($"Dato: {consulta.apellido_alumno}");
                Console.WriteLine(consulta.GetType());
                txtNombre.Text = consulta.nombre_alumno;
                txtApellido.Text = consulta.apellido_alumno;
                txtDocumento.Text = consulta.dni_alumno.ToString();
                txtEmail.Text = consulta.email_alumno;
                txtTurno.Text = consulta.turno_alumno;
            }

            //GridView1.DataSource = consultaPorDNI;
            //GridView1.DataBind();
       
        }

        protected void Enviar_Click(object sender, EventArgs e)
        {
            DataLinqClassDataContext instance = new DataLinqClassDataContext();

            comentario comentarios = new comentario
            {
                dni_alumno = Convert.ToInt32(txtDocumento.Text),
                apellido_alumno = txtApellido.Text,
                comentario_alumno = txtComentario.Text
            };

            instance.comentarios.InsertOnSubmit(comentarios);
            instance.SubmitChanges();
        }
    }
}