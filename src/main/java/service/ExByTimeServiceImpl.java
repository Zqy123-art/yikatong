package service;

import dao.ExByTimeDao;
import entity.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class ExByTimeServiceImpl implements ExByTimeService {
    @Autowired
    ExByTimeEntity exByTimeEntity;
    @Autowired
    ExEveryDayEntity exEveryDayEntity;

    @Autowired
    AllAndAvgByMonthEntity allAndAvgByMonthEntity;
    @Autowired
    ExByTimeDao exByTimeDao;
    @Autowired
    AllExByWeekEntity allExByWeekEntity;
    /**
     * 分时段，查询总消费
     * **/
    @Override
    public ExByTimeEntity findExByTimeByid(String id) {
        List<Object> list  = exByTimeDao.findExByTimeById(id);
        exByTimeEntity.setCardid((String) list.get(0));
        exByTimeEntity.setPartitionA((Double) list.get(1));
        exByTimeEntity.setPartitionB((Double) list.get(2));
        exByTimeEntity.setPartitionC((Double) list.get(3));
        exByTimeEntity.setPartitionD((Double) list.get(4));
        exByTimeEntity.setPartitionE((Double) list.get(5));

        return exByTimeEntity;
    }


    /**
     * 分时段，查询每天消费
     * TODO
     * **/
    @Override
    public ExEveryDayEntity findExEverday(String id, int dt) {



        List<Object> exByEverday = exByTimeDao.findExByEverday(id, dt);



        exEveryDayEntity.setCardid((String) exByEverday.get(0));
        exEveryDayEntity.setExpenditure((List<String>) exByEverday.get(1));
        exEveryDayEntity.setDate((List<String>) exByEverday.get(2));
        exEveryDayEntity.setDt((Integer) exByEverday.get(3));

        return exEveryDayEntity;
    }



    /**
     * 不分时段，查询总消费
     * TODO
     * **/
    @Override
    public ExEveryDayAllEntity findAllExEverDay(String id) {
        ExEveryDayAllEntity exEveryDayAllEntity = new ExEveryDayAllEntity();
        List<Object> exEverdayAll = exByTimeDao.findBytwoFields("date_time","expend","2dayright",id);
        exEveryDayAllEntity.setDate((List<String>) exEverdayAll.get(0));
        exEveryDayAllEntity.setExpenditure((List<Double>) exEverdayAll.get(1));
        return exEveryDayAllEntity;
    }

    /**
     *
     * 按月查找
     * TODO
     * **/
    @Override
    public AllAndAvgByMonthEntity findAllandAvgBymonth(String id) {
        List<Object> bytwoFields = exByTimeDao.findMonthAndAvg(id);
        allAndAvgByMonthEntity.setAllspend((List<String>) bytwoFields.get(0));
        allAndAvgByMonthEntity.setAvgspend((List<String>) bytwoFields.get(1));
        return allAndAvgByMonthEntity;
    }

    /**
     * 按周查找总消费
     * **/
    public AllExByWeekEntity findAllExByWeek(){
        List<Object> bytwoFields = exByTimeDao.findBytwoFields("cardid", "expend", "6month", "None");
        allExByWeekEntity.setCardids((List<String>) bytwoFields.get(0));
        allExByWeekEntity.setSpends((List<Double>) bytwoFields.get(1));
        return allExByWeekEntity;
    }
}
