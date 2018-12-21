package com.nine.beans;

import java.util.HashSet;
import java.util.Set;



public class Team {
	private int id;
	private String teamname;
	private String region;
	private String coach;
	private Set<Player> player = new HashSet<Player>();
	
	public Team(){
		
	}
	public Team(int id, String teamname, String region) {
		super();
		this.id = id;
		this.teamname = teamname;
		this.region = region;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTeamname() {
		return teamname;
	}
	public void setTeamname(String teamname) {
		this.teamname = teamname;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public Set<Player> getPlayer() {
		return player;
	}
	public void setPlayer(Set<Player> player) {
		this.player = player;
	}
	public String getCoach() {
		return coach;
	}
	public void setCoach(String coach) {
		this.coach = coach;
	}
	
}
