package com.pro.entity;

import com.base.common.util.EntityAnnotation;

public class Baoming {
	@EntityAnnotation(beanName="id", needShow = false)
	private int id;
	
	@EntityAnnotation(desc="活动id",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String huoDongId;
	@EntityAnnotation(desc="用户id",  needUpdate=true, isQueryField = true, rule ="CHAR_M")
	private String userId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getHuoDongId() {
		return huoDongId;
	}
	public void setHuoDongId(String huoDongId) {
		this.huoDongId = huoDongId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public Baoming(String huoDongId, String userId) {
		super();
		this.huoDongId = huoDongId;
		this.userId = userId;
	}
	public Baoming() {
		super();
	}
	
	
}
