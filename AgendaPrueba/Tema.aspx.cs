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
        IDictionary<int, string> temas = new Dictionary<int, string>();

        protected void Page_Load(object sender, EventArgs e)
        {

            temas.Add(1, "~/files/az.pdf");
            temas.Add(2, "~/files/prueba_text_alternativo.pdf");
            temas.Add(3, "~/files/TEMA_3.pdf");


            //foreach (KeyValuePair<int, string> kvp in temas)
                //Console.WriteLine("Key: {0}, Value: {1}", kvp.Key, kvp.Value);


            if (Request.QueryString["id"] != null)
            {
                String idPagina = Request.QueryString["id"].Trim().ToLower();
                Console.WriteLine(idPagina);

                HyperLink enlaceAnterior = (HyperLink)this.Master.FindControl("anterior");
                HyperLink enlaceSiguiente= (HyperLink)this.Master.FindControl("siguiente");

                if (idPagina.Equals("1")) //No mostrar "Anterior" al ser la primera página 
                {
                    enlaceAnterior.Visible = false;
                } 
                else if (idPagina.Equals("X")) {
                    //Desactivar enlace Siguiente en caso de la última página
                    enlaceSiguiente.Visible = false;
                }
                else {
                    enlaceAnterior.Visible = true;
                    enlaceSiguiente.Visible = true;
                }
                yourIframe.Attributes.Add("src",temas[ Convert.ToInt32( idPagina) ]);
                yourIframe.DataBind();

                Console.WriteLine("-->" +  enlaceAnterior.NavigateUrl);
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}