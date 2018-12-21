package com.nine.action;

import java.util.List;
import javax.servlet.ServletRequest;
import org.apache.struts2.ServletActionContext;
import com.nine.beans.Goalsituation;
import com.nine.service.GoalsituationService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class GoalsituationAction extends ActionSupport implements ModelDriven<Goalsituation> {

	private Goalsituation goalsituation =new Goalsituation();
	private GoalsituationService goalsituationService;
	private Integer goalsituation_id;

	public Goalsituation getGoalsituation() {
		return goalsituation;
	}

	public void setGoalsituation(Goalsituation goalsituation) {
		this.goalsituation = goalsituation;
	}

	public GoalsituationService getGoalsituationService() {
		return goalsituationService;
	}

	public void setGoalsituationService(GoalsituationService goalsituationService) {
		this.goalsituationService = goalsituationService;
	}

	public Integer getGoalsituation_id() {
		return goalsituation_id;
	}

	public void setGoalsituation_id(Integer goalsituation_id) {
		this.goalsituation_id = goalsituation_id;
	}

	public String insertGoalsituation() {
		System.out.println(goalsituation);
		if (goalsituationService.insertGoalsituation(goalsituation)) {
			return "success";
		} else {
			return "error";
		}
	}

	public String selectGoalsituationAll() {
		List<Goalsituation> list = goalsituationService.selectGoalsituationAll();
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return "success";
	}

	public String selectityGoalsituation() {
		goalsituation = goalsituationService.selectityGoalsituation(goalsituation_id);
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("goalsituation", goalsituation);
		return "success";
	}

	public String updateGoalsituation() {
		if (goalsituationService.updateGoalsituation(goalsituation)) {
			return "success";
		} else {
			return "error";
		}
	}

	public String deleteGoalsituation() {
		if (goalsituationService.deleteGoalsituation(goalsituation_id)) {
			return "success";
		} else {
			return "error";
		}
	}

	@Override
	public Goalsituation getModel() {
		// TODO Auto-generated method stub
		return goalsituation;
	}

}
