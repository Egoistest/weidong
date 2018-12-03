package daoImpl_DB;

import dao_DB.IBooktDao;
import handler.IResultSetHandler;
import table_DB.Book;
import util_DB.BeanHandler;
import util_DB.BeanListHandler;
import util_DB.sqlTemp;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;



public class BooktDaoImpl implements IBooktDao {


    @Override
    public List<Book> getRecommadation(int size) throws Exception {

            String sql = "SELECT book_Name,book_image FROM bookt limit 0,?";

            return  sqlTemp.excuteQuery(sql, new BeanListHandler<Book>(Book.class), size);
    }

        @Override
    public List<Book> getRecomThisweek(int size) throws Exception {
                String sql = "SELECT book_Name,book_image,book_Introduction from bookt \n" +
                        "order by book_SaleNum desc  limit 0,?";

                return sqlTemp.excuteQuery(sql, new BeanListHandler<Book>(Book.class),size);

    }

    @Override
    public int insert(Book book) throws Exception {
         return 0;
    }

    @Override
    public int reset(Book book) throws Exception {
        return 0;
    }

    @Override
    public List<Book> getall() throws Exception {
        String sql="select * from bookt";
        return  sqlTemp.excuteQuery(sql,new BeanListHandler<Book>(Book.class));
    }

    @Override
    public int delete(Book book) throws Exception {
        return 0;
    }

    @Override
    public List<Book> select(Book book) throws Exception {
        String sql="select * from bookt where price=?";
        List<Book> list= new ArrayList<Book>();
        list=  sqlTemp.excuteQuery(sql,new BeanListHandler<Book>(Book.class),book.getPrice());
        return list;

    }
}


//
//class BooktHandlerImpl implements IResultSetHandler<List<Book>> {
//
//    @Override
//    public List<Book> handler(ResultSet rs) throws Exception{
//
//
//        List<Book> list=new ArrayList<Book>();
//        while(rs.next()){
//            Book book =new Book();
//            book.setBook_ID(rs.getInt("book_ID"));
//            book.setBook_ISBN(rs.getString("book_ISBN"));
//            book.setBook_Name(rs.getString("book_Name"));
//            book.setBook_Author(rs.getString("book_Author"));
//            book.setBookType_ID(rs.getString("bookType_ID"));
//            book.setPublishing_ID(rs.getString("publishing_ID"));
//            book.setPrice(rs.getInt("price"));
//            book.setBook_Author(rs.getString("book_publish_time"));
//            book.setBook_Num(rs.getInt("book_Num"));;
//            book.setBook_SaleNum(rs.getInt("book_SaleNum"));
//            book.setBook_Image(rs.getString("book_Image"));
//            book.setBook_Introduction(rs.getString("book_Introduction"));
//            book.setBook_Information(rs.getString("book_Information"));
//            System.out.println(book.getBook_ID()+" "+book.getBook_ISBN()+" "+book.getBook_Name()+" "+book.getBook_Author()+
//                    " "+book.getBookType_ID()+" "+book.getPublishing_ID()+" "+book.getPrice()+" "+book.getBook_Author()+" "+
//                       book.getBook_Num()+" "+book.getBook_SaleNum()+" "+book.getBook_Image()+" "+book.getBook_Introduction()+" "
//                      +book.getBook_Information());
//            list.add(book);
//        }
//
//        return list;
//    }
//}