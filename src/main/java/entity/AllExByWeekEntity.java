package entity;

import org.springframework.stereotype.Controller;

import java.util.List;
@Controller
public class AllExByWeekEntity {
    List<String> cardids;
    List<Double> spends;

    public List<String> getCardids() {
        return cardids;
    }

    public void setCardids(List<String> cardids) {
        this.cardids = cardids;
    }

    public List<Double> getSpends() {
        return spends;
    }

    public void setSpends(List<Double> spends) {
        this.spends = spends;
    }
}
