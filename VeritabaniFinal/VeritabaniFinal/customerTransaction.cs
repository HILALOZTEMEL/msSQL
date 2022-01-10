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
    public partial class customerTransaction : Form
    {
        public customerTransaction()
        {
            InitializeComponent();
        }
        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-SJCLO2R\\SQLEXPRESS;Initial Catalog=VizeSinavi;Integrated Security=True");
        int ID;
        public void listele()
        {
            baglanti.Open();
            String Sorgu = "select MusteriId,MusteriAd,MusteriSoyad,MusteriBakiye,MusteriPuan from Musteriler ";
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
        private void btnShowCustomers_Click(object sender, EventArgs e)
        {
            listele();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //Kaydet
            baglanti.Open();

            if (textBox1.Text == "" || textBox2.Text == "" || textBox3.Text == "" || textBox3.Text == "" || textBox4.Text == "")
            {
                MessageBox.Show(" Please Fill in the Blanks");
            }
            else
            {
                SqlCommand kayitEkle = new SqlCommand("insert into Musteriler(MusteriAd,MusteriSoyad,MusteriBakiye,MusteriPuan)  values (@p1,@p2,@p3,@p4) ", baglanti);
                kayitEkle.Parameters.AddWithValue("@p1", textBox1.Text);
                kayitEkle.Parameters.AddWithValue("@p2", textBox2.Text);
                kayitEkle.Parameters.AddWithValue("@p3", Convert.ToDecimal(textBox3.Text));
                kayitEkle.Parameters.AddWithValue("@p4", Convert.ToInt16(textBox4.Text));

                kayitEkle.ExecuteNonQuery();
                baglanti.Close();
                MessageBox.Show("Record inserted succesfully");
                listele();
                clear();

            }
        }

        private void dataGridView1_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            ID = Convert.ToInt16(dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString());
            textBox1.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
            textBox2.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
            textBox3.Text = dataGridView1.Rows[e.RowIndex].Cells[3].Value.ToString();
            textBox4.Text = dataGridView1.Rows[e.RowIndex].Cells[4].Value.ToString();
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            baglanti.Open(); 
            SqlCommand komutUpdate = new SqlCommand("Update Musteriler set MusteriAd=@p1,MusteriSoyad=@p2,MusteriBakiye=@p3,MusteriPuan=@p4  where MusteriId=" + ID + "", baglanti);
            komutUpdate.Parameters.AddWithValue("@p1", textBox1.Text);
            komutUpdate.Parameters.AddWithValue("@p2", textBox2.Text);
            komutUpdate.Parameters.AddWithValue("@p3", Convert.ToDecimal(textBox3.Text));
            komutUpdate.Parameters.AddWithValue("@p4", Convert.ToInt16(textBox4.Text));

            komutUpdate.ExecuteNonQuery();
            baglanti.Close();

            MessageBox.Show("Record Updated succesfully");
            listele();
            clear();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komutSil = new SqlCommand("delete from Musteriler where  MusteriId=" + ID + "", baglanti);

            komutSil.ExecuteNonQuery();
            baglanti.Close();
            listele();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            String sorgu = "select * from  Musteriler  where MusteriId like '%" + textBox5.Text + "%'";

            SqlDataAdapter komutArama = new SqlDataAdapter(sorgu, baglanti);

            DataSet ds = new DataSet();
            komutArama.Fill(ds);

            dataGridView1.DataSource = ds.Tables[0];
        }
    }
}
