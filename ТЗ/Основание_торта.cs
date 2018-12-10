using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ТЗ
{
    public partial class Основание_торта : Form
    {
        public Основание_торта()
        {
            InitializeComponent();
        }

        private void Основание_торта_Load(object sender, EventArgs e)
        {
            // TODO: данная строка кода позволяет загрузить данные в таблицу "konst_tortDataSet.korzh". При необходимости она может быть перемещена или удалена.
            this.korzhTableAdapter.Fill(this.konst_tortDataSet.korzh);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "konst_tortDataSet.lenta". При необходимости она может быть перемещена или удалена.
            this.lentaTableAdapter.Fill(this.konst_tortDataSet.lenta);
            // TODO: данная строка кода позволяет загрузить данные в таблицу "konst_tortDataSet.krem". При необходимости она может быть перемещена или удалена.
            this.kremTableAdapter.Fill(this.konst_tortDataSet.krem);


        }

        private void checkBox11_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void checkBox14_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            int id_krema = Convert.ToInt32(Convert.ToString(krembox.SelectedValue));
        }
    }
}
