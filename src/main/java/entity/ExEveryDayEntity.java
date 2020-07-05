package entity;

import org.springframework.stereotype.Controller;

import java.util.List;
@Controller
public class ExEveryDayEntity {
    String cardid;
    List<String> date;
    int dt;
    List<String> expenditure;

    public String getCardid() {
        return cardid;
    }

    public void setCardid(String cardid) {
        this.cardid = cardid;
    }

    public List<String> getDate() {
        return date;
    }

    public void setDate(List<String> date) {
        this.date = date;
    }

    public int getDt() {
        return dt;
    }

    public void setDt(int dt) {
        this.dt = dt;
    }

    public List<String> getExpenditure() {
        return expenditure;
    }

    public void setExpenditure(List<String> expenditure) {
        this.expenditure = expenditure;
    }

    @Override
    public String toString() {
        return "ExEveryDayEntity{" +
                "cardid='" + cardid + '\'' +
                ", date=" + date +
                ", dt=" + dt +
                ", expenditure=" + expenditure +
                '}';
    }
}
