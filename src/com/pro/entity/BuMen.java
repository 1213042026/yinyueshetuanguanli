package com.pro.entity;

import com.base.common.util.EntityAnnotation;
import com.base.sys.entity.BaseEntity;

public class BuMen extends BaseEntity {

	@EntityAnnotation(needShow=false,beanName="部门")
	private int id;
	
	
	@EntityAnnotation(desc="部门名称",needUpdate=false, isQueryField = false,rule="CHAR_M_1024")
	private String name;
	
	
	@EntityAnnotation(desc="部门介绍",  needUpdate=true, isQueryField = false, rule ="CHAR_N")
	private String remark;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getRemark() {
		return remark;
	}


	public void setRemark(String remark) {
		this.remark = remark;
	}

	
	
}
