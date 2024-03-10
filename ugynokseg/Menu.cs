/*
Serbán Dezső Dávid
Szoftverfejlesztő- és Tesztelő technikus I/2/E
2024-03-07
*/

public class Menu
{
    Tours tour = new Tours();
    public void ShowMenu()
    {
        //felhasználó válasza
        string? response ="";
        while(true)
        {
            Console.Write("1:Utazási adatok lekérése, "+
            "2:Kilépés a programból:");
            response = Console.ReadLine();

            if(response == "1")
            {
                tour.GetTours();
            }

            else if(response == "2")
            {
                System.Console.WriteLine("Viszontlátásra!");
                break;
            }
            else
            {
                System.Console.WriteLine("Hibás adatbevitel, kérlek próbáld újra.");
            }
        }

    
    }
    
    


}
