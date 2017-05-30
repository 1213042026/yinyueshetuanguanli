package com.pro.action;
import com.base.common.util.Const;
import com.base.common.util.EntityAnnotation;
import com.pro.entity.CollectMusic;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.base.web.tag.BTAGI18N;
import com.opensymphony.xwork2.ActionContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import javax.annotation.Resource;
import com.base.common.util.CommonUtil;
import org.springframework.stereotype.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import com.pro.manager.CollectMusicManager;
@Controller
public class CollectMusicAction {
	@Resource
	private CollectMusicManager collectMusicManager;
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
	
	
	
	

	private DefaultQueryCondition condition;
	private Page page;
	public String add() {
		CollectMusic entity = new CollectMusic();
		try {
			entity.setStuid(this.stuid);
			entity.setStuname(this.stuname);
			entity.setContent(this.content);
			entity.setMusicid(this.musicid);
			entity.setTypes(this.types);
			entity.setMusicname(this.musicname);
			entity.setFile(this.file);
			this.collectMusicManager.add(entity);
			String returnMsg = BTAGI18N.getI18NValue("add.success", "common");
			ActionContext.getContext().put(Const.Notification.SUCCESS, returnMsg);
			return Const.Pages.MAPPING_URL;
		} catch(Exception e) {
			ActionContext.getContext().put(Const.Notification.ERROR, e.getMessage());
			return Const.Pages.MAPPING_URL;
		}
	}

	public String del() {
		this.collectMusicManager.deleteViaId(this.id);
		ActionContext.getContext().put(Const.Notification.SUCCESS, BTAGI18N.getI18NValue("delete.success", "common"));
		return Const.Pages.QUERY_DO;
	}

	public String dels() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids = request.getParameter("ids");
		String[] idList = ids.split(",");
		int len = idList.length;
		for(int i=0;i<len;i++) {
			this.collectMusicManager.deleteViaId(Integer.parseInt(idList[i]));
		}
		return Const.Pages.QUERY_DO;
	}

	public String update() {
		CollectMusic entity = this.collectMusicManager.queryById(this.id);
		entity.setStuid(this.stuid);
		entity.setMusicid(this.musicid);
		entity.setTypes(this.types);
		this.collectMusicManager.update(entity);
		return Const.Pages.QUERY_DO;
	}

	public String edit() {
		CollectMusic entity = this.collectMusicManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String detail() {
		CollectMusic entity = this.collectMusicManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String query() {
		CollectMusic entity = new CollectMusic();
		entity.setTypes(this.types);
		entity.setMusicname(this.musicname);
		condition = new DefaultQueryCondition(entity);
		HttpServletRequest request = ServletActionContext.getRequest();
		String curPage = request.getParameter(Page.CURRENT_PAGE);
		String pageSize = request.getParameter(Page.PAGE_SIZE);
		if (CommonUtil.isNotEmpty(curPage)) {
			condition.setPageIndex(Integer.parseInt(curPage));
		}
		if (CommonUtil.isNotEmpty(pageSize)) {
			condition.setPageSize(Integer.parseInt(pageSize));
		}
		Page<CollectMusic> page = this.collectMusicManager.getRecords(condition);
		List<CollectMusic> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
	}

	public String query2() {
		return this.query();
 }	public String select() {
		return this.query();
 }
 
 public String query4front() {
		CollectMusic entity = new CollectMusic();
		//entity.setTypes(this.types);
		entity.setMusicname(this.musicname);
		
		HttpServletRequest request = ServletActionContext.getRequest();
		if(request.getSession().getAttribute("u") == null){
			
			entity.setStuname("----");
		}else{
			String loginid = (String) request.getSession().getAttribute("u");
			entity.setStuname(loginid);
		}
		
		condition = new DefaultQueryCondition(entity);
		//HttpServletRequest request = ServletActionContext.getRequest();
		String curPage = request.getParameter(Page.CURRENT_PAGE);
		String pageSize = request.getParameter(Page.PAGE_SIZE);
		if (CommonUtil.isNotEmpty(curPage)) {
			condition.setPageIndex(Integer.parseInt(curPage));
		}
		if (CommonUtil.isNotEmpty(pageSize)) {
			condition.setPageSize(Integer.parseInt(pageSize));
		}
		Page<CollectMusic> page = this.collectMusicManager.getRecords(condition);
		List<CollectMusic> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
	}
 
 
 public String qx() throws IOException {
	 HttpServletRequest request = ServletActionContext.getRequest();
	 HttpServletResponse response = ServletActionContext.getResponse();
	 int id=Integer.parseInt(request.getParameter("id"));
	 CollectMusic entity = new CollectMusic();
	 entity.setId(id);
	 this.collectMusicManager.deleteViaId(id);
	 ActionContext.getContext().put(Const.Notification.SUCCESS, "取消收藏成功");
	return "aa";
	}

}