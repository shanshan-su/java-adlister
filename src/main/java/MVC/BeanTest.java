package MVC;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class BeanTest {
    public static void main(String[] args) {
        // test MVC.Album class
        Album album1 = new Album("Taylor Swift", "Folklore");
        album1.setReleaseDate(2020);
        album1.setSales(1.2);
        album1.setGenre("Fairy tales, legends, myths, tall tales, and fables");

        Album album2 = new Album("Adele", "25");
        album2.setReleaseDate(2015);
        album1.setSales(22);
        album1.setGenre("Soul, pop, R&B");

        List<Album> albums = new ArrayList<>(Arrays.asList(album1, album2));

        System.out.printf(" %-10s | %-15s | %-12s | %-5s | %s\n", "Name", "Artist", "Release Year", "Sales", "Genre");
        for (Album album : albums) {
            System.out.printf(" %-10s | %-15s | %-12s | %-5s | %s\n", album.getName(), album.getArtist(), album.getReleaseDate(), album.getSales(), album.getGenre());
        }



        // test MVC.Author and MVC.Quote classes
        Author nelson = new Author("Nelson", "Mandela");
        Quote quote1 = new Quote("The greatest glory in living lies not in never falling, but in rising every time we fall.");
        quote1.setAuthor(nelson);

        Author walt = new Author("Walt", "Disney");
        Quote quote2 = new Quote("The way to get started is to quit talking and begin doing.");
        quote2.setAuthor(walt);

        Author steve = new Author("Steve", "Jobs");
        Quote quote3 = new Quote("Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking.");
        quote3.setAuthor(steve);

        List<Quote> quotes = new ArrayList<>(Arrays.asList(quote1, quote2, quote3));

        for (Quote quote : quotes) {
            System.out.println(quote.getContent());
            System.out.printf("-- %s %s\n\n", quote.getAuthor().getFirstName(), quote.getAuthor().getLastName());
        }

    }
}
