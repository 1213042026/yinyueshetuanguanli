package com.pro.action;
import com.base.common.util.Const;
import com.base.common.util.EntityAnnotation;
import com.pro.entity.PingLun;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.base.web.tag.BTAGI18N;
import com.opensymphony.xwork2.ActionContext;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;
import javax.annotation.Resource;
import com.base.common.util.CommonUtil;
import org.springframework.stereotype.Controller;
import java.util.List;
import com.pro.manager.PingLunManager;
@Controller
public class PingLunAction {
	@Resource
	private PingLunManager pingLunManager;
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

	
	
	

	private DefaultQueryCondition condition;
	private Page page;
	public String add() {
		PingLun entity = new PingLun();
		try {
			entity.setDate(this.date);
			entity.setContent(this.content);
			entity.setMusicid(this.musicid);
			entity.setMusicname(this.musicname);
			entity.setPinlunid(this.pinlunid);
			entity.setPinglunname(this.pinglunname);
			this.pingLunManager.add(entity);
			String returnMsg = BTAGI18N.getI18NValue("add.success", "common");
			ActionContext.getContext().put(Const.Notification.SUCCESS, returnMsg);
			return Const.Pages.MAPPING_URL;
		} catch(Exception e) {
			ActionContext.getContext().put(Const.Notification.ERROR, e.getMessage());
			return Const.Pages.MAPPING_URL;
		}
	}

	public String del() {
		this.pingLunManager.deleteViaId(this.id);
		ActionContext.getContext().put(Const.Notification.SUCCESS, BTAGI18N.getI18NValue("delete.success", "common"));
		return Const.Pages.QUERY_DO;
	}

	public String dels() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids = request.getParameter("ids");
		String[] idList = ids.split(",");
		int len = idList.length;
		for(int i=0;i<len;i++) {
			this.pingLunManager.deleteViaId(Integer.parseInt(idList[i]));
		}
		return Const.Pages.QUERY_DO;
	}

	public String update() {
		PingLun entity = this.pingLunManager.queryById(this.id);
		entity.setDate(this.date);
		entity.setContent(this.content);
		entity.setMusicid(this.musicid);
		entity.setPinlunid(this.pinlunid);
		this.pingLunManager.update(entity);
		return Const.Pages.QUERY_DO;
	}

	public String edit() {
		PingLun entity = this.pingLunManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String detail() {
		PingLun entity = this.pingLunManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String query() {
		PingLun entity = new PingLun();
		entity.setMusicname(this.musicname);
		entity.setPinglunname(this.pinglunname);
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
		Page<PingLun> page = this.pingLunManager.getRecords(condition);
		List<PingLun> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
	}

	public String query2() {
		return this.query();
 }	public String select() {
		return this.query();
 }}