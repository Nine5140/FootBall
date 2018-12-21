package com.nine.action;

import java.util.List;

import javax.servlet.ServletRequest;

import org.apache.struts2.ServletActionContext;

import com.nine.beans.Team;
import com.nine.service.TeamService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class TeamAction extends ActionSupport implements ModelDriven<Team>{
	private Team team=new Team();
	private TeamService teamService;
	private Integer team_id;
	public Team getTeam() {
		return team;
	}
	public void setTeam(Team team) {
		this.team = team;
	}
	public TeamService getTeamService() {
		return teamService;
	}
	public void setTeamService(TeamService teamService) {
		this.teamService = teamService;
	}
	
	public Integer getTeam_id() {
		return team_id;
	}
	public void setTeam_id(Integer team_id) {
		this.team_id = team_id;
	}
	public String insertTeam() {
		System.out.println(team.getTeamname());
		if (teamService.insertTeam(team)) {
			return "success";
		} else {
			return "error";
		}
	}
	// 跳转到添加球员界面
		public String saveUI() {
			// 查询所有部门信息
			List<Team> list = teamService.findAllTeam();

			ActionContext.getContext().getValueStack().set("list", list);// 集合用set
																			// 对象用push
			return "saveUI";
		}
		
		public String selectAll() {
			List<Team> list = teamService.findAllTeam();
			ServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("list", list);
			return "success";
		}

		public String selectityTeam() {
			team = teamService.selectityTeam(team_id);
			ServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("team", team);
			return "success";
		}

		public String updateTeam() {
			if (teamService.updateTeam(team)) {
				return "success";
			} else {
				return "error";
			}
		}
		
		public String deleteTeam() {
			if (teamService.deleteTeam(team_id)) {
				return "success";
			} else {
				return "error";
			}
		}
	@Override
	public Team getModel() {
		// TODO Auto-generated method stub
		return team;
	}
}
