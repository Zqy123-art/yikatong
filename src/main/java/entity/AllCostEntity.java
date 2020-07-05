package entity;

import org.springframework.stereotype.Controller;

@Controller
public class AllCostEntity {

    int usernumber;
    double allcost;
    double recharge;
    double remainingSum;

    public int getUsernumber() {
        return usernumber;
    }

    public void setUsernumber(int usernumber) {
        this.usernumber = usernumber;
    }

    public double getAllcost() {
        return allcost;
    }

    public void setAllcost(double allcost) {
        this.allcost = allcost;
    }

    public double getRecharge() {
        return recharge;
    }

    public void setRecharge(double recharge) {
        this.recharge = recharge;
    }

    public double getRemainingSum() {
        return remainingSum;
    }

    public void setRemainingSum(double remainingSum) {
        this.remainingSum = remainingSum;
    }
}
