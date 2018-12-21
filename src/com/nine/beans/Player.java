package com.nine.beans;



public class Player {
	private int player_id;
	private String player_name;
	private int player_num;
	private int player_height;
	private int player_weight;
	private String player_bir;
	private String position;
	private String club;
	private String state;
	// 所属部门
	// 多对一 关联属性 多方看到一方
	private Team team;

	public Player() {

	}

	
	
	public Player(int player_id, String player_name, int player_num, int player_height, int player_weight,
			String player_bir, String position, String club, String state, Team team) {
		super();
		this.player_id = player_id;
		this.player_name = player_name;
		this.player_num = player_num;
		this.player_height = player_height;
		this.player_weight = player_weight;
		this.player_bir = player_bir;
		this.position = position;
		this.club = club;
		this.state = state;
		this.team = team;
	}



	public int getPlayer_id() {
		return player_id;
	}

	public void setPlayer_id(int player_id) {
		this.player_id = player_id;
	}

	public String getPlayer_name() {
		return player_name;
	}

	public void setPlayer_name(String player_name) {
		this.player_name = player_name;
	}

	public int getPlayer_height() {
		return player_height;
	}

	public void setPlayer_height(int player_height) {
		this.player_height = player_height;
	}

	public int getPlayer_weight() {
		return player_weight;
	}

	public void setPlayer_weight(int player_weight) {
		this.player_weight = player_weight;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getClub() {
		return club;
	}

	public void setClub(String club) {
		this.club = club;
	}

	public Team getTeam() {
		return team;
	}

	public void setTeam(Team team) {
		this.team = team;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public int getPlayer_num() {
		return player_num;
	}

	public void setPlayer_num(int player_num) {
		this.player_num = player_num;
	}

	public String getPlayer_bir() {
		return player_bir;
	}

	public void setPlayer_bir(String player_bir) {
		this.player_bir = player_bir;
	}

}
