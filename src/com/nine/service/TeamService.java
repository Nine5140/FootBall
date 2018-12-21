package com.nine.service;

import java.util.List;

import com.nine.beans.Team;

public interface TeamService {

	boolean insertTeam(Team team);

	List<Team> findAllTeam();
	Team selectityTeam(Integer id);
	boolean updateTeam(Team team);
	boolean deleteTeam(Integer id);
}
