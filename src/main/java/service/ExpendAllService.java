package service;

import entity.AllCostEntity;
import entity.ExpendAllEntity;
import entity.UserEntity;

import java.util.List;

public interface ExpendAllService {
    List<ExpendAllEntity> findExpendAll();
    AllCostEntity findAllCost();
    List<UserEntity> findTop3Cost();
}
