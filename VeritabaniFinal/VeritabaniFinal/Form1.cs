using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;
//kullandığımız kütüphaneler
using Newtonsoft.Json;


namespace VeritabaniFinal
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            DovizGoster();
        }

        SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-SJCLO2R\\SQLEXPRESS;Initial Catalog=VizeSinavi;Integrated Security=True");
        int ID;
        decimal dolar;
        WebClient c = new WebClient(); //Json API'lerin yüklenmesini sağlayan sınıfımız

        //okunan JSON verilerin yüklendiği sınıfımız
        public class jsonData
        {
            public string buying { get; set; }
            public string selling { get; set; }

            public string latest { get; set; }

            public string change_rate { get; set; }
        }

       /* public void DovizGoster()
        {
            string doviz = c.DownloadString("https://kur.doviz.com/serbest-piyasa/amerikan-dolari");
            JArray dovizDizi = JArray.Parse(doviz);
            jsonData dolarNesne = JsonConvert.DeserializeObject<jsonData>(dovizDizi[0].ToString());
            jsonData euroNesne = JsonConvert.DeserializeObject<jsonData>(dovizDizi[1].ToString());
            lblDolar.Text = Math.Round(Decimal.Parse(dolarNesne.buying.Replace(".", ",")), 4).ToString();
            //lblDolarOran.Text = "%" + Math.Round(Decimal.Parse(dolarNesne.change_rate.Replace(".", ",")), 4).ToString();
            decimal dolarOran = Math.Round(Decimal.Parse(dolarNesne.change_rate.Replace(".", ",")), 4);
         

            //decimal euroOran = Math.Round(Decimal.Parse(euroNesne.change_rate.Replace(".", ",")), 4);
          
           // lblEuro.Text = Math.Round(Decimal.Parse(euroNesne.buying.Replace(".", ",")), 4).ToString();
           // lblEuroOran.Text = "%" + Math.Round(Decimal.Parse(euroNesne.change_rate.Replace(".", ",")), 4).ToString();
        }*/

        public void DovizGoster()
       {
           String bugun = "http://www.tcmb.gov.tr/kurlar/today.xml";
           var xmldoc = new XmlDocument();

           xmldoc.Load(bugun);
           string USD = xmldoc.SelectSingleNode("Tarih_Date/Currency [@Kod='USD']/BanknoteSelling").InnerXml;
           lblDolar.Text = string.Format(USD);
           dolar = Convert.ToDecimal(lblDolar.Text);
           dolar = dolar / 10000;


           string EURO = xmldoc.SelectSingleNode("Tarih_Date/Currency[@Kod='EUR']/BanknoteBuying").InnerXml;
           lblEuro.Text = string.Format(EURO);

           string POUND = xmldoc.SelectSingleNode("Tarih_Date/Currency[@Kod='GBP']/BanknoteBuying").InnerXml;
           lblGBP.Text = string.Format(POUND);

       }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: Bu kod satırı 'vizeSinaviDataSet1.Kategoriler' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.kategorilerTableAdapter.Fill(this.vizeSinaviDataSet1.Kategoriler);
            // TODO: Bu kod satırı 'vizeSinaviDataSet.Urunler' tablosuna veri yükler. Bunu gerektiği şekilde taşıyabilir, veya kaldırabilirsiniz.
            this.urunlerTableAdapter.Fill(this.vizeSinaviDataSet.Urunler);

        }
      
        public void urunlerTblListele()
        {
            
            

            baglanti.Open();

            //String Sorgu = "DECLARE @d Decimal(8,2) SET @d=" + dolar + " select UrunId,UrunAd,UrunAdet,KategoriAd,UrunMarka,UrunFiyat*@d as fiyat from Urunler inner join Kategoriler on Urunler.UrunKategori = Kategoriler.KategoriId "; 
            String Sorgu= " Select UrunId,UrunAd,UrunAdet,KategoriAd,UrunMarka,UrunFiyat as fiyat from Urunler inner join Kategoriler on Urunler.UrunKategori = Kategoriler.KategoriId ";
            SqlDataAdapter listele = new SqlDataAdapter(Sorgu, baglanti);
            DataTable ds = new DataTable();
            listele.Fill(ds);
            baglanti.Close();
            dataGridView1.DataSource = ds;
           
        }

        public void satislarTblListele()
        {
            
            baglanti.Open();
            String Sorgu = "select SatisId,MusteriAd+' '+MusteriSoyad as musteriAdıSoyadı, UrunAd,Fiyat ,PersonelName as KasiyerAdı from Satislar inner Join Urunler on Satislar.Urun = Urunler.UrunId inner join Musteriler on Satislar.Musteri = Musteriler.MusteriId inner join Personel on Satislar.Personel = Personel.PersonelId";
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
                kayitEkle.Parameters.AddWithValue("@p5", Convert.ToDecimal(textBox4.Text));

                kayitEkle.ExecuteNonQuery();
                baglanti.Close();
                MessageBox.Show("Record inserted succesfully");
                urunlerTblListele();
                clear();

            }
           
          
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            baglanti.Open();
            SqlCommand komutSil = new SqlCommand("delete from Urunler where UrunId=" + ID+"", baglanti);
           
            komutSil.ExecuteNonQuery();            
            baglanti.Close();
            urunlerTblListele();
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
            urunlerTblListele();
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
            urunlerTblListele();
            label1.Text = "URUNLER";
                      
            
        }

        private void button1_Click(object sender, EventArgs e)//SEARCH BUTTON
        {
            //urünler tablosunda arama yapar
            String sorgu = "select * from  Urunler  where UrunAd like '%"+ textBox5.Text+"%'";
            
            SqlDataAdapter komutArama = new SqlDataAdapter(sorgu, baglanti);

            DataSet ds = new DataSet();
            komutArama.Fill(ds);

            dataGridView1.DataSource = ds.Tables[0];
            

           
            
        }

        private void btnSatislar_Click(object sender, EventArgs e)
        {
            satislarTblListele();
            label1.Text = "SATIŞLAR";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //müsteri formuna geçiş
            customerTransaction gecis = new customerTransaction();
            gecis.Show();
        }

       
    }
}
