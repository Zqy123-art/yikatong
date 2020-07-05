package entity;

import org.springframework.stereotype.Controller;

@Controller
public class ExByTimeEntity {
   String cardid;
   double partitionA;
    double partitionB;
    double partitionC;
    double partitionD;
    double partitionE;

    public String getCardid() {
        return cardid;
    }

    public void setCardid(String cardid) {
        this.cardid = cardid;
    }

    public double getPartitionA() {
        return partitionA;
    }

    public void setPartitionA(double partitionA) {
        this.partitionA = partitionA;
    }

    public double getPartitionB() {
        return partitionB;
    }

    public void setPartitionB(double partitionB) {
        this.partitionB = partitionB;
    }

    public double getPartitionC() {
        return partitionC;
    }

    public void setPartitionC(double partitionC) {
        this.partitionC = partitionC;
    }

    public double getPartitionD() {
        return partitionD;
    }

    public void setPartitionD(double partitionD) {
        this.partitionD = partitionD;
    }

    public double getPartitionE() {
        return partitionE;
    }

    public void setPartitionE(double partitionE) {
        this.partitionE = partitionE;
    }

    @Override
    public String toString() {
        return "ExByTimeEntity{" +
                "cardid='" + cardid + '\'' +
                ", partitionA=" + partitionA +
                ", partitionB=" + partitionB +
                ", partitionC=" + partitionC +
                ", partitionD=" + partitionD +
                ", partitionE=" + partitionE +
                '}';
    }
}
