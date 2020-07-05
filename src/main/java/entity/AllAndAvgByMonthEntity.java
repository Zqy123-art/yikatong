package entity;

import org.springframework.stereotype.Controller;

import java.util.List;

@Controller
public class AllAndAvgByMonthEntity {
    List<String> allspend;
    List<String> avgspend;
    public   List<String> getAllspend() {
        return allspend;
    }

    public void setAllspend(  List<String> allspend) {
        this.allspend = allspend;
    }

    public   List<String> getAvgspend() {
        return avgspend;
    }

    public void setAvgspend(  List<String> avgspend) {
        this.avgspend = avgspend;
    }


}
