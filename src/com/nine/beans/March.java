package com.nine.beans;

import java.util.Date;

public class March {
	private int id;
	private String hometeam;
	private String visteam;
	private String datetime;
	private String competition_site;
	private int hometeam_score;
	private int visteam_score;

	public March() {
		// TODO Auto-generated constructor stub
	}
	
	public March(int id, String hometeam, String visteam, String datetime, String competition_site,
			String competition_score, int hometeam_score, int visteam_score) {
		super();
		this.id = id;
		this.hometeam = hometeam;
		this.visteam = visteam;
		this.datetime = datetime;
		this.competition_site = competition_site;
		this.hometeam_score = hometeam_score;
		this.visteam_score = visteam_score;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHometeam() {
		return hometeam;
	}

	public void setHometeam(String hometeam) {
		this.hometeam = hometeam;
	}

	public String getVisteam() {
		return visteam;
	}

	public void setVisteam(String visteam) {
		this.visteam = visteam;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}
	
	public String getCompetition_site() {
		return competition_site;
	}

	public void setCompetition_site(String competition_site) {
		this.competition_site = competition_site;
	}

	public int getHometeam_score() {
		return hometeam_score;
	}

	public void setHometeam_score(int hometeam_score) {
		this.hometeam_score = hometeam_score;
	}

	public int getVisteam_score() {
		return visteam_score;
	}



	public void setVisteam_score(int visteam_score) {
		this.visteam_score = visteam_score;
	}
	

}
