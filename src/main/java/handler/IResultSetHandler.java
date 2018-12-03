package handler;

import java.sql.ResultSet;

public interface IResultSetHandler<E>  {
    E handler(ResultSet rs) throws Exception;
}
