package com.nine.service.impl;

import java.util.List;

import com.nine.beans.March;
import com.nine.dao.MarchDao;
import com.nine.service.MarchService;

public class MarchServiceImpl implements MarchService {

	private MarchDao marchDao;

	public MarchDao getMarchDao() {
		return marchDao;
	}

	public void setMarchDao(MarchDao marchDao) {
		this.marchDao = marchDao;
	}

	@Override
	public boolean insertMarch(March march) {
		return marchDao.insertMarch(march);
	}

	@Override
	public List<March> selectMarchAll() {
		// TODO Auto-generated method stub
		return marchDao.selectMarchAll();
	}

	@Override
	public March selectityMarch(Integer id) {
		// TODO Auto-generated method stub
		return marchDao.selectityMarch(id);
	}

	@Override
	public boolean updateMarch(March march) {
		// TODO Auto-generated method stub
		return marchDao.updateMarch(march);
	}

	@Override
	public boolean deleteMarch(Integer id) {
		// TODO Auto-generated method stub
		return marchDao.deleteMarch(id);
	}

}
