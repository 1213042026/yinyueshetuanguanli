package com.z.plugin.bbss;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.base.common.util.CommonUtil;
import com.base.common.util.Const;
import com.base.common.util.EntityAnnotation;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.base.sys.entity.Admin;
import com.base.sys.manager.AdminManager;
import com.base.web.tag.BTAGI18N;
import com.opensymphony.xwork2.ActionContext;
import com.pro.entity.ApplyInfo;
@Controller
public class TitleAction {
	@Resource
	private TitleManager titleManager;
 private int id;
	
	
	@EntityAnnotation(desc="标题",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String title;
	@EntityAnnotation(desc="内容",  needUpdate=true, isQueryField = true, rule ="CHAR_M")
	private String content;
	
	@EntityAnnotation(desc="发布者id",  needShow = false)
	private String userid;
	
	@EntityAnnotation(desc="发布者",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String username;
	
	@EntityAnnotation(desc="时间", needUpdate=false, rule ="DATE_N")
	private Date datetime;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public Date getDatetime() {
		return datetime;
	}

	public void setDatetime(Date datetime) {
		this.datetime = datetime;
	}
	
	

	private DefaultQueryCondition condition;
	private Page page;
	
	@Resource
	private MessageManager messageManager;
	public String tofatie() {
		System.out.println("tofatie*****************************************************************");
		return "fatie";
	}
	public String add() {
		Title entity = new Title();
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			String userid =  "admin";
			if(request.getSession().getAttribute("u") != null){
				 userid = (String) request.getSession().getAttribute("u");
			}
			
			entity.setContent(this.content);
			entity.setUserid(userid);
			//entity.setUsername(this.username);
			entity.setUsername((String) request.getSession().getAttribute("frontUsername"));
			SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			entity.setDatetime(s.format(new Date()));
			entity.setTitle(this.title);
			this.titleManager.add(entity);
			content="";
			userid ="";
			username = "";
			datetime =null;
			title = null;
			String returnMsg = BTAGI18N.getI18NValue("add.success", "common");
			ActionContext.getContext().put(Const.Notification.SUCCESS, returnMsg);
			return Const.Pages.MAPPING_URL;
		} catch(Exception e) {
			ActionContext.getContext().put(Const.Notification.ERROR, e.getMessage());
			content="";
			userid ="";
			username = "";
			datetime =null;
			title = null;
			return Const.Pages.MAPPING_URL;
		}
	}

	public String add4front() {
		Title entity = new Title();
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			String userid =  "admin";
			if(request.getSession().getAttribute("frontUsername") != null){
				 userid = (String) request.getSession().getAttribute("frontUsername");
			}
			
			entity.setContent(this.content);
			entity.setUserid((String)request.getSession().getAttribute("u"));
			//entity.setUsername(this.username);
			entity.setUsername(userid);
			Date dd = new Date();
			SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			
			SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			entity.setDatetime(s.format(new Date()));
			entity.setTitle(this.title);
			this.titleManager.add(entity);
			content="";
			userid ="";
			username = "";
			datetime =null;
			title = null;
			String returnMsg = BTAGI18N.getI18NValue("add.success", "common");
			ActionContext.getContext().put(Const.Notification.SUCCESS, returnMsg);
			return "queryDO4front";
		} catch(Exception e) {
			ActionContext.getContext().put(Const.Notification.ERROR, e.getMessage());
			content="";
			userid ="";
			username = "";
			datetime =null;
			title = null;
			return Const.Pages.MAPPING_URL;
		}
	}
	
	public String del() {
		this.titleManager.deleteViaId(this.id);
		ActionContext.getContext().put(Const.Notification.SUCCESS, BTAGI18N.getI18NValue("delete.success", "common"));
		return "delDO";
	}

