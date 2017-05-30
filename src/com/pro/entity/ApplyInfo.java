package com.pro.entity;

import com.base.common.util.EntityAnnotation;
import com.base.sys.entity.BaseEntity;

public class ApplyInfo extends BaseEntity {

	@EntityAnnotation(needShow=false,beanName="入社申请")
	private int id;
	@EntityAnnotation(desc="学生ID",needShow=false,isQueryField=false)
	private String stuid;
	
	@EntityAnnotation(desc="用户",rule="CHAR_M_120",needUpdate=false,isQueryField=true)
	private String stuname;
	
	@EntityAnnotation(desc="状态",  needUpdate=true, isQueryField = true, rule ="SELE_M;提交申请;审核通过;审核未过")
	private String status;
	
	@EntityAnnotation(desc="头像",rule="CHAR_M_120",needUpdate=false,isQueryField=true)
	private String file;
	@EntityAnnotation(desc="姓名",  needUpdate=true, isQueryField = true, rule ="SELE_M;提交申请;审核通过;审核未过")
	private String name;
	//学号，院系，班级，宿舍，入学日期
	@EntityAnnotation(desc="学号",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String stunum;
	
	@EntityAnnotation(desc="院系",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String college;

	@EntityAnnotation(desc="班级",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String classinfo;
	
	@EntityAnnotation(desc="宿舍",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String dormitory;
	
	@EntityAnnotation(desc="专业",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String zy;
	@EntityAnnotation(desc="部门",  needUpdate=true, isQueryField = true, rule ="SELE_M;提交申请;审核通过;审核未过")
	private String bumen;
	@EntityAnnotation(desc="曲风",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String qf;
	
	
	@EntityAnnotation(desc="性别",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String sex;
	
	@EntityAnnotation(desc="籍贯",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String jg;
	
	@EntityAnnotation(desc="入学日期",rule="DATE_M")
	private String date;
	
	@EntityAnnotation(desc="入学日期",rule="DATE_M")
	private String bmdate;

	@EntityAnnotation(desc="是否优秀",rule="CHAR_M_120")
	private String isgood;
	
	//@EntityAnnotation(desc="社团",  needUpdate=false, isQueryField = false, rule ="SELE_M;提交申请;审核通过;审核未过")
	//private String status;
	
	
	@EntityAnnotation(desc="申请说明",  needUpdate=true, isQueryField = false, rule ="CHAR_N")
	private String content;
	@EntityAnnotation(desc="备注",  needUpdate=true, isQueryField = false, rule ="CHAR_N")
	private String remark;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStuid() {
		return stuid;
	}
	public void setStuid(String stuid) {
		this.stuid = stuid;
	}
	public String getStuname() {
		return stuname;
	}
	public void setStuname(String stuname) {
		this.stuname = stuname;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStunum() {
		return stunum;
	}
	public void setStunum(String stunum) {
		this.stunum = stunum;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getClassinfo() {
		return classinfo;
	}
	public void setClassinfo(String classinfo) {
		this.classinfo = classinfo;
	}
	public String getDormitory() {
		return dormitory;
	}
	public void setDormitory(String dormitory) {
		this.dormitory = dormitory;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getZy() {
		return zy;
	}
	public void setZy(String zy) {
		this.zy = zy;
	}
	public String getQf() {
		return qf;
	}
	public void setQf(String qf) {
		this.qf = qf;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getJg() {
		return jg;
	}
	public void setJg(String jg) {
		this.jg = jg;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBumen() {
		return bumen;
	}
	public void setBumen(String bumen) {
		this.bumen = bumen;
	}
	public String getBmdate() {
		return bmdate;
	}
	public void setBmdate(String bmdate) {
		this.bmdate = bmdate;
	}
	public String getIsgood() {
		return isgood;
	}
	public void setIsgood(String isgood) {
		this.isgood = isgood;
	}
}
