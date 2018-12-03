package dao_DB;

import table_DB.Book;

import java.util.List;

public interface IBooktDao{

    public List<Book> getRecommadation(int size) throws Exception;
    public List<Book> getRecomThisweek(int size) throws Exception;

    int  insert(Book book) throws Exception;
    int  reset(Book book) throws Exception;
     List<Book> getall() throws Exception;
    int delete(Book book) throws Exception;
    List<Book> select(Book book) throws Exception;
}
