package com.pro.entity;

import com.base.common.util.EntityAnnotation;
import com.base.sys.entity.BaseEntity;

public class CollectMusic extends BaseEntity {

	@EntityAnnotation(needShow=false,beanName="入社申请")
	private int id;
	@EntityAnnotation(desc="用户ID",needShow=false,isQueryField=false)
	private String stuid;
	
	@EntityAnnotation(desc="用户",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String stuname;
	
	@EntityAnnotation(desc="歌曲ID",needShow=false,isQueryField=false)
	private String musicid;
	
	@EntityAnnotation(desc="歌曲类别",needUpdate=true,isQueryField=true,rule ="SELE_M;翻唱;原创")
	private String types;
	
	@EntityAnnotation(desc="歌曲名称",rule="CHAR_M_120",isDetailLink=true,needUpdate=false,isQueryField=true)
	private String musicname;
	
	@EntityAnnotation(desc="上传",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String file;
	
	@EntityAnnotation(desc="歌词",rule="CHAR_N_120",needUpdate=false,isQueryField=false)
	private String content;

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

	public String getMusicid() {
		return musicid;
	}

	public void setMusicid(String musicid) {
		this.musicid = musicid;
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

	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
	
	
}
