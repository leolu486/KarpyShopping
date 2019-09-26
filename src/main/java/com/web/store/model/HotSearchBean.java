package com.web.store.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "HotSearch")
public class HotSearchBean {
	
	private String searchBy;
	private Integer searchCount;
	
	public HotSearchBean() {
		// TODO Auto-generated constructor stub
	}

	@Id
	public String getSearchBy() {
		return searchBy;
	}

	public void setSearchBy(String searchBy) {
		this.searchBy = searchBy;
	}

	public Integer getSearchCount() {
		return searchCount;
	}

	public void setSearchCount(Integer searchCount) {
		this.searchCount = searchCount;
	}

}
