package com.nine.service;

import java.util.List;

import com.nine.beans.Player;

public interface PlayerService {

	boolean insertPlayer(Player player);

	List<Player> selectPlayerAll();

	boolean deletePlayer(int player_id);

	Player selectPlayer(int player_id);
	boolean updatePlayer(Player player);

}
