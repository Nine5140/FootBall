package com.nine.service.impl;

import java.util.List;

import com.nine.beans.Team;
import com.nine.dao.TeamDao;
import com.nine.service.TeamService;

public class TeamServiceImpl implements TeamService{
	private TeamDao teamDao;
	
	public TeamDao getTeamDao() {
		return teamDao;
	}

	public void setTeamDao(TeamDao teamDao) {
		this.teamDao = teamDao;
	}


	@Override
	public boolean insertTeam(Team team) {
		// TODO Auto-generated method stub
		return teamDao.insertTeam(team);
	}

	@Override
	public List<Team> findAllTeam() {
		// TODO Auto-generated method stub
		return teamDao.findAllTeam();
	}
	@Override
	public Team selectityTeam(Integer id) {
		// TODO Auto-generated method stub
		return teamDao.selectityTeam(id);
	}

	@Override
	public boolean updateTeam(Team team) {
		// TODO Auto-generated method stub
		return teamDao.updateTeam(team);
	}

	@Override
	public boolean deleteTeam(Integer id) {
		// TODO Auto-generated method stub
		return teamDao.deleteTeam(id);
	}
}
