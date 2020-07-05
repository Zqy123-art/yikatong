package controller;

import entity.AllAndAvgByMonthEntity;
import entity.ExByTimeEntity;
import entity.ExEveryDayEntity;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import service.ExByTimeService;



@Controller
public class ExByTimeController {
    static Logger logger = Logger.getLogger(ExByTimeController.class);

    /**
     * 根据id查找每个人各个时间段的总消费情况
     * **/


    @Autowired
    ExByTimeService exByTimeService;
    @PostMapping("/findexbytime/{id}")
    @ResponseBody
    public ExByTimeEntity FindExbyid(@PathVariable String id, Model model){

        logger.info("查询数据---FindExbyid");
        ExByTimeEntity exByTimeByid = exByTimeService.findExByTimeByid(id);

        logger.info("数据查询完成---FindExbyid");
        return exByTimeByid;
    }



    /**
     *根据时间段查找每个人每天消费情况
     * TODO
     * **/
    @PostMapping("/findexbytime/{id}/{time}")
    @ResponseBody
    public ExEveryDayEntity FindExbyEveryone(@PathVariable String id,@PathVariable int time,Model model){


        logger.info("查询数据---FindExbyEveryone");
        ExEveryDayEntity exEverday = exByTimeService.findExEverday(id, time);
        logger.info("数据查询完成---FindExbyEveryone");
        return exEverday;
    }


    /**
     * 根据月份查找每人的消费和平均消费
     * **/

    @PostMapping("/findMonthAllcostAndavg/{cardid}")
    @ResponseBody
    public AllAndAvgByMonthEntity FindMonthCostAndAvg(@PathVariable String cardid,Model model){


        logger.info("查询数据---FindMonthCostAndAvg");
        AllAndAvgByMonthEntity allandAvgBymonth = exByTimeService.findAllandAvgBymonth(cardid);
        System.out .print("all:"+allandAvgBymonth.getAllspend());
        System.out.print("avg:"+allandAvgBymonth.getAvgspend());
        logger.info("数据查询完成---FindMonthCostAndAvg");
        return allandAvgBymonth;
    }



}
