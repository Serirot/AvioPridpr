using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
// Дополнительное пространство имен для работы методов класса
using System.Windows.Forms;
using System.Data;
using System.Data.SqlClient;

namespace AvioPridpr
{
    class Create_Othet
    {
        private string name_procedura; // Имя процедуры на сервере
        // SQL запрос
        private string commandDB;
        // Команда подключения к серверу 
        private string connectionDB = "Data Source=localhost;Initial Catalog=АвиаУчет;Integrated Security=True;Pooling=False";
        // Заголовок формы
        private string FormLabel;
        public Create_Othet(string procedura, string FL)
        {
            name_procedura = procedura;
            FormLabel = FL;
            commandDB = "use АвиаУчет exec " + name_procedura;

        // Производим динамическое создание формы.
           // Задаем свойства формы.
           // Размещаем элементы на форме.
           // Подключаемся к базе данных
        // Все опарации делаем в обработчике исключений, для того чтобы корректно освободить ресурсы, если
       // при выполнении подключения или при обработке запроса возникнут ошибки.
            // В качетсве обработчика исключений используем системный обработчик - Exception
            // Уведомляем пользователя о ошибке, сообшением с подробным описанием проблемы.
          
        try
        {
            // динамическое создание формы
            Form fr3 = new Form();
            // Свойства формы
            fr3.ClientSize = new System.Drawing.Size(800, 600);
            fr3.Text = FormLabel;

            // Создаем элемент dataGridView
            System.Windows.Forms.DataGridView dataGrid1_fr3 = new System.Windows.Forms.DataGridView();

            // Свойства dataGridVie
            dataGrid1_fr3.Name = "dataGrid1_fr3";
            dataGrid1_fr3.Dock = DockStyle.Fill;
            // Запрещаем любые изменения в БД
            dataGrid1_fr3.AllowUserToAddRows = false;
            dataGrid1_fr3.AllowUserToDeleteRows = false;
            // Разрещаем чтение
            dataGrid1_fr3.ReadOnly = true;
            // Добавляем на форму
            fr3.Controls.Add(dataGrid1_fr3);
            
            // Подключаемся к БД
            SqlDataAdapter dataAdapt = new SqlDataAdapter(commandDB, connectionDB);
            DataSet ds = new DataSet();
            // Заполняем объект DataSet() данными из базы
            dataAdapt.Fill(ds, name_procedura);
            // Связываем объект dataGridViiw c данными из DataSet
            dataGrid1_fr3.DataSource = ds.Tables[name_procedura].DefaultView;
            // Закрываем соединение с БД и освобождаем ресурсы. Это можно не делать, но лучше сделать!
            dataAdapt.Dispose();
            // Отображаем форму, если будет ошибка форма не будет отрисована
            fr3.Show();
        }
        catch (System.Exception ex)
        {
            // Выводим сообшения об ошибке в отдельном окне
            MessageBox.Show(ex.ToString());
        }



        }

       


    }
}
