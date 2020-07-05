package controller;


import entity.AllCostEntity;
import entity.ExpendAllEntity;
import entity.UserEntity;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import service.ExpendAllService;

import java.util.List;



@Controller
public class IndexController {

    @Autowired
    ExpendAllService expendAllService;

    static Logger logger = Logger.getLogger(IndexController.class);

    @RequestMapping("/index")
    public String test(Model model) {


        logger.info("加载首页--每个用户各个时间段总消费(2018-09-01 00:00:00到 2019-07-10 00:00:00)");
        List<ExpendAllEntity> expendAll = expendAllService.findExpendAll();
        model.addAttribute("expendAll",expendAll);

        logger.info("加载首页--总消费等信息");
        AllCostEntity allCost = expendAllService.findAllCost();

        model.addAttribute("allCost",allCost);
        logger.info("加载首页--Top3用户");
        List<UserEntity> top3Cost = expendAllService.findTop3Cost();
        model.addAttribute("top3Cost",top3Cost);
        logger.info("加载首页--首页数据加载完成");

        return "index";
    }





}
