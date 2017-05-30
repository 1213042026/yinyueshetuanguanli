package com.pro.entity;

import com.base.common.util.EntityAnnotation;
import com.base.sys.entity.BaseEntity;

public class MusicInfo extends BaseEntity {

	@EntityAnnotation(needShow=false,beanName="歌曲信息")
	private int id;
	
	@EntityAnnotation(desc="歌曲类别",needUpdate=true,isQueryField=true,rule ="SELE_M;翻唱;原创")
	private String types;
	
	@EntityAnnotation(desc="歌曲名称",rule="CHAR_M_120",isDetailLink=true,needUpdate=false,isQueryField=true)
	private String musicname;
	
	@EntityAnnotation(desc="歌词",rule="CHAR_N_120",needUpdate=true,isQueryField=false)
	private String content;
	@EntityAnnotation(desc="作词者",rule="CHAR_N_120",needUpdate=true,isQueryField=false)
	private String zuociz;
	@EntityAnnotation(desc="编曲者",rule="CHAR_N_120",needUpdate=true,isQueryField=false)
	private String bqz;
	@EntityAnnotation(desc="演唱者",rule="CHAR_N_120",needUpdate=true,isQueryField=false)
	private String ycz;
	@EntityAnnotation(desc="原唱",rule="CHAR_N_120",needUpdate=true,isQueryField=false)
	private String yuanchang;

	@EntityAnnotation(desc="上传",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String file;
	
	@EntityAnnotation(desc="发布者id",  needShow = false)
	private String userid;
	
	@EntityAnnotation(desc="发布者",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String username;
	
	@EntityAnnotation(desc="人气歌曲",needUpdate=true,isQueryField=true,rule ="SELE_M;否;是")
	private String renqi;
	
	@EntityAnnotation(desc="推荐歌曲",needUpdate=true,isQueryField=true,rule ="SELE_M;否;是")
	private String tuijian;
	
	@EntityAnnotation(desc="发布日期",rule="DATE_M")
	private String date;
	
	@EntityAnnotation(desc="审核",needUpdate=true,isQueryField=true,rule ="SELE_M;提交;通过;未过")
	private String shenhe;
	
	@EntityAnnotation(desc="备注",  needUpdate=true, isQueryField = false, rule ="CHAR_N")
	private String remark;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

	public String getZuociz() {
		return zuociz;
	}

	public void setZuociz(String zuociz) {
		this.zuociz = zuociz;
	}

	public String getBqz() {
		return bqz;
	}

	public void setBqz(String bqz) {
		this.bqz = bqz;
	}

	public String getYcz() {
		return ycz;
	}

	public void setYcz(String ycz) {
		this.ycz = ycz;
	}

	public String getYuanchang() {
		return yuanchang;
	}

	public void setYuanchang(String yuanchang) {
		this.yuanchang = yuanchang;
	}

	public String getTypes() {
		return types;
	}

	public void setTypes(String types) {
		this.types = types;
	}

	public String getMusicname() {
		return musicname;
	}

	public void setMusicname(String musicname) {
		this.musicname = musicname;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRenqi() {
		return renqi;
	}

	public void setRenqi(String renqi) {
		this.renqi = renqi;
	}

	public String getTuijian() {
		return tuijian;
	}

	public void setTuijian(String tuijian) {
		this.tuijian = tuijian;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getShenhe() {
		return shenhe;
	}

	public void setShenhe(String shenhe) {
		this.shenhe = shenhe;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
}
