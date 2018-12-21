package com.nine.dao;

import java.util.List;

import com.nine.beans.Goalsituation;

public interface GoalsituationDao {
	boolean insertGoalsituation(Goalsituation goalsituation);
	List<Goalsituation> selectGoalsituationAll();
	Goalsituation selectityGoalsituation(Integer id);
	boolean updateGoalsituation(Goalsituation goalsituation);
	boolean deleteGoalsituation(Integer id);
}
