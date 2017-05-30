package com.pro.entity;

import com.base.common.util.EntityAnnotation;
import com.base.sys.entity.BaseEntity;

public class PingLun extends BaseEntity {

	@EntityAnnotation(needShow=false,beanName="评论信息")
	private int id;
	
	@EntityAnnotation(desc="歌曲ID",needShow=false,isQueryField=false)
	private String musicid;

	@EntityAnnotation(desc="歌曲名称",rule="CHAR_M_120",isDetailLink=true,needUpdate=false,isQueryField=true)
	private String musicname;
	
	@EntityAnnotation(desc="内容",needUpdate=true, isQueryField = false,rule="CHAR_M_1024")
	private String content;
	
	@EntityAnnotation(desc="发布日期",rule="DATE_M")
	private String date;
	
	
	@EntityAnnotation(desc="评论者id",  needShow = false)
	private String pinlunid;
	
	@EntityAnnotation(desc="评论者",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String pinglunname;
private String datetimestr;
	
	
	
	public String getDatetimestr() {
		return datetimestr;
	}

	public void setDatetimestr(String datetimestr) {
		this.datetimestr = datetimestr;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMusicid() {
		return musicid;
	}

	public void setMusicid(String musicid) {
		this.musicid = musicid;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getPinlunid() {
		return pinlunid;
	}

	public void setPinlunid(String pinlunid) {
		this.pinlunid = pinlunid;
	}

	public String getPinglunname() {
		return pinglunname;
	}

	public void setPinglunname(String pinglunname) {
		this.pinglunname = pinglunname;
	}
	
	/*@EntityAnnotation(desc="发布者id",  needShow = false)
	private String userid;
	
	@EntityAnnotation(desc="发布者",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String username;*/
	
	/*@EntityAnnotation(desc="日志id",  needShow = false)
	private String rizhiid;
	
	
	@EntityAnnotation(desc="日志标题",rule="CHAR_M_120",isDetailLink=true,needUpdate=false,isQueryField=true)
	private String title;*/
	
	/*@EntityAnnotation(desc="备注",  needUpdate=true, isQueryField = false, rule ="CHAR_N")
	private String remark;*/

	
	
	
}
