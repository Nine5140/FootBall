package com.nine.dao;

import java.util.List;

import com.nine.beans.Player;

public interface PlayerDao {

	boolean insertPlayer(Player player);

	List<Player> selectPlayerAll();

	boolean deletePlayer(int player_id);

	Player selectPlayer(int player_id);
	boolean updatePlayer(Player player);
}
