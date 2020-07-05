package dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import tool.HiveConnect;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

@Controller
public class ExByTimeDaoImpl implements ExByTimeDao{
    @Autowired
    private HiveConnect hiveConnect;
    private final static Logger logger = LoggerFactory.getLogger(ExpendAllDaoImpl.class);
    @Override
    public List<Object> findExByTimeById(String id) {
        String sql  = "select * from expend_by_alltime where cardid = '"+id+"'";
        List<Object> list = new ArrayList<>();
        try {


            Statement statement = hiveConnect.getstatement();

            ResultSet resultSet = statement.executeQuery(sql);

            while(resultSet.next()){
                list.add(resultSet.getObject(1));
                list.add(resultSet.getObject(2));
                list.add(resultSet.getObject(3));
                list.add(resultSet.getObject(4));
                list.add(resultSet.getObject(5));
                list.add(resultSet.getObject(6));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }

    /**
     * expend_by_evgtime
     * */
    @Override
    public List<Object> findExByEverday(String id, int dt) {
        List<Object> list1 = new ArrayList<>();

        String sql  = "select * from 2dayleft where cardid = '"+id+"' and dt = "+dt;
        List<List<Object>> list = new ArrayList<>();
        try {


            Statement statement = hiveConnect.getstatement();
            ResultSet resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
                 List<Object> ever = new ArrayList<>();

                ever.add(resultSet.getObject(1));
                ever.add(resultSet.getObject(2));
                ever.add( resultSet.getObject(3));
                ever.add(resultSet.getObject(4));
                list.add(ever);
            }


            list1.add(list.get(0).get(0));

            List<Object> date = new ArrayList<>();
            List<Object> expend = new ArrayList<>();

            for(int i =0;i<list.size();i++){
                expend.add(list.get(i).get(1));
                  date.add("'"+list.get(i).get(2)+"'");
            }
            list1.add(expend);
            list1.add(date);
            list1.add(list.get(0).get(3));
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list1;
    }

    @Override
    public List<Object> findBytwoFields(String a1,String a2,String tablename,String id) {
        List<Object> list1 = new ArrayList<>();
        String sql;
        if (!id.equals("None")){
            sql  = "select "+a1+","+a2+" from "+tablename+" where cardid = '"+id+"'";

        }else {
            sql  = "select "+a1+","+a2+" from "+tablename;
        }
        List<List<Object>> list = new ArrayList<>();
        try {
            Statement statement = hiveConnect.getstatement();
            ResultSet resultSet = statement.executeQuery(sql);

            List<Object> field1 = new ArrayList<>();
            List<Object> field2 = new ArrayList<>();
            while(resultSet.next()){
                //第一个字段为时间，加引号
                field1.add("'"+resultSet.getObject(1)+"'");
                field2.add(resultSet.getObject(2));
            }


            list1.add(field1);
            list1.add(field2);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list1;
    }

    /**
     * 查询月份
     * **/
    @Override
    public List<Object> findMonthAndAvg(String id) {

        List<Object> list1 = new ArrayList<>();
        String sql1 = "select * from 7mon where cardid = '"+id+"'";

        String sql2 = "select * from 8AVG where cardid = '"+id+"'";


        try {
            Statement statement1 = hiveConnect.getstatement();

            ResultSet resultSet1 = statement1.executeQuery(sql1);


            List<Object> Allcost = new ArrayList<>();

            while(resultSet1.next()){
                for(int i=2;i<13;i++){
                    Allcost.add( resultSet1.getObject(i));
                }
            }
            Statement statement2 = hiveConnect.getstatement();
            ResultSet resultSet2 = statement2.executeQuery(sql2);

            List<Object> Avg = new ArrayList<>();

            while(resultSet2.next()){
                for(int i=2;i<13;i++){
                    Avg.add( resultSet2.getObject(i));
                }
            }
            list1.add(Allcost);
            list1.add(Avg);

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list1;
    }


}
