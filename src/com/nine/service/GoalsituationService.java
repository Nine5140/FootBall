package com.nine.service;

import java.util.List;

import com.nine.beans.Goalsituation;

public interface GoalsituationService {

	boolean insertGoalsituation(Goalsituation goalsituation);
	List<Goalsituation> selectGoalsituationAll();
	Goalsituation selectityGoalsituation(Integer id);
	boolean updateGoalsituation(Goalsituation goalsituation);
	boolean deleteGoalsituation(Integer id);
}
