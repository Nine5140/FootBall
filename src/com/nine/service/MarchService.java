package com.nine.service;

import java.util.List;

import com.nine.beans.March;

public interface MarchService {

	boolean insertMarch(March march);
	List<March> selectMarchAll();
	March selectityMarch(Integer id);
	boolean updateMarch(March march);
	boolean deleteMarch(Integer id);
}
