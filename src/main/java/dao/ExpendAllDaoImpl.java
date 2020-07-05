package dao;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import tool.HiveConnect;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;



@Controller
public class ExpendAllDaoImpl implements ExpendAllDao  {

    @Autowired
    private HiveConnect hiveConnect;
    private final static Logger logger = LoggerFactory.getLogger(ExpendAllDaoImpl.class);
    @Override
    public Map<String,Double> findexpendall()  {

        String sql  = "select * from expend_all";

        Map<String,Double> map = new HashMap<>();
        try {
            Statement  statement = hiveConnect.getstatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                map.put(resultSet.getString(1),resultSet.getDouble(2));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return map;
    }


    /**
     * 数据只有一条
     * **/
    @Override
    public List<Object> findByAllFields(String tablename, int fieldlens) {


        List<Object> list1 = new ArrayList<>();
        String  sql  = "select * from "+tablename;
        try {
            Statement statement = hiveConnect.getstatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                for (int i=1;i<fieldlens+1;i++){
                    list1.add(resultSet.getObject(i));
                }

            }
            //只有一条数据
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list1;
    }




    /**
     * 找Top
     * **/
    @Override
    public List<List<Object>> findTopByFields(String tablename, int fieldlens) {


        List<List<Object>> list = new ArrayList<>();

        String  sql  = "select * from "+tablename;
        try {
            Statement statement = hiveConnect.getstatement();

            ResultSet resultSet = statement.executeQuery(sql);

            while(resultSet.next()){
                List<Object> list1 = new ArrayList<>();
                for (int i=1;i<fieldlens+1;i++){
                    list1.add(resultSet.getObject(i));
                }
                list.add(list1);
            }
            //只有一条数据
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

}
