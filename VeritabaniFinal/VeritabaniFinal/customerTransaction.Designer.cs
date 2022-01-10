namespace VeritabaniFinal
{
    partial class customerTransaction
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.btnShowCustomers = new System.Windows.Forms.Button();
            this.btnUpdate = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.btnDelete = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            this.btnSearch = new System.Windows.Forms.Button();
            this.textBox5 = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(253, 110);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 51;
            this.dataGridView1.RowTemplate.Height = 24;
            this.dataGridView1.Size = new System.Drawing.Size(801, 323);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.CellDoubleClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellDoubleClick);
            // 
            // btnShowCustomers
            // 
            this.btnShowCustomers.BackgroundImage = global::VeritabaniFinal.Properties.Resources.es;
            this.btnShowCustomers.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnShowCustomers.Location = new System.Drawing.Point(16, 109);
            this.btnShowCustomers.Name = "btnShowCustomers";
            this.btnShowCustomers.Size = new System.Drawing.Size(158, 58);
            this.btnShowCustomers.TabIndex = 1;
            this.btnShowCustomers.Text = "SHOW CUSTOMERS";
            this.btnShowCustomers.UseVisualStyleBackColor = true;
            this.btnShowCustomers.Click += new System.EventHandler(this.btnShowCustomers_Click);
            // 
            // btnUpdate
            // 
            this.btnUpdate.BackgroundImage = global::VeritabaniFinal.Properties.Resources.es;
            this.btnUpdate.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnUpdate.Location = new System.Drawing.Point(16, 211);
            this.btnUpdate.Name = "btnUpdate";
            this.btnUpdate.Size = new System.Drawing.Size(158, 58);
            this.btnUpdate.TabIndex = 2;
            this.btnUpdate.Text = "UPDATE";
            this.btnUpdate.UseVisualStyleBackColor = true;
            this.btnUpdate.Click += new System.EventHandler(this.btnUpdate_Click);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.Lime;
            this.button3.Location = new System.Drawing.Point(628, 157);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(158, 58);
            this.button3.TabIndex = 3;
            this.button3.Text = "INSERT";
            this.button3.UseVisualStyleBackColor = false;
            this.button3.Click += new System.EventHandler(this.button3_Click);
            // 
            // btnDelete
            // 
            this.btnDelete.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnDelete.Image = global::VeritabaniFinal.Properties.Resources.es;
            this.btnDelete.Location = new System.Drawing.Point(16, 317);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(158, 58);
            this.btnDelete.TabIndex = 4;
            this.btnDelete.Text = "DELETE";
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Controls.Add(this.btnShowCustomers);
            this.panel1.Controls.Add(this.btnDelete);
            this.panel1.Controls.Add(this.btnUpdate);
            this.panel1.Location = new System.Drawing.Point(12, 24);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(200, 662);
            this.panel1.TabIndex = 5;
            // 
            // panel2
            // 
            this.panel2.BackgroundImage = global::VeritabaniFinal.Properties.Resources.s;
            this.panel2.Controls.Add(this.label6);
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(200, 80);
            this.panel2.TabIndex = 2;
            // 
            // panel3
            // 
            this.panel3.BackgroundImage = global::VeritabaniFinal.Properties.Resources.s;
            this.panel3.Controls.Add(this.label5);
            this.panel3.Controls.Add(this.btnSearch);
            this.panel3.Controls.Add(this.textBox5);
            this.panel3.Location = new System.Drawing.Point(253, 24);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(801, 80);
            this.panel3.TabIndex = 6;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(162)));
            this.label5.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label5.Location = new System.Drawing.Point(21, 29);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(142, 17);
            this.label5.TabIndex = 15;
            this.label5.Text = "Search Customer :";
            // 
            // btnSearch
            // 
            this.btnSearch.BackColor = System.Drawing.Color.Red;
            this.btnSearch.Location = new System.Drawing.Point(608, 20);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(123, 34);
            this.btnSearch.TabIndex = 14;
            this.btnSearch.Text = "SEARCH";
            this.btnSearch.UseVisualStyleBackColor = false;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // textBox5
            // 
            this.textBox5.Location = new System.Drawing.Point(169, 26);
            this.textBox5.Name = "textBox5";
            this.textBox5.Size = new System.Drawing.Size(407, 22);
            this.textBox5.TabIndex = 13;
            // 
            // groupBox1
            // 
            this.groupBox1.BackgroundImage = global::VeritabaniFinal.Properties.Resources.s;
            this.groupBox1.Controls.Add(this.textBox4);
            this.groupBox1.Controls.Add(this.textBox3);
            this.groupBox1.Controls.Add(this.textBox2);
            this.groupBox1.Controls.Add(this.textBox1);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.button3);
            this.groupBox1.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.groupBox1.Location = new System.Drawing.Point(253, 465);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(801, 221);
            this.groupBox1.TabIndex = 7;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Customer Transaction";
            // 
            // textBox4
            // 
            this.textBox4.Location = new System.Drawing.Point(439, 98);
            this.textBox4.Name = "textBox4";
            this.textBox4.Size = new System.Drawing.Size(155, 22);
            this.textBox4.TabIndex = 11;
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(439, 54);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(155, 22);
            this.textBox3.TabIndex = 10;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(145, 103);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(155, 22);
            this.textBox2.TabIndex = 9;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(145, 54);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(155, 22);
            this.textBox1.TabIndex = 8;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Location = new System.Drawing.Point(321, 103);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(103, 17);
            this.label4.TabIndex = 7;
            this.label4.Text = "Musteri Puan : ";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Location = new System.Drawing.Point(321, 54);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(112, 17);
            this.label3.TabIndex = 6;
            this.label3.Text = "Musteri Bakiye : ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Location = new System.Drawing.Point(27, 103);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(110, 17);
            this.label2.TabIndex = 5;
            this.label2.Text = "Musteri Soyad : ";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Location = new System.Drawing.Point(27, 54);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(87, 17);
            this.label1.TabIndex = 4;
            this.label1.Text = "Musteri Ad : ";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Stencil Std", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.SystemColors.ControlText;
            this.label6.Location = new System.Drawing.Point(19, 16);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(153, 32);
            this.label6.TabIndex = 1;
            this.label6.Text = "Customer";
            // 
            // customerTransaction
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.ClientSize = new System.Drawing.Size(1117, 698);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dataGridView1);
            this.Name = "customerTransaction";
            this.Text = "customerTransaction";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button btnShowCustomers;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox textBox4;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox textBox5;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Label label6;
    }
}