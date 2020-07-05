package service;

import dao.ExpendAllDao;
import entity.AllCostEntity;
import entity.ExpendAllEntity;
import entity.UserEntity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

@Service
public class ExpendAllServiceImpl implements ExpendAllService {

    ExpendAllEntity expendAllEntity;

    @Autowired
    AllCostEntity allCostEntity;

    @Autowired
    ExpendAllDao expendAllDao;
    private final static Logger logger = LoggerFactory.getLogger(ExpendAllServiceImpl.class);

    @Override
    public List<ExpendAllEntity> findExpendAll() {
        List<ExpendAllEntity> list= new ArrayList<>();
        Map<String, Double> findexpendalldata = expendAllDao.findexpendall();

        for(String key : findexpendalldata.keySet()) {
            expendAllEntity = new ExpendAllEntity();
            expendAllEntity.setCardid(key);
            expendAllEntity.setExpenditure(findexpendalldata.get(key));
            list.add(expendAllEntity);
        }



        return list;
    }

    @Override
    public AllCostEntity findAllCost() {
        //TODO
        List<Object> byAllFields = expendAllDao.findByAllFields("allsum", 4);

        allCostEntity.setAllcost((Double) byAllFields.get(0));
        allCostEntity.setRecharge((Double) byAllFields.get(1));
        allCostEntity.setRemainingSum((Double) byAllFields.get(2));
        allCostEntity.setUsernumber((Integer) byAllFields.get(3));
        return allCostEntity;

    }

    @Override
    public List<UserEntity> findTop3Cost() {

        List<List<Object>> expend_all = expendAllDao.findTopByFields("1allspendbydesc", 2);
        List<UserEntity> userEntities = new ArrayList<>();
        for (int i =0;i<3;i++){
            UserEntity userEntity = new UserEntity();
            userEntity.setRank(i+1);
            userEntity.setCardid((String) expend_all.get(i).get(0));
            userEntity.setAllCost((Double) expend_all.get(i).get(1));
            userEntities.add(userEntity);
        }
        return userEntities;
    }
}
