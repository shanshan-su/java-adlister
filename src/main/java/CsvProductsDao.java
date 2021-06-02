import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class CsvProductsDao implements Products{
    private String fileName;
    private Path dataFile;
    private Path dataDirectory;

    public CsvProductsDao(String fileName) throws IOException {
        this.fileName = fileName;
        String directory = ".";
        this.dataDirectory = Paths.get(directory);
        this.dataFile = Paths.get(directory, fileName);

        if (Files.notExists(dataDirectory)) {
            Files.createDirectories(dataDirectory);
        }

        if (! Files.exists(dataFile)) {
            Files.createFile(dataFile);
        }
    }

    @Override
    public List<Product> all() throws IOException {
        List<Product> allContacts = new ArrayList<>();
        List<String> fileContents = Files.readAllLines(dataFile);
        for (String line: fileContents) {
            allContacts.add(createProductFromString(line));
        }
        return allContacts;
    }

    @Override
    public void insert(Product product) throws IOException {
        List<String> fileContents = Files.readAllLines(dataFile);
        fileContents.add(this.convertProductToString(product));
        Files.write(dataFile, fileContents);
    }

    public static String convertProductToString(Product product) {
        return String.format("%s|%s", product.getName(), product.getPrice());
    }

    public static Product createProductFromString(String pipeDelimitedProductString) {
        String[] contactInfo = pipeDelimitedProductString.split("\\|");
        return new Product(contactInfo[0], Double.parseDouble(contactInfo[1]));
    }
}