using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Backend.U1_W3_D3.Protezione_e_SQL_commands_in_ADO.NET
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            ListItem liFiatPunto = new ListItem();
            liFiatPunto.Value = "30000";
            liFiatPunto.Text = "Fiat Punto";
            ddl_Auto.Items.Add(liFiatPunto);

            ListItem liFiatCentoVenti = new ListItem();
            liFiatCentoVenti.Value = "20000";
            liFiatCentoVenti.Text = "Fiat CentoVenti";
            ddl_Auto.Items.Add(liFiatCentoVenti);

            ListItem liLanciaYpsilon = new ListItem();
            liLanciaYpsilon.Value = "25000";
            liLanciaYpsilon.Text = "Lancia Ypsilon";
            ddl_Auto.Items.Add(liLanciaYpsilon);
            }
}
        protected void ddl_Auto_SelectedIndexChanged(object sender, EventArgs e)
        {
            Image imgFiatPunto = new Image();
            Image imgFiatCentoVenti = new Image();
            Image imgLanciaYpsilon = new Image();
            imgFiatPunto.ImageUrl = "img/nuova_fiat-punto.jpg";
            imgFiatCentoVenti.ImageUrl = "img/nuova_fiato-centoventi.jpg";
            imgLanciaYpsilon.ImageUrl = "img/nuova_lancia-ypsilon.jpeg";
            LabelPrezzoAuto.Font.Size = 30;

            if (ddl_Auto.SelectedItem.Text == "Fiat Punto")
            {
                imageAuto.ImageUrl = imgFiatPunto.ImageUrl;
                LabelPrezzoAuto.Text = "30000 €";
            } else if (ddl_Auto.SelectedItem.Text == "Fiat CentoVenti") {
                imageAuto.ImageUrl = imgFiatCentoVenti.ImageUrl;
                LabelPrezzoAuto.Text = "20000 €";
            }
            else if (ddl_Auto.SelectedItem.Text == "Lancia Ypsilon")
            {
                imageAuto.ImageUrl = imgLanciaYpsilon.ImageUrl;
                LabelPrezzoAuto.Text = "25000 €";
            }
        }
        protected void CalcolaPreventivo_Click(object sender, EventArgs e)
        {
            int autoSelezionata = int.Parse(ddl_Auto.SelectedItem.Value);
            int optional = 0;
            for (int i = 0; i < cbl_Optional.Items.Count; i++)
            {
                if (cbl_Optional.Items[i].Selected) { 
                    optional += int.Parse(cbl_Optional.Items[i].Value);
                }
            }
            int garanzia = int.Parse(ddl_AnniGaranzia.SelectedItem.Value);
            LabelTotaleModello.Text = autoSelezionata.ToString("c2");
            LabelTotaleOptional.Text = optional.ToString("c2");
            LabelTotaleGaranzia.Text = garanzia.ToString("c2");
            LabelTotaleComplessivo.Text = (autoSelezionata + optional + garanzia).ToString("c2");
        }
    }
}