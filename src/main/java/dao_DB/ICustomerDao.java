package dao_DB;

import table_DB.Customer;

public interface ICustomerDao {
    int insert(Customer customer) throws Exception;
}
