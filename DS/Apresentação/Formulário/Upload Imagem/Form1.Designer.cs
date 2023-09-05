namespace Upload_Imagem
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.picLogo = new System.Windows.Forms.PictureBox();
            this.btnCarregar = new System.Windows.Forms.Button();
            this.btnLimpar = new System.Windows.Forms.Button();
            this.ofdLogo = new System.Windows.Forms.OpenFileDialog();
            this.btnSair = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtTC = new System.Windows.Forms.TextBox();
            this.txtTR = new System.Windows.Forms.TextBox();
            this.txtCpf = new System.Windows.Forms.TextBox();
            this.txtRg = new System.Windows.Forms.TextBox();
            this.txtN = new System.Windows.Forms.TextBox();
            this.txtC = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.gpbSexo = new System.Windows.Forms.GroupBox();
            this.btnFem = new System.Windows.Forms.RadioButton();
            this.btnMasc = new System.Windows.Forms.RadioButton();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.txtE = new System.Windows.Forms.TextBox();
            this.label13 = new System.Windows.Forms.Label();
            this.txtCity = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.txtL = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtB = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtNum = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtCpf2 = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.chkTwitter = new System.Windows.Forms.CheckBox();
            this.chkFace = new System.Windows.Forms.CheckBox();
            this.chkEmail = new System.Windows.Forms.CheckBox();
            this.txtTwitter = new System.Windows.Forms.TextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.label17 = new System.Windows.Forms.Label();
            this.txtEmail = new System.Windows.Forms.TextBox();
            this.label16 = new System.Windows.Forms.Label();
            this.txtFacebook = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnL = new System.Windows.Forms.Button();
            this.btnE = new System.Windows.Forms.Button();
            this.btnC = new System.Windows.Forms.Button();
            this.btnAlt = new System.Windows.Forms.Button();
            this.btnI = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.gpbSexo.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // picLogo
            // 
            this.picLogo.AccessibleRole = System.Windows.Forms.AccessibleRole.ScrollBar;
            this.picLogo.BackColor = System.Drawing.SystemColors.GradientInactiveCaption;
            this.picLogo.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.picLogo.Location = new System.Drawing.Point(584, 20);
            this.picLogo.Name = "picLogo";
            this.picLogo.Size = new System.Drawing.Size(130, 140);
            this.picLogo.SizeMode = System.Windows.Forms.PictureBoxSizeMode.AutoSize;
            this.picLogo.TabIndex = 1;
            this.picLogo.TabStop = false;
            this.picLogo.Tag = "tt";
            this.picLogo.Click += new System.EventHandler(this.picLogo_Click);
            // 
            // btnCarregar
            // 
            this.btnCarregar.BackColor = System.Drawing.Color.LightCyan;
            this.btnCarregar.Location = new System.Drawing.Point(730, 37);
            this.btnCarregar.Name = "btnCarregar";
            this.btnCarregar.Size = new System.Drawing.Size(96, 30);
            this.btnCarregar.TabIndex = 2;
            this.btnCarregar.Text = "Carregar";
            this.btnCarregar.UseVisualStyleBackColor = false;
            this.btnCarregar.Click += new System.EventHandler(this.btnCarregar_Click);
            // 
            // btnLimpar
            // 
            this.btnLimpar.BackColor = System.Drawing.Color.LightCyan;
            this.btnLimpar.Location = new System.Drawing.Point(730, 121);
            this.btnLimpar.Name = "btnLimpar";
            this.btnLimpar.Size = new System.Drawing.Size(96, 30);
            this.btnLimpar.TabIndex = 3;
            this.btnLimpar.Text = "Limpar";
            this.btnLimpar.UseVisualStyleBackColor = false;
            this.btnLimpar.Click += new System.EventHandler(this.btnLimpar_Click);
            // 
            // ofdLogo
            // 
            this.ofdLogo.FileName = "openFileDialog1";
            this.ofdLogo.FileOk += new System.ComponentModel.CancelEventHandler(this.ofdLogo_FileOk);
            // 
            // btnSair
            // 
            this.btnSair.BackColor = System.Drawing.Color.LightCyan;
            this.btnSair.Location = new System.Drawing.Point(759, 482);
            this.btnSair.Name = "btnSair";
            this.btnSair.Size = new System.Drawing.Size(96, 30);
            this.btnSair.TabIndex = 4;
            this.btnSair.Text = "Sair";
            this.btnSair.UseVisualStyleBackColor = false;
            this.btnSair.Click += new System.EventHandler(this.btnSair_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtTC);
            this.groupBox1.Controls.Add(this.txtTR);
            this.groupBox1.Controls.Add(this.btnCarregar);
            this.groupBox1.Controls.Add(this.btnLimpar);
            this.groupBox1.Controls.Add(this.txtCpf);
            this.groupBox1.Controls.Add(this.txtRg);
            this.groupBox1.Controls.Add(this.txtN);
            this.groupBox1.Controls.Add(this.txtC);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.gpbSexo);
            this.groupBox1.Controls.Add(this.picLogo);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(23, 42);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(832, 175);
            this.groupBox1.TabIndex = 5;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Dados Pessoais";
            // 
            // txtTC
            // 
            this.txtTC.Location = new System.Drawing.Point(423, 86);
            this.txtTC.Name = "txtTC";
            this.txtTC.Size = new System.Drawing.Size(124, 20);
            this.txtTC.TabIndex = 15;
            // 
            // txtTR
            // 
            this.txtTR.Location = new System.Drawing.Point(288, 133);
            this.txtTR.Name = "txtTR";
            this.txtTR.Size = new System.Drawing.Size(100, 20);
            this.txtTR.TabIndex = 14;
            // 
            // txtCpf
            // 
            this.txtCpf.Location = new System.Drawing.Point(229, 86);
            this.txtCpf.Name = "txtCpf";
            this.txtCpf.Size = new System.Drawing.Size(100, 20);
            this.txtCpf.TabIndex = 13;
            // 
            // txtRg
            // 
            this.txtRg.Location = new System.Drawing.Point(51, 84);
            this.txtRg.Name = "txtRg";
            this.txtRg.Size = new System.Drawing.Size(100, 20);
            this.txtRg.TabIndex = 12;
            // 
            // txtN
            // 
            this.txtN.Location = new System.Drawing.Point(51, 51);
            this.txtN.Name = "txtN";
            this.txtN.Size = new System.Drawing.Size(281, 20);
            this.txtN.TabIndex = 11;
            // 
            // txtC
            // 
            this.txtC.Location = new System.Drawing.Point(51, 19);
            this.txtC.Name = "txtC";
            this.txtC.Size = new System.Drawing.Size(67, 20);
            this.txtC.TabIndex = 10;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(354, 88);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(69, 15);
            this.label8.TabIndex = 9;
            this.label8.Text = "Tel. Celular";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(199, 138);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(83, 13);
            this.label7.TabIndex = 8;
            this.label7.Text = "Tel. Residencial";
            // 
            // gpbSexo
            // 
            this.gpbSexo.Controls.Add(this.btnFem);
            this.gpbSexo.Controls.Add(this.btnMasc);
            this.gpbSexo.Location = new System.Drawing.Point(16, 121);
            this.gpbSexo.Name = "gpbSexo";
            this.gpbSexo.Size = new System.Drawing.Size(162, 40);
            this.gpbSexo.TabIndex = 7;
            this.gpbSexo.TabStop = false;
            this.gpbSexo.Text = "Sexo";
            this.gpbSexo.Enter += new System.EventHandler(this.groupBox4_Enter);
            // 
            // btnFem
            // 
            this.btnFem.AutoSize = true;
            this.btnFem.Location = new System.Drawing.Point(86, 15);
            this.btnFem.Name = "btnFem";
            this.btnFem.Size = new System.Drawing.Size(67, 17);
            this.btnFem.TabIndex = 1;
            this.btnFem.TabStop = true;
            this.btnFem.Text = "Feminino";
            this.btnFem.UseVisualStyleBackColor = true;
            // 
            // btnMasc
            // 
            this.btnMasc.AutoSize = true;
            this.btnMasc.Location = new System.Drawing.Point(7, 15);
            this.btnMasc.Name = "btnMasc";
            this.btnMasc.Size = new System.Drawing.Size(73, 17);
            this.btnMasc.TabIndex = 0;
            this.btnMasc.TabStop = true;
            this.btnMasc.Text = "Masculino";
            this.btnMasc.UseVisualStyleBackColor = true;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(199, 89);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(27, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "CPF";
            this.label4.Click += new System.EventHandler(this.label4_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(24, 88);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(23, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "RG";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(15, 54);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(35, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Nome";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 23);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(40, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Código";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.txtE);
            this.groupBox2.Controls.Add(this.label13);
            this.groupBox2.Controls.Add(this.txtCity);
            this.groupBox2.Controls.Add(this.label12);
            this.groupBox2.Controls.Add(this.txtL);
            this.groupBox2.Controls.Add(this.label11);
            this.groupBox2.Controls.Add(this.txtB);
            this.groupBox2.Controls.Add(this.label10);
            this.groupBox2.Controls.Add(this.txtNum);
            this.groupBox2.Controls.Add(this.label9);
            this.groupBox2.Controls.Add(this.txtCpf2);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Location = new System.Drawing.Point(22, 223);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(833, 93);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Endereço";
            // 
            // txtE
            // 
            this.txtE.Location = new System.Drawing.Point(498, 62);
            this.txtE.Name = "txtE";
            this.txtE.Size = new System.Drawing.Size(73, 20);
            this.txtE.TabIndex = 27;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(442, 64);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(52, 17);
            this.label13.TabIndex = 26;
            this.label13.Text = "Estado";
            // 
            // txtCity
            // 
            this.txtCity.Location = new System.Drawing.Point(498, 29);
            this.txtCity.Name = "txtCity";
            this.txtCity.Size = new System.Drawing.Size(146, 20);
            this.txtCity.TabIndex = 25;
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(443, 31);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(52, 17);
            this.label12.TabIndex = 24;
            this.label12.Text = "Cidade";
            // 
            // txtL
            // 
            this.txtL.Location = new System.Drawing.Point(315, 29);
            this.txtL.Name = "txtL";
            this.txtL.Size = new System.Drawing.Size(100, 20);
            this.txtL.TabIndex = 23;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(227, 32);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(82, 17);
            this.label11.TabIndex = 22;
            this.label11.Text = "Logradouro";
            // 
            // txtB
            // 
            this.txtB.Location = new System.Drawing.Point(292, 59);
            this.txtB.Name = "txtB";
            this.txtB.Size = new System.Drawing.Size(100, 20);
            this.txtB.TabIndex = 21;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(240, 62);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(46, 17);
            this.label10.TabIndex = 20;
            this.label10.Text = "Bairro";
            // 
            // txtNum
            // 
            this.txtNum.Location = new System.Drawing.Point(86, 57);
            this.txtNum.Name = "txtNum";
            this.txtNum.Size = new System.Drawing.Size(100, 20);
            this.txtNum.TabIndex = 19;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(22, 58);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(58, 17);
            this.label9.TabIndex = 18;
            this.label9.Text = "Número";
            // 
            // txtCpf2
            // 
            this.txtCpf2.Location = new System.Drawing.Point(64, 30);
            this.txtCpf2.Name = "txtCpf2";
            this.txtCpf2.Size = new System.Drawing.Size(100, 20);
            this.txtCpf2.TabIndex = 17;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(24, 32);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(34, 17);
            this.label6.TabIndex = 16;
            this.label6.Text = "CPF";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.chkTwitter);
            this.groupBox3.Controls.Add(this.chkFace);
            this.groupBox3.Controls.Add(this.chkEmail);
            this.groupBox3.Controls.Add(this.txtTwitter);
            this.groupBox3.Controls.Add(this.label14);
            this.groupBox3.Controls.Add(this.label17);
            this.groupBox3.Controls.Add(this.txtEmail);
            this.groupBox3.Controls.Add(this.label16);
            this.groupBox3.Controls.Add(this.txtFacebook);
            this.groupBox3.Location = new System.Drawing.Point(23, 322);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(832, 145);
            this.groupBox3.TabIndex = 6;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Dados Extras";
            // 
            // chkTwitter
            // 
            this.chkTwitter.AutoSize = true;
            this.chkTwitter.Location = new System.Drawing.Point(660, 98);
            this.chkTwitter.Name = "chkTwitter";
            this.chkTwitter.Size = new System.Drawing.Size(58, 17);
            this.chkTwitter.TabIndex = 38;
            this.chkTwitter.Text = "Twitter";
            this.chkTwitter.UseVisualStyleBackColor = true;
            // 
            // chkFace
            // 
            this.chkFace.AutoSize = true;
            this.chkFace.Location = new System.Drawing.Point(660, 68);
            this.chkFace.Name = "chkFace";
            this.chkFace.Size = new System.Drawing.Size(74, 17);
            this.chkFace.TabIndex = 37;
            this.chkFace.Text = "Facebook";
            this.chkFace.UseVisualStyleBackColor = true;
            // 
            // chkEmail
            // 
            this.chkEmail.AutoSize = true;
            this.chkEmail.Location = new System.Drawing.Point(660, 37);
            this.chkEmail.Name = "chkEmail";
            this.chkEmail.Size = new System.Drawing.Size(55, 17);
            this.chkEmail.TabIndex = 36;
            this.chkEmail.Text = "E-Mail";
            this.chkEmail.UseVisualStyleBackColor = true;
            // 
            // txtTwitter
            // 
            this.txtTwitter.Location = new System.Drawing.Point(79, 98);
            this.txtTwitter.Name = "txtTwitter";
            this.txtTwitter.Size = new System.Drawing.Size(528, 20);
            this.txtTwitter.TabIndex = 35;
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.Location = new System.Drawing.Point(24, 99);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(54, 17);
            this.label14.TabIndex = 34;
            this.label14.Text = "Twitter:";
            this.label14.Click += new System.EventHandler(this.label14_Click);
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label17.Location = new System.Drawing.Point(25, 36);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(46, 17);
            this.label17.TabIndex = 28;
            this.label17.Text = "Email:";
            // 
            // txtEmail
            // 
            this.txtEmail.Location = new System.Drawing.Point(73, 35);
            this.txtEmail.Name = "txtEmail";
            this.txtEmail.Size = new System.Drawing.Size(534, 20);
            this.txtEmail.TabIndex = 29;
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label16.Location = new System.Drawing.Point(25, 69);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(74, 17);
            this.label16.TabIndex = 30;
            this.label16.Text = "Facebook:";
            // 
            // txtFacebook
            // 
            this.txtFacebook.Location = new System.Drawing.Point(103, 68);
            this.txtFacebook.Name = "txtFacebook";
            this.txtFacebook.Size = new System.Drawing.Size(504, 20);
            this.txtFacebook.TabIndex = 31;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Palatino Linotype", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.label5.Location = new System.Drawing.Point(316, 8);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(245, 36);
            this.label5.TabIndex = 7;
            this.label5.Text = "Cadastro de Cliente";
            // 
            // btnL
            // 
            this.btnL.BackColor = System.Drawing.Color.LightCyan;
            this.btnL.Location = new System.Drawing.Point(607, 482);
            this.btnL.Name = "btnL";
            this.btnL.Size = new System.Drawing.Size(96, 30);
            this.btnL.TabIndex = 8;
            this.btnL.Text = "Limpar";
            this.btnL.UseVisualStyleBackColor = false;
            this.btnL.Click += new System.EventHandler(this.btnL_Click);
            // 
            // btnE
            // 
            this.btnE.BackColor = System.Drawing.Color.LightCyan;
            this.btnE.Location = new System.Drawing.Point(467, 482);
            this.btnE.Name = "btnE";
            this.btnE.Size = new System.Drawing.Size(96, 30);
            this.btnE.TabIndex = 9;
            this.btnE.Text = "Excluir";
            this.btnE.UseVisualStyleBackColor = false;
            this.btnE.Click += new System.EventHandler(this.btnE_Click);
            // 
            // btnC
            // 
            this.btnC.BackColor = System.Drawing.Color.LightCyan;
            this.btnC.Location = new System.Drawing.Point(322, 482);
            this.btnC.Name = "btnC";
            this.btnC.Size = new System.Drawing.Size(96, 30);
            this.btnC.TabIndex = 10;
            this.btnC.Text = "Consultar";
            this.btnC.UseVisualStyleBackColor = false;
            // 
            // btnAlt
            // 
            this.btnAlt.BackColor = System.Drawing.Color.LightCyan;
            this.btnAlt.Location = new System.Drawing.Point(176, 482);
            this.btnAlt.Name = "btnAlt";
            this.btnAlt.Size = new System.Drawing.Size(96, 30);
            this.btnAlt.TabIndex = 11;
            this.btnAlt.Text = "Alterar";
            this.btnAlt.UseVisualStyleBackColor = false;
            // 
            // btnI
            // 
            this.btnI.BackColor = System.Drawing.Color.LightCyan;
            this.btnI.Location = new System.Drawing.Point(22, 482);
            this.btnI.Name = "btnI";
            this.btnI.Size = new System.Drawing.Size(96, 30);
            this.btnI.TabIndex = 12;
            this.btnI.Text = "Incluir";
            this.btnI.UseVisualStyleBackColor = false;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoValidate = System.Windows.Forms.AutoValidate.EnableAllowFocusChange;
            this.BackColor = System.Drawing.Color.SeaShell;
            this.ClientSize = new System.Drawing.Size(895, 539);
            this.Controls.Add(this.btnI);
            this.Controls.Add(this.btnAlt);
            this.Controls.Add(this.btnC);
            this.Controls.Add(this.btnE);
            this.Controls.Add(this.btnL);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.btnSair);
            this.ForeColor = System.Drawing.Color.CadetBlue;
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.picLogo)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.gpbSexo.ResumeLayout(false);
            this.gpbSexo.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox picLogo;
        private System.Windows.Forms.Button btnCarregar;
        private System.Windows.Forms.Button btnLimpar;
        private System.Windows.Forms.OpenFileDialog ofdLogo;
        private System.Windows.Forms.Button btnSair;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtN;
        private System.Windows.Forms.TextBox txtC;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.GroupBox gpbSexo;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtCpf;
        private System.Windows.Forms.TextBox txtRg;
        private System.Windows.Forms.RadioButton btnFem;
        private System.Windows.Forms.RadioButton btnMasc;
        private System.Windows.Forms.TextBox txtTR;
        private System.Windows.Forms.TextBox txtTC;
        private System.Windows.Forms.TextBox txtE;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.TextBox txtCity;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtL;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtB;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtNum;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtCpf2;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtTwitter;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.TextBox txtEmail;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.TextBox txtFacebook;
        private System.Windows.Forms.CheckBox chkTwitter;
        private System.Windows.Forms.CheckBox chkFace;
        private System.Windows.Forms.CheckBox chkEmail;
        private System.Windows.Forms.Button btnL;
        private System.Windows.Forms.Button btnE;
        private System.Windows.Forms.Button btnC;
        private System.Windows.Forms.Button btnAlt;
        private System.Windows.Forms.Button btnI;
    }
}

