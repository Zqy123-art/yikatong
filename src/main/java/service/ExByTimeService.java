package service;

import entity.*;

import java.util.List;

public interface ExByTimeService {
    ExByTimeEntity findExByTimeByid(String id);
    ExEveryDayEntity findExEverday(String id,int dt);
    ExEveryDayAllEntity findAllExEverDay(String id);
    AllAndAvgByMonthEntity findAllandAvgBymonth(String id);
    AllExByWeekEntity findAllExByWeek();
}
