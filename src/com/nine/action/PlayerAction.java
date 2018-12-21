package com.nine.action;

import java.util.List;

import javax.servlet.ServletRequest;

import org.apache.struts2.ServletActionContext;

import com.nine.beans.Player;
import com.nine.beans.Team;
import com.nine.service.PlayerService;
import com.nine.service.TeamService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class PlayerAction extends ActionSupport implements ModelDriven<Player> {
	private Player player = new Player();
	private PlayerService playerService;
	private TeamService teamService;
	private Team team = new Team();

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public Player getPlayer() {
		return player;
	}

	public void setPlayer(Player player) {
		this.player = player;
	}

	public PlayerService getPlayerService() {
		return playerService;
	}

	public void setPlayerService(PlayerService playerService) {
		this.playerService = playerService;
	}

	public TeamService getTeamService() {
		return teamService;
	}

	public void setTeamService(TeamService teamService) {
		this.teamService = teamService;
	}

	public String insertPlayer() {
		System.out.println(player.getPlayer_name());
		if (playerService.insertPlayer(player)) {
			return "success";
		} else {
			return "error";
		}
	}

	public String selectPlayerAll() {
		List<Player> list = playerService.selectPlayerAll();
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return "success";
	}

	public String selectPlayer() {
		Player player1 = playerService.selectPlayer(player.getPlayer_id());
//		request.setAttribute("list", list);
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("player", player1);
		
		List<Team> list = teamService.findAllTeam();
		
		request.setAttribute("list", list);
		
		return "success";

	}

	public String updatePlayer() {
		if (playerService.updatePlayer(player)) {
			return "success";
		} else {
			return "error";
		}
		
	}
	
	public String deletePlayer() {
		System.out.println(player.getPlayer_id());
		if (playerService.deletePlayer(player.getPlayer_id())) {
			return "success";
		} else {
			return "error";
		}
	}

	@Override
	public Player getModel() {
		// TODO Auto-generated method stub
		return player;
	}
}
