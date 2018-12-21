package com.nine.service.impl;

import java.util.List;

import com.nine.beans.Player;
import com.nine.dao.PlayerDao;
import com.nine.service.PlayerService;

public class PlayerServiceImpl implements PlayerService {
	private PlayerDao playerDao;
	
	public PlayerDao getPlayerDao() {
		return playerDao;
	}

	public void setPlayerDao(PlayerDao playerDao) {
		this.playerDao = playerDao;
	}

	@Override
	public boolean insertPlayer(Player player) {
		// TODO Auto-generated method stub
		return playerDao.insertPlayer(player);
	}

	@Override
	public List<Player> selectPlayerAll() {
		// TODO Auto-generated method stub
		return playerDao.selectPlayerAll();
	}

	@Override
	public boolean deletePlayer(int player_id) {
		// TODO Auto-generated method stub
		return playerDao.deletePlayer(player_id);
	}

	@Override
	public Player selectPlayer(int player_id) {
		// TODO Auto-generated method stub
		return playerDao.selectPlayer(player_id);
	}

	@Override
	public boolean updatePlayer(Player player) {
		// TODO Auto-generated method stub
		return playerDao.updatePlayer(player);
	}


}
