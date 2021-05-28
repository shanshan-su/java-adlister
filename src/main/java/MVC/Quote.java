package MVC;

import MVC.Author;

import java.io.Serializable;

public class Quote implements Serializable {
    private int id;
    private Author author;
    private String content;

    public Quote(String content) {
        this.content = content;
    }

    public Author getAuthor() {
        return this.author;
    }

    public void setAuthor(Author author) {
        this.author = author;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
