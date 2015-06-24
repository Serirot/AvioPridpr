using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;


namespace AvioPridpr
{
    public partial class Form1 : Form
    {
        string connectionDB = "Data Source=localhost;Initial Catalog=АвиаУчет;Integrated Security=True;Pooling=False";

        public Form1()
        {
            InitializeComponent();
          
            
        }
        
        private void button6_Click(object sender, EventArgs e)
        {
            Create_Othet Otchet_button6 = new Create_Othet("dbo.РейтингСтранПоЧислуПерелетов", button6.Text);
        }

        private void button4_Click(object sender, EventArgs e)
        {

            Create_Othet Otchet_button4 = new Create_Othet("dbo.КлиентыПоЧислуПерелетов", button4.Text);

        }

        private void button5_Click(object sender, EventArgs e)
        {
            Create_Othet Otchet_button5 = new Create_Othet("dbo.РейтингПредприятий", button5.Text);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            Create_Othet Otchet_button9 = new Create_Othet("dbo.РейтингГородовПоЧислуПерелетов", button9.Text);
        }



        
    }
}
