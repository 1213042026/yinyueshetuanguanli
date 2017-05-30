package com.pro.action;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.stereotype.Controller;

import com.base.common.util.CommonUtil;
import com.base.common.util.Const;
import com.base.common.util.EntityAnnotation;
import com.base.common.util.SessionManager;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.base.web.tag.BTAGI18N;
import com.opensymphony.xwork2.ActionContext;
import com.pro.entity.ApplyInfo;
import com.pro.entity.Baoming;
import com.pro.entity.Huodong;
import com.pro.entity.ZhaoPin;
import com.pro.manager.ApplyInfoManager;
import com.pro.manager.HuodongManager;
import com.pro.manager.ZhaoPinManager;
@Controller
public class ZhaoPinAction {
	@Resource
	private ZhaoPinManager zhaoPinManager;
	@Resource
	private ApplyInfoManager applyInfoManager;
	@Resource
	private HuodongManager huodongManager;
 private int id;
 


 @EntityAnnotation(desc="招募人数",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String num;
 @EntityAnnotation(desc="活动期限",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String date;
	@EntityAnnotation(desc="标题",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String title;
	@EntityAnnotation(desc="内容",  needUpdate=true, isQueryField = true, rule ="CHAR_M")
	private String content;
	
	@EntityAnnotation(desc="发布者id",  needShow = false)
	private String userid;
	
	@EntityAnnotation(desc="发布者",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String username;
	
	@EntityAnnotation(desc="招募对象",  needUpdate=false, isQueryField = true, rule ="CHAR_M")
	private String zmdx;
	@EntityAnnotation(desc="时间", needUpdate=false, rule ="DATE_N")
	private String datetime;

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

	
	
	

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime(String datetime) {
		this.datetime = datetime;
	}





	private DefaultQueryCondition condition;
	private Page page;
	public String add() {
		ZhaoPin entity = new ZhaoPin();
		try {
			entity.setContent(this.content);
			entity.setTitle(this.title);
			entity.setZmdx(this.zmdx);
			System.out.println((String)ActionContext.getContext().getSession().get("u"));
			entity.setUserid((String)ActionContext.getContext().getSession().get("u"));
			entity.setUsername(this.username);
			entity.setNum(this.num);
			SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			entity.setDatetime(s.format(new Date()));
			this.zhaoPinManager.add(entity);
			String returnMsg = BTAGI18N.getI18NValue("add.success", "common");
			ActionContext.getContext().put(Const.Notification.SUCCESS, returnMsg);
			return Const.Pages.MAPPING_URL;
		} catch(Exception e) {
			ActionContext.getContext().put(Const.Notification.ERROR, e.getMessage());
			return Const.Pages.MAPPING_URL;
		}
	}

	public String del() {
		this.zhaoPinManager.deleteViaId(this.id);
		ActionContext.getContext().put(Const.Notification.SUCCESS, BTAGI18N.getI18NValue("delete.success", "common"));
		return Const.Pages.QUERY_DO;
	}
	
	public String del1() {
		this.huodongManager.deleteViaId(this.id);
		ActionContext.getContext().put(Const.Notification.SUCCESS, BTAGI18N.getI18NValue("delete.success", "common"));
		return "queryDO1";
	}

	public String dels() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids = request.getParameter("ids");
		String[] idList = ids.split(",");
		int len = idList.length;
		for(int i=0;i<len;i++) {
			this.zhaoPinManager.deleteViaId(Integer.parseInt(idList[i]));
		}
		return Const.Pages.QUERY_DO;
	}

	public String update() {
		ZhaoPin entity = this.zhaoPinManager.queryById(this.id);
		entity.setContent(this.content);
		entity.setUserid(this.userid);
		this.zhaoPinManager.update(entity);
		return Const.Pages.QUERY_DO;
	}
	
	public String update1() {
		Huodong entity = this.huodongManager.queryById(this.id);
		entity.setContent(this.content);
		entity.setUserid(this.userid);
		this.huodongManager.update(entity);
		return "queryDO1";
	}

	public String edit() {
		ZhaoPin entity = this.zhaoPinManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}
	
	public String edit1() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String  f=request.getParameter("flag");
		if("2".equals(f)){
			  String  id=request.getParameter("id");
			  String hql="from Baoming where 1=1 and huoDongId='"+id+"'";
			  List<Baoming>  list=this.zhaoPinManager.queryByHql(hql);
			  List<ApplyInfo>  list2=new ArrayList<ApplyInfo> ();
			  for(Baoming b:list){
				  ApplyInfo a =new ApplyInfo();
				  String stuid=b.getUserId();
				  String hql2 ="from ApplyInfo where 1=1 and stuid='"+stuid+"'";
				  a = 	(ApplyInfo) this.applyInfoManager.queryByHql(hql2).get(0);
				  list2.add(a);
			  }
			  ActionContext.getContext().put(Const.Action.PAGE_REUSLT, list2);
			  return "cs";
		}
		Huodong entity = this.huodongManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String detail() {
		ZhaoPin entity = this.zhaoPinManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}
	
	public String detail4front1() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String flag=request.getParameter("flag");
		if("baoming".equals(flag)){
			
			String userId=(String)ActionContext.getContext().getSession().get("u");
			if(userId==null){
				ActionContext.getContext().put(Const.Notification.ERROR, "请先登录！");
				return Const.Pages.MAPPING_URL;
			}
			
			String id=request.getParameter("id");
			Baoming m=new Baoming(id,userId);
			String hql ="From Baoming where 1=1 and huoDongId='"+id+"' and userId ='"+userId+"'";
			List<Baoming>  list=this.zhaoPinManager.queryByHql(hql);
			
			String hql2 ="From ApplyInfo where 1=1  and stuid ='"+userId+"'";
			List<ApplyInfo>  list2=this.zhaoPinManager.queryByHql(hql2);
			if(list2.size()==0){
				ActionContext.getContext().put(Const.Notification.ERROR, "你不是社团成员无法报名");
				return Const.Pages.MAPPING_URL;
			}
			String hql3 ="From Baoming where 1=1 and huoDongId='"+id+"'";
			List<Baoming>  list3=this.zhaoPinManager.queryByHql(hql3);
			String hql4 ="From Huodong where id='"+id+"'";
			List<Huodong>  list4=this.zhaoPinManager.queryByHql(hql4);
			if(list4.size()!=0){
				if(list3.size()>=Integer.parseInt(list4.get(0).getNum())){
					ActionContext.getContext().put(Const.Notification.ERROR, "报名人数已报完，无法报名");
					return Const.Pages.MAPPING_URL;
				}
			
			SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			if(s.format(new Date()).compareTo(list4.get(0).getDate())>0){
				ActionContext.getContext().put(Const.Notification.ERROR, "报名期限已过，无法报名");
				return Const.Pages.MAPPING_URL;
			}
			if(list.size()>0){
				ActionContext.getContext().put(Const.Notification.ERROR, "请勿重复报名！");
				return Const.Pages.MAPPING_URL;
			}
			this.zhaoPinManager.add2(m);
			ActionContext.getContext().put(Const.Notification.SUCCESS, "报名成功！");
			}
			
			return Const.Pages.MAPPING_URL;
		}
		Huodong entity = this.huodongManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}
	
	public String detail4front() {
		ZhaoPin entity = this.zhaoPinManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String query() {
		ZhaoPin entity = new ZhaoPin();
		entity.setContent(this.content);
		entity.setTitle(this.title);
		entity.setUsername(this.username);
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
		Page<ZhaoPin> page = this.zhaoPinManager.getRecords(condition);
		List<ZhaoPin> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
	}
	public String query1() {
		Huodong entity = new Huodong();
		entity.setContent(this.content);
		entity.setTitle(this.title);
		entity.setUsername(this.username);
		entity.setNum(this.num);
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
		Page<Huodong> page = this.huodongManager.getRecords(condition);
		List<Huodong> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
	}
	
	
  public String query3(){
	  HttpServletRequest request = ServletActionContext.getRequest();
	  String  id=request.getParameter("id");
	  String hql="from Baoming where 1=1 and huoDongId='"+id+"'";
	  List<Baoming>  list=this.zhaoPinManager.queryByHql(hql);
	  ActionContext.getContext().put(Const.Action.PAGE_REUSLT, list);
	  return "cs";
  }
	
	public String query2() {
		return this.query();
 }	public String select() {
		return this.query();
 }
 
	public String query4front() {
		ZhaoPin entity = new ZhaoPin();
		//entity.setContent(this.content);
		//entity.setTitle(this.title);
		//entity.setUsername(this.username);
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
		Page<ZhaoPin> page = this.zhaoPinManager.getRecords(condition);
		List<ZhaoPin> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
	}
	
	public String query4front1() {
		Huodong entity = new Huodong();
		//entity.setContent(this.content);
		//entity.setTitle(this.title);
		//entity.setUsername(this.username);
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
		Page<Huodong> page = this.huodongManager.getRecords(condition);
		List<Huodong> resultList = page.getList();
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, resultList);
		ActionContext.getContext().put(Const.Action.PAGINATION_INFO,page.getNavigation());
		ActionContext.getContext().put(Page.CURRENT_PAGE, page.getCurrentPage());
		return Const.Pages.MAPPING_URL;
	}
	
	
	public  String  add1(){
		Huodong entity = new Huodong();
		try {
			entity.setContent(this.content);
			entity.setTitle(this.title);
			entity.setUserid(SessionManager.getAdminUsername());
			entity.setUsername(SessionManager.getAdminUsername());
			entity.setNum(this.num);
			entity.setDate(this.date);
			SimpleDateFormat sf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			entity.setDatetime(sf.format(new Date()));
			this.zhaoPinManager.add1(entity);
			String returnMsg = BTAGI18N.getI18NValue("add.success", "common");
			ActionContext.getContext().put(Const.Notification.SUCCESS, returnMsg);
			return Const.Pages.MAPPING_URL;
		} catch(Exception e) {
			System.out.println(e);
			ActionContext.getContext().put(Const.Notification.ERROR, e.getMessage());
			return Const.Pages.MAPPING_URL;
		}
	}

	public String getZmdx() {
		return zmdx;
	}

	public void setZmdx(String zmdx) {
		this.zmdx = zmdx;
	}

	public String getNum() {
		return num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	
	
	
}