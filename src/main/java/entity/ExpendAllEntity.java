package entity;

import org.springframework.stereotype.Controller;

@Controller
public class ExpendAllEntity {
    String cardid;
    Double expenditure;

    public String getCardid() {
        return cardid;
    }

    public void setCardid(String cardid) {
        this.cardid = cardid;
    }

    public Double getExpenditure() {
        return expenditure;
    }

    public void setExpenditure(Double expenditure) {
        this.expenditure = expenditure;
    }
}
