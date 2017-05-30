package com.pro.action;
import com.base.common.util.Const;
import com.base.common.util.EntityAnnotation;
import com.pro.entity.ApplyInfo;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.base.sys.entity.Admin;
import com.base.sys.manager.AdminManager;
import com.base.web.tag.BTAGI18N;
import com.opensymphony.xwork2.ActionContext;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import javax.annotation.Resource;

import com.base.common.util.CommonUtil;

import org.springframework.stereotype.Controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.pro.manager.ApplyInfoManager;
@Controller
public class ApplyInfoAction {
	@Resource
	private ApplyInfoManager applyInfoManager;
 private int id;
	@EntityAnnotation(desc="学生ID",needShow=false,isQueryField=false)
	private String stuid;
	
	@EntityAnnotation(desc="入学日期",rule="DATE_M")
	private String bmdate;
	@EntityAnnotation(desc="用户",rule="CHAR_M_120",needUpdate=false,isQueryField=true)
	private String stuname;
	
	@EntityAnnotation(desc="状态",  needUpdate=true, isQueryField = true, rule ="SELE_M;提交申请;审核通过;审核未过")
	private String status;
	@EntityAnnotation(desc="姓名",  needUpdate=true, isQueryField = true, rule ="SELE_M;提交申请;审核通过;审核未过")
	private String name;
	
	@EntityAnnotation(desc="部门",  needUpdate=true, isQueryField = true, rule ="SELE_M;提交申请;审核通过;审核未过")
	private String bumen;
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
	
