package com.nine.service.impl;

import java.util.List;

import com.nine.beans.Goalsituation;
import com.nine.dao.GoalsituationDao;
import com.nine.service.GoalsituationService;

public class GoalsituationServiceImpl implements GoalsituationService {

	private GoalsituationDao goalsituationDao;

	

	public GoalsituationDao getGoalsituationDao() {
		return goalsituationDao;
	}

	public void setGoalsituationDao(GoalsituationDao goalsituationDao) {
		this.goalsituationDao = goalsituationDao;
	}

	@Override
	public boolean insertGoalsituation(Goalsituation goalsituation) {
		// TODO Auto-generated method stub
		return goalsituationDao.insertGoalsituation(goalsituation);
	}

	@Override
	public List<Goalsituation> selectGoalsituationAll() {
		// TODO Auto-generated method stub
		return goalsituationDao.selectGoalsituationAll();
	}

	@Override
	public Goalsituation selectityGoalsituation(Integer id) {
		// TODO Auto-generated method stub
		return goalsituationDao.selectityGoalsituation(id);
	}

	@Override
	public boolean updateGoalsituation(Goalsituation goalsituation) {
		// TODO Auto-generated method stub
		return goalsituationDao.updateGoalsituation(goalsituation);
	}

	@Override
	public boolean deleteGoalsituation(Integer id) {
		// TODO Auto-generated method stub
		return goalsituationDao.deleteGoalsituation(id);
	}

}
