using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AgendaPrueba
{
    public partial class _Default : Page
    {

        MySqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            obtenerMenu();
        }

        public void obtenerMenu()
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
                str = "SELECT * FROM tblmenu a, tblcatlocation b WHERE a.activo = 1 AND a.location= b.id";
                cmd = new MySqlCommand(str, con);

                MySqlDataReader resultado = cmd.ExecuteReader();
                listaPaginas = new List<string>();
                while (resultado.Read())
                {
                    idMenu = Convert.ToInt32(resultado["idmenu"]);
                    idlocalizacion = Convert.ToInt32(resultado["id"]);
                    url_pdf = Convert.ToString(resultado["url_pdf"]);
                    location = resultado["localizacion"].ToString();
                   
                    menu.Items.Add(new MenuItem(resultado["nom_menu"].ToString(),
                        resultado["idmenu"].ToString(), "", location +"?id="+idMenu));

                    menu.FindItem(resultado["idmenu"].ToString());
                    listaPaginas.Add(location);

                }


                con.Close();
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
