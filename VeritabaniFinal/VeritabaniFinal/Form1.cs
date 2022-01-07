using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VeritabaniFinal
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-SJCLO2R\\SQLEXPRESS;Initial Catalog=VizeSinavi;Integrated Security=True");
        int ID;
        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: Bu kod satırı 'vizeSinaviDataSet1.Kategoriler' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.kategorilerTableAdapter.Fill(this.vizeSinaviDataSet1.Kategoriler);
            // TODO: Bu kod satırı 'vizeSinaviDataSet.Urunler' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.urunlerTableAdapter.Fill(this.vizeSinaviDataSet.Urunler);

        }
        public void listele()
        {
            baglanti.Open(); 
             String Sorgu = "select UrunId,UrunAd,UrunAdet,KategoriAd,UrunMarka,UrunFiyat from Urunler inner join Kategoriler on Urunler.UrunKategori = Kategoriler.KategoriId "; 
            SqlDataAdapter listele = new SqlDataAdapter(Sorgu, baglanti);
            DataTable ds = new DataTable();
            listele.Fill(ds);
            dataGridView1.DataSource = ds;
            baglanti.Close();
        }
        public void clear()
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
            textBox4.Text = "";

        }
        private void label7_Click(object sender, EventArgs e)
        {
        }

        private void btnKaydet_Click(object sender, EventArgs e)
        {
            baglanti.Open();

            if (textBox1.Text == "" || textBox2.Text == "" || textBox3.Text == "" || textBox3.Text == "" || textBox4.Text == "")
            {
                MessageBox.Show(" Please Fill in the Blanks");
            }
            else
            { 
                SqlCommand kayitEkle = new SqlCommand("insert into Urunler(UrunAd,UrunAdet,UrunKategori,UrunMarka,UrunFiyat)  values (@p1,@p2,@p3,@p4,@p5) ", baglanti);
                kayitEkle.Parameters.AddWithValue("@p1", textBox1.Text);
                kayitEkle.Parameters.AddWithValue("@p2", Convert.ToInt32(textBox2.Text) );
                kayitEkle.Parameters.AddWithValue("@p3", Convert.ToByte(comboBox1.SelectedIndex+1));
                kayitEkle.Parameters.AddWithValue("@p4", textBox3.Text);
                kayitEkle.Parameters.AddWithValue("@p5", Convert.ToInt32(textBox4.Text));

                kayitEkle.ExecuteNonQuery();
                baglanti.Close();
                MessageBox.Show("Record inserted succesfully");
                listele();
                clear();

            }
           
          
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komutSil = new SqlCommand("delete from Urunler where UrunId=" + ID+"", baglanti);
           
            komutSil.ExecuteNonQuery();            
            baglanti.Close();
            listele();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {   
            baglanti.Open();
            SqlCommand komutUpdate = new SqlCommand("Update Urunler set UrunAd=@p1,UrunAdet=@p2,UrunKategori=@p3,UrunMarka=@p4,UrunFiyat=@p5  where UrunId=" + ID + "", baglanti);
            komutUpdate.Parameters.AddWithValue("@p1", textBox1.Text);
            komutUpdate.Parameters.AddWithValue("@p2", Convert.ToInt32(textBox2.Text));
            komutUpdate.Parameters.AddWithValue("@p3", Convert.ToByte(comboBox1.SelectedIndex + 1));
            komutUpdate.Parameters.AddWithValue("@p4", textBox3.Text);
            komutUpdate.Parameters.AddWithValue("@p5", decimal.Parse(textBox4.Text));

            komutUpdate.ExecuteNonQuery();            
            baglanti.Close();
           
            MessageBox.Show("Record Updated succesfully");
            listele();
            clear();
        }

        private void dataGridView1_CellDoubleClick_1(object sender, DataGridViewCellEventArgs e)
        {
            ID = Convert.ToInt16(dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString());
            textBox1.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
            textBox2.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
            comboBox1.SelectedValue = dataGridView1.Rows[e.RowIndex].Cells[3].Value.ToString();
            textBox3.Text = dataGridView1.Rows[e.RowIndex].Cells[4].Value.ToString();
            textBox4.Text = dataGridView1.Rows[e.RowIndex].Cells[5].Value.ToString();
        }

        private void btnListele_Click(object sender, EventArgs e)
        {
            listele();
        }

        private void button1_Click(object sender, EventArgs e)//SEARCH BUTTON
        {            
            String sorgu = "select * from  Urunler  where UrunAd like '%"+ textBox5.Text+"%'";
            
            SqlDataAdapter komutArama = new SqlDataAdapter(sorgu, baglanti);

            DataSet ds = new DataSet();
            komutArama.Fill(ds);

            dataGridView1.DataSource = ds.Tables[0];
            

           
            
        }
    }
}
