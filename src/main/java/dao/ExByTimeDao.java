package dao;

import java.util.List;
import java.util.Map;

public interface ExByTimeDao {
    List<Object> findExByTimeById(String id);
    List<Object> findExByEverday(String id, int dt);
    //第一个字段为时间，加引号
    List<Object> findBytwoFields(String a1,String a2,String tablename,String id);
    List<Object> findMonthAndAvg(String id);
}
