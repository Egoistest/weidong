package util_DB;

import handler.IResultSetHandler;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.sql.ResultSet;

public class BeanHandler<T> implements IResultSetHandler<T> {
    private Class<T> classType;
    public BeanHandler(Class<T>classType){
        this.classType=classType;
    }
    @Override
    public T handler(ResultSet rs) throws Exception {
         if(rs.next()){
             T obj=this.classType.newInstance();
             BeanInfo beanInfo= Introspector.getBeanInfo(this.classType,Object.class);
             PropertyDescriptor[] pds=beanInfo.getPropertyDescriptors();
             for (PropertyDescriptor pd:pds) {
                 Object val=rs.getObject(pd.getName());
                 pd.getWriteMethod().invoke(obj,val);
             }
             return obj;
         }


        return null;
    }
}
