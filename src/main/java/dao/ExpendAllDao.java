package dao;

import java.util.List;
import java.util.Map;


public interface ExpendAllDao {



    Map<String,Double> findexpendall() ;
    List<Object> findByAllFields(String tablename, int fieldlens);
    public List<List<Object>> findTopByFields(String tablename,  int fieldlens);
}
