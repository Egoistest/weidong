package util_DB;

import handler.IResultSetHandler;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class BeanListHandler<T> implements IResultSetHandler <List<T>> {
    private Class <T> classType;
    public BeanListHandler(Class<T> classType){
        this.classType=classType;
    }

    @Override
    public List<T> handler(ResultSet rs) throws Exception {
        List<T> list=new ArrayList<>();
        while(rs.next()){
             T obj=this.classType.newInstance();
            BeanInfo bf= Introspector.getBeanInfo(this.classType,Object.class);
            PropertyDescriptor[] pds=bf.getPropertyDescriptors();
            for (PropertyDescriptor pd: pds) {
                Object val=rs.getObject(pd.getName());
                pd.getWriteMethod().invoke(obj,val);
            }
            list.add(obj);
        }
        return null;
    }
}
