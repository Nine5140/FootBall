package com.nine.dao;

import java.util.List;

import com.nine.beans.March;
import com.nine.beans.Team;

public interface MarchDao {

	boolean insertMarch(March march);
	List<March> selectMarchAll();
	March selectityMarch(Integer id);
	boolean updateMarch(March march);
	boolean deleteMarch(Integer id);
}
