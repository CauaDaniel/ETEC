using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Upload_Imagem
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void toolStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void btnCarregar_Click(object sender, EventArgs e)
        {
            //Inicialização do campo FileName
            ofdLogo.FileName = "";

            //Titulo da caixa de dialogo
            ofdLogo.Title = "Selecionar uma foto";

            //Define os tipos de imagem
            ofdLogo.Filter = "JPEG|*.JPG|PNG|*.png";

            //Através do ShowDiaLogo(), chamamos a caixa de dialogo
            ofdLogo.ShowDialog();
        }

        private void btnLimpar_Click(object sender, EventArgs e)
        {
            picLogo.Image = null;
        }

        private void ofdLogo_FileOk(object sender, CancelEventArgs e)
        {
            picLogo.Image = Image.FromFile(ofdLogo.FileName);
            
        }

        private void btnSair_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void groupBox4_Enter(object sender, EventArgs e)
        {

        }

        private void label14_Click(object sender, EventArgs e)
        {

        }

        private void btnL_Click(object sender, EventArgs e)
        {
            txtC.Text = null;
            txtN.Text = null;
            txtTR.Text = null;
            txtTC.Text = null;
            txtCpf.Text = null;
            txtRg.Text = null;
            txtCity.Text = null;
            txtE.Text = null;
            txtB.Text = null;
            txtEmail.Text = null;
            txtFacebook.Text = null;
            txtTwitter.Text = null;
            txtNum.Text = null;
            txtL.Text = null;
            txtCpf2.Text = null;
            picLogo.Image = null;
            chkEmail.Checked = false;
            chkFace.Checked = false;
            chkTwitter.Checked = false;
            btnMasc.Checked = false;
            btnFem.Checked = false;
            
        }

        private void picLogo_Click(object sender, EventArgs e)
        {

        }

        private void btnE_Click(object sender, EventArgs e)
        {

        }
    }
}


