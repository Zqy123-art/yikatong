package controller;

import entity.AllExByWeekEntity;
import entity.ExByTimeEntity;
import entity.ExEveryDayAllEntity;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import service.ExByTimeService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class EveryIndexController {
    @Autowired
    ExByTimeService exByTimeService;
    static Logger logger = Logger.getLogger(EveryIndexController.class);
    @GetMapping("/every")
    public String everyindex(Model model){
        //加载右图
        logger.info("加载个人消费页面--加载图表数据");
        ExEveryDayAllEntity allExEverDay101 = exByTimeService.findAllExEverDay("101");
        ExEveryDayAllEntity allExEverDay103 = exByTimeService.findAllExEverDay("103");
        ExEveryDayAllEntity allExEverDay104 = exByTimeService.findAllExEverDay("104");
        ExEveryDayAllEntity allExEverDay105 = exByTimeService.findAllExEverDay("105");
        ExEveryDayAllEntity allExEverDay106 = exByTimeService.findAllExEverDay("106");
        ExEveryDayAllEntity allExEverDay107 = exByTimeService.findAllExEverDay("107");



        model.addAttribute("allExEverDay101",allExEverDay101.getExpenditure());
        model.addAttribute("allExEverDay103",allExEverDay103.getExpenditure());
        model.addAttribute("allExEverDay104",allExEverDay104.getExpenditure());
        model.addAttribute("allExEverDay105",allExEverDay105.getExpenditure());
        model.addAttribute("allExEverDay106",allExEverDay106.getExpenditure());
        model.addAttribute("allExEverDay107",allExEverDay107.getExpenditure());
        model.addAttribute("ExEverDaylable101",allExEverDay101.getDate());
        model.addAttribute("allExEverDaylable",allExEverDay107.getDate());
        //加载右下图
        AllExByWeekEntity allExByWeek = exByTimeService.findAllExByWeek();
        model.addAttribute("allExByWeek",allExByWeek);
        logger.info("加载个人消费页面--图表数据加载完成");
        return "every";
    }
}
