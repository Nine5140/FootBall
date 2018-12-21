package com.nine.beans;

public class Goalsituation {

	private int id;
	private String matchsession;
	private String playername;
	private String goaldate;
	private String goaltime;
	private String way;

	public Goalsituation() {
		// TODO Auto-generated constructor stub
	}

	public Goalsituation(int id, String matchsession, String playername, String goaldate, String goaltime, String way) {
		super();
		this.id = id;
		this.matchsession = matchsession;
		this.playername = playername;
		this.goaldate = goaldate;
		this.goaltime = goaltime;
		this.way = way;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMatchsession() {
		return matchsession;
	}

	public void setMatchsession(String matchsession) {
		this.matchsession = matchsession;
	}

	public String getPlayername() {
		return playername;
	}

	public void setPlayername(String playername) {
		this.playername = playername;
	}

	public String getGoaldate() {
		return goaldate;
	}

	public void setGoaldate(String goaldate) {
		this.goaldate = goaldate;
	}

	public String getGoaltime() {
		return goaltime;
	}

	public void setGoaltime(String goaltime) {
		this.goaltime = goaltime;
	}

	public String getWay() {
		return way;
	}

	public void setWay(String way) {
		this.way = way;
	}

}