	public String dels() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids = request.getParameter("ids");
		String[] idList = ids.split(",");
		int len = idList.length;
		for(int i=0;i<len;i++) {
			this.titleManager.deleteViaId(Integer.parseInt(idList[i]));
		}
		return Const.Pages.QUERY_DO;
	}
	public String del4message() {
		this.messageManager.deleteViaId(this.id);
		//ActionContext.getContext().put(Const.Notification.SUCCESS, BTAGI18N.getI18NValue("delete.success", "common"));
		//return Const.Pages.QUERY_DO;
		
		Message entity = new Message();
		//entity.setContent(this.content);
		//entity.setUsername(this.username);
		entity.setTitle(this.title);
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
		Page<Message> page = this.messageManager.getRecords(condition);
		List<Message> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return "toallmessage";
	}
	
	
	public String update() {
		Title entity = this.titleManager.queryById(this.id);
		entity.setContent(this.content);
		entity.setUserid(this.userid);
		this.titleManager.update(entity);
		return Const.Pages.QUERY_DO;
	}

	public String edit() {
		Title entity = this.titleManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String edittomessage() {
		/*Title entity = this.titleManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;*/
		
		Message entity = new Message();
		//entity.setContent(this.content);
		//entity.setUsername(this.username);
		entity.setTitle(this.id+"");
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
		Page<Message> page = this.messageManager.getRecords(condition);
		List<Message> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return "toallmessage";
	}
	
	public String detail() {
		Title entity = this.titleManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String detail4gentie() throws ParseException {
		Title entity2 = this.titleManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity2);
		
		/*Message entity = new Message();
		//entity.setContent(this.content);
		//entity.setUsername(this.username);
		entity.setTitle(this.id+"");
		condition = new DefaultQueryCondition(entity);
		HttpServletRequest request = ServletActionContext.getRequest();
		String curPage = request.getParameter(Page.CURRENT_PAGE);
		String pageSize = request.getParameter(Page.PAGE_SIZE);
		if (CommonUtil.isNotEmpty(curPage)) {
			condition.setPageIndex(Integer.parseInt(curPage));
		}
		if (CommonUtil.isNotEmpty(pageSize)) {
			condition.setPageSize(Integer.parseInt(pageSize));
		}*/
		List resultList = this.messageManager.queryByHql("from Message where title='"+id+"'");
	
		//List<Message> resultList = page.getList();
		ActionContext.getContext().put("result2", resultList);
		//ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		//ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
		
		//return Const.Pages.MAPPING_URL;
	}
	
	public String huifu(){
		Message entity = new Message();
		/*Admin a=(Admin) ActionContext.getContext().getSession().get("u");
		if(a==null){
			ActionContext.getContext().put(Const.Notification.ERROR, "请登录后再");
			//return Const.Pages.MAPPING_URL;
			return "detail4gentie";
		}*/
		this.id = Integer.parseInt(title);
		try {
			HttpServletRequest request = ServletActionContext.getRequest();
			entity.setContent(this.content);
			String userid =  "游客";
			/*if(request.getSession().getAttribute("frontUsername") != null){
				 userid = (String) request.getSession().getAttribute("frontUsername");
			}*/
			
			if(request.getSession().getAttribute("u")== null){
				Title entity2 = this.titleManager.queryById(this.id);
				Date dd = new Date();
				SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity2);
				List resultList = this.messageManager.queryByHql("from Message where title='"+id+"'");
				for(int i=0;i<resultList.size(); i++){
					Message mm = (Message) resultList.get(i);
					//SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
					//mm.setDatetimestr(sfd.format(mm.getDatetime()));
					
				}
				ActionContext.getContext().put(Const.Notification.ERROR, "请登录后再评论！");
				this.content="";
				this.username="";
				this.title="";
				//return Const.Pages.MAPPING_URL;
				return "detail4gentie";
			}
			
			userid = (String) request.getSession().getAttribute("frontUsername");
			ApplyInfo a=(ApplyInfo)this.adminManager.get((String)request.getSession().getAttribute("u"));
			if(a==null){
				entity.setUsername(userid);
			}else{
				entity.setUsername(userid);
			}
			entity.setUserid((String)request.getSession().getAttribute("u"));
			
			//entity.setUserid(this.userid);
			//entity.setUsername(this.username);
			Date dd = new Date();
			SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			entity.setDatetime(s.format(new Date()));
			entity.setTitle(this.title);
			this.messageManager.add(entity);
			userid ="";
			username ="";
			content ="";
			//String returnMsg = BTAGI18N.getI18NValue("add.success", "common");
			//ActionContext.getContext().put(Const.Notification.SUCCESS, returnMsg);
			//return Const.Pages.MAPPING_URL;
			
			Title entity2 = this.titleManager.queryById(this.id);
			ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity2);
			List resultList = this.messageManager.queryByHql("from Message where title='"+id+"'");
			for(int i=0;i<resultList.size(); i++){
				Message mm = (Message) resultList.get(i);
				//SimpleDateFormat sfd = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				mm.setDatetimestr(mm.getDatetime());
				
			}
			ActionContext.getContext().put(Const.Notification.SUCCESS, "评论成功！");
			ActionContext.getContext().put("result2", resultList);
			this.content="";
			this.username="";
			this.title="";
			return "detail4gentie";
		} catch(Exception e) {
			ActionContext.getContext().put(Const.Notification.ERROR, e.getMessage());
			//return Const.Pages.MAPPING_URL;
			return "detail4gentie";
		}
	}
	@Resource
	private AdminManager adminManager;
	
	public String query() {
		Title entity = new Title();
		entity.setContent(this.content);
		entity.setUsername(this.username);
		HttpServletRequest request = ServletActionContext.getRequest();
		String loginid = (String) request.getSession().getAttribute("u");
		  entity.setUserid(loginid);
		entity.setTitle(this.title);
		condition = new DefaultQueryCondition(entity);
		String curPage = request.getParameter(Page.CURRENT_PAGE);
		String pageSize = request.getParameter(Page.PAGE_SIZE);
		if (CommonUtil.isNotEmpty(curPage)) {
			condition.setPageIndex(Integer.parseInt(curPage));
		}
		if (CommonUtil.isNotEmpty(pageSize)) {
			condition.setPageSize(Integer.parseInt(pageSize));
		}
		Page<Title> page = this.titleManager.getRecords(condition);
		List<Title> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
	}
	
	
	public String myTitle() {
		Title entity = new Title();
		String a=(String) ActionContext.getContext().getSession().get("u");
		System.out.println(a);
        entity.setUserid(a);
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
		Page<Title> page = this.titleManager.getRecords(condition);
		List<Title> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
	}

	public String query4front() {
		Title entity = new Title();
		entity.setContent(this.content);
		entity.setUsername(this.username);
		entity.setTitle(this.title);
		System.out.println(this.content+","+this.username+","+this.title);
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
		Page<Title> page = this.titleManager.getRecords(condition);
		List<Title> resultList = page.getList();
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