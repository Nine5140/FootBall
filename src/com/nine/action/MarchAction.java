package com.nine.action;

import java.util.List;

import javax.servlet.ServletRequest;

import org.apache.struts2.ServletActionContext;

import com.nine.beans.March;
import com.nine.beans.Team;
import com.nine.service.MarchService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class MarchAction extends ActionSupport implements ModelDriven<March> {
	private March march = new March();
	private MarchService marchService;
	private Integer march_id;

	public March getMarch() {
		return march;
	}

	public void setMarch(March march) {
		this.march = march;
	}

	public MarchService getMarchService() {
		return marchService;
	}

	public void setMarchService(MarchService marchService) {
		this.marchService = marchService;
	}

	public Integer getMarch_id() {
		return march_id;
	}

	public void setMarch_id(Integer march_id) {
		this.march_id = march_id;
	}

	public String insertMarch() {
		if (marchService.insertMarch(march)) {
			return "success";
		} else {
			return "error";
		}
	}

	public String selectMarchAll() {
		List<March> list = marchService.selectMarchAll();
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return "success";
	}
	public String selectMarch() {
		List<March> list = marchService.selectMarchAll();
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("list", list);
		return "success";
	}

	public String selectityMarch() {
		march = marchService.selectityMarch(march_id);
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("march", march);
		return "success";
	}
	public String selectityMarchj() {
		march = marchService.selectityMarch(march_id);
		ServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("march", march);
		return "success";
	}
	public String updateMarch() {
		if (marchService.updateMarch(march)) {
			return "success";
		} else {
			return "error";
		}
	}
	
	public String deleteMarch() {
		if (marchService.deleteMarch(march_id)) {
			return "success";
		} else {
			return "error";
		}
	}
	
	@Override
	public March getModel() {
		// TODO Auto-generated method stub
		return march;
	}

}
