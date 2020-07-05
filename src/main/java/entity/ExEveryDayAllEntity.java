package entity;

import org.springframework.stereotype.Controller;

import java.util.List;
@Controller
public class ExEveryDayAllEntity {
    List<String> date;
    List<Double> expenditure;

    public List<String> getDate() {
        return date;
    }

    public void setDate(List<String> date) {
        this.date = date;
    }

    public List<Double> getExpenditure() {
        return expenditure;
    }

    public void setExpenditure(List<Double> expenditure) {
        this.expenditure = expenditure;
    }



}
