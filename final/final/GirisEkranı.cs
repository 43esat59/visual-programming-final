using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Data.Sql;
using System.Data.SqlClient;

namespace final
{
    public partial class GirisEkranı : Form
    {
        SqlConnection con;
        SqlDataReader dr;
        SqlCommand com;

        public GirisEkranı()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string user = textBox1.Text;
            string password = textBox2.Text;
            con = new SqlConnection("Data Source=DESKTOP-P0MBA1I\\POSTAR;Initial Catalog=Ornek;Integrated Security=True");
            com = new SqlCommand();
            con.Open();
            com.Connection = con;
            com.CommandText = "select *from Kullanici_Bilgi where kullanici_adi='" + textBox1.Text +
                "'And sifre ='" + textBox2.Text + "'";
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                MessageBox.Show("Giriş Başarılı");
                Form1 gecis = new Form1();
                gecis.Show();
                this.Hide();
            }
            else
            {
                MessageBox.Show("Hatalı Kullanıcı Adı veya Sifre");
            }
            con.Close();
        }
    }
}
