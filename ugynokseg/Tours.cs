/*
Serbán Dezső Dávid
Szoftverfejlesztő- és Tesztelő technikus I/2/E
2024-03-07
*/

using System.Data;
using MySqlConnector;

public class Tours
{

    public void GetTours()
    {
 
        //adatbázis kapcsolathoz szükséges adatok
        string name = "ugynokseg";
        string port = "3306";
        string user = "ugynokseg";
        string host = "localhost";
        string pass = "titok";

        //kapcsolat eléréshez szükséges URL
        string url = @$"Server= {host};
        Port={port};
        Database={name};
        User={user};
        Password={pass}";

        //conn változóba mentés
        MySqlConnection conn = new MySqlConnection(url);

        //lekérdezés
        string sql = "Select * from tours;";



        //kapcsolódás
        try
        {
            conn.Open();
            

            //parancskiadó változó
            MySqlCommand command = new MySqlCommand(sql,conn);
            //parancs átadása
            MySqlDataReader data = command.ExecuteReader();

            //adatok kiolvasása az adatbázisból
            while(data.Read())
            {
                Console.WriteLine("ID:{0,3}|Úticél:{1,-13}|"+
                "Utazási idő:{2} óra|Ár:{3,8:### ###}Ft.",
                data.GetInt32("id"),data.GetString("destination"),
                data.GetInt32("duration"),data.GetDouble("price"));
            }

            conn.Close();
            System.Console.WriteLine("------------"+
            "-----------------------------------------------");
            
        }

        catch (MySqlException exc)
        {
            
            Console.Error.WriteLine(exc.Message.ToString());
            Console.Error.WriteLine("A kapcsolódás sikertelen!");

        }
    }
}