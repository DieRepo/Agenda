using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgendaPrueba
{
    public partial class Tema : System.Web.UI.Page
    {
        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                String idPagina = Request.QueryString["id"].Trim().ToLower();
                obtenerInformacionTema(idPagina);
                Console.WriteLine(idPagina);

            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }





        public void obtenerInformacionTema(String idPagina)
        {
            int idMenu = 0;
            int idlocalizacion = 0;
            String location = "";
            string str;
            MySqlConnection con = null;
            List<String> listaPaginas = null;
            String url_pdf = "";

            try
            {
                con = new MySqlConnection(System.Configuration.ConfigurationManager.AppSettings["die"]);
                con.Open();
                str = "SELECT * FROM tblmenu a, tblcatlocation b WHERE a.activo = 1 AND a.location= b.id AND a.idmenu = " + idPagina ;
                cmd = new MySqlCommand(str, con);

                MySqlDataReader resultado = cmd.ExecuteReader();
                listaPaginas = new List<string>();
                while (resultado.Read())
                {
                    idlocalizacion = Convert.ToInt32(resultado["id"]);
                    url_pdf = Convert.ToString(resultado["url_pdf"]);
                    location = resultado["localizacion"].ToString();

                }


                con.Close();


                //MOSTRAR U OCULTAR INFORMACIÓN DE LOS TEMAS Y BOTONES
                HyperLink enlaceAnterior = (HyperLink)this.Master.FindControl("anterior");
                HyperLink enlaceSiguiente = (HyperLink)this.Master.FindControl("siguiente");

                if (idPagina.Equals("1")) //No mostrar "Anterior" al ser la primera página 
                {
                    enlaceAnterior.Visible = false;
                }
                else if (idPagina.Equals("X"))
                {
                    //Desactivar enlace Siguiente en caso de la última página
                    enlaceSiguiente.Visible = false;
                }
                else
                {
                    enlaceAnterior.Visible = true;
                    enlaceSiguiente.Visible = true;
                }
                enlaceAnterior.NavigateUrl = "~/Tema?id=" + (Convert.ToInt32(idPagina) - 1);
                enlaceSiguiente.NavigateUrl = "~/Tema?id=" + (Convert.ToInt32(idPagina) + 1);

                yourIframe.Attributes.Add("src", "~/" +  url_pdf);
                yourIframe.DataBind();

            }
            catch (Exception ex)
            {
                Console.WriteLine("Excepción : " + ex.ToString());
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }
        }



    }
}