	@EntityAnnotation(desc="曲风",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String qf;
	
	@EntityAnnotation(desc="入学日期",rule="DATE_M")
	private String date;
	

	@EntityAnnotation(desc="头像",rule="CHAR_M_120",needUpdate=false,isQueryField=true)
	private String file;
	
	//@EntityAnnotation(desc="社团",  needUpdate=false, isQueryField = false, rule ="SELE_M;提交申请;审核通过;审核未过")
	//private String status;
	
	@EntityAnnotation(desc="性别",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String sex;
	
	@EntityAnnotation(desc="籍贯",rule="CHAR_M_120",needUpdate=false,isQueryField=false)
	private String jg;
	@EntityAnnotation(desc="申请说明",  needUpdate=true, isQueryField = false, rule ="CHAR_N")
	private String content;
	@EntityAnnotation(desc="备注",  needUpdate=true, isQueryField = false, rule ="CHAR_N")
	private String remark;
	@EntityAnnotation(desc="是否优秀",rule="CHAR_M_120")
	private String isgood;
	public String getIsgood() {
		return isgood;
	}
	public void setIsgood(String isgood) {
		this.isgood = isgood;
	}
	public int getId() {
		return id;
	}
	
	public String getFile() {
		return file;
	}

	public void setFile(String file) {
		this.file = file;
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




	private DefaultQueryCondition condition;
	private Page page;
	public String add() {
		ApplyInfo entity = new ApplyInfo();
		Admin admin = this.adminManager.getAdminByUsername(CommonUtil.genUTF8String(this.stuid));
		try {
			entity.setStuid(this.stuid);
			entity.setStuname(this.stuname);
			entity.setStatus(this.status);
			entity.setStunum(this.stunum);
			entity.setCollege(this.college);
			entity.setFile(admin.getFile());
			entity.setClassinfo(this.classinfo);
			entity.setZy(this.zy);
			entity.setQf(this.qf);
			entity.setJg(this.jg);
			entity.setSex(this.sex);
			entity.setDormitory(this.dormitory);
			entity.setDate(this.date);
			entity.setContent(this.content);
			entity.setRemark(this.remark);
			this.applyInfoManager.add(entity);
			String returnMsg = BTAGI18N.getI18NValue("add.success", "common");
			ActionContext.getContext().put(Const.Notification.SUCCESS, returnMsg);
			return Const.Pages.MAPPING_URL;
		} catch(Exception e) {
			ActionContext.getContext().put(Const.Notification.ERROR, e.getMessage());
			return Const.Pages.MAPPING_URL;
		}
	}

	public String add4front() {
		ApplyInfo entity = new ApplyInfo();
		HttpServletRequest request = ServletActionContext.getRequest();
		if(request.getSession().getAttribute("u") == null){
			ActionContext.getContext().put(Const.Notification.ERROR, "请重新登陆！");
			return Const.Pages.MAPPING_URL;
		}
		String loginid = (String) request.getSession().getAttribute("u");
		try {
			ApplyInfo a=(ApplyInfo)adminManager.get(loginid);
			Admin admin = this.adminManager.getAdminByUsername(CommonUtil.genUTF8String(loginid));
			if(a!=null){
				ActionContext.getContext().put(Const.Notification.ERROR, "您已加入社团，请勿重复加入！");
				return Const.Pages.MAPPING_URL;
			}
			
			if(this.stunum.equals("") || this.stunum==null){
				ActionContext.getContext().put(Const.Notification.ERROR, "学号不能为空");
				return Const.Pages.MAPPING_URL;
			}
			entity.setStuid(loginid);
			entity.setStuname(admin.getRemark());
			entity.setName(this.name);
			entity.setFile(admin.getFile());
			entity.setBumen(this.bumen);
			entity.setStatus(this.status);
			SimpleDateFormat s=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			entity.setBmdate(s.format(new Date()));
			entity.setStunum(this.stunum);
			entity.setZy(this.zy);
			entity.setQf(this.qf);
			entity.setJg(this.jg);
			entity.setSex(this.sex);
			entity.setCollege(this.college);
			entity.setClassinfo(this.classinfo);
			entity.setDormitory(this.dormitory);
			entity.setDate(this.date);
			entity.setContent(this.content);
			entity.setRemark(this.remark);
			this.applyInfoManager.add(entity);
			String returnMsg = BTAGI18N.getI18NValue("add.success", "common");
			ActionContext.getContext().put(Const.Notification.SUCCESS, returnMsg);
			return Const.Pages.MAPPING_URL;
		} catch(Exception e) {
			ActionContext.getContext().put(Const.Notification.ERROR, e.getMessage());
			return Const.Pages.MAPPING_URL;
		}
	}
	
	public String del() {
		this.applyInfoManager.deleteViaId(this.id);
		ActionContext.getContext().put(Const.Notification.SUCCESS, BTAGI18N.getI18NValue("delete.success", "common"));
		return Const.Pages.QUERY_DO;
	}

	public String dels() {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids = request.getParameter("ids");
		String[] idList = ids.split(",");
		int len = idList.length;
		for(int i=0;i<len;i++) {
			this.applyInfoManager.deleteViaId(Integer.parseInt(idList[i]));
		}
		return Const.Pages.QUERY_DO;
	}
	@Resource
	private AdminManager adminManager;

	public String update() {
		
		ApplyInfo entity = this.applyInfoManager.queryById(this.id);
		System.out.println(entity);
		System.out.println(entity.getStuname());
		if("审核通过".equals(status)){
			Admin aa = adminManager.getAdminByUsername(entity.getStuid());
			aa.setIsvip("Y");
		}
		entity.setIsgood(this.isgood);
		//entity.setStuid(this.stuid);
		entity.setStatus(this.status);
		//entity.setDate(this.date);
		entity.setContent(this.content);
		entity.setRemark(this.remark);
		this.applyInfoManager.update(entity);
		return Const.Pages.QUERY_DO;
	}

	public String edit() {
		ApplyInfo entity = this.applyInfoManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String detail() {
		ApplyInfo entity = this.applyInfoManager.queryById(this.id);
		ActionContext.getContext().put(Const.Action.PAGE_REUSLT, entity);
		return Const.Pages.MAPPING_URL;
	}

	public String query() {
		ApplyInfo entity = new ApplyInfo();
		entity.setStuname(this.stuname);
		entity.setStatus(this.status);
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
		Page<ApplyInfo> page = this.applyInfoManager.getRecords(condition);
		List<ApplyInfo> resultList = page.getList();
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
 

}