package daoImpl_DB;

import dao_DB.ICustomerDao;
import table_DB.Customer;
import util_DB.sqlTemp;

public class CustomerDaoImpl implements ICustomerDao {
    @Override
    public int insert(Customer customer) throws Exception {
        int i=0;
        String sql="insert into customers(cust_no,cust_pwd) values(?,?)";
        return sqlTemp.excuteUpdate(sql,customer.getCust_no(),customer.getCust_pwd());
    }
}
