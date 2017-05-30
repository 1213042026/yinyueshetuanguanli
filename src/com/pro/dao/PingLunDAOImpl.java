package com.pro.dao;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;
import com.base.common.util.CommonUtil;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.base.sys.dao.BaseDAO;
import com.pro.entity.PingLun;
@Service
@Transactional
public class PingLunDAOImpl extends BaseDAO<PingLun, Integer> {
	@Resource private SessionFactory sessionFactory;
	protected Class<PingLun> getReferenceClass() {
		return PingLun.class;
	}

	protected SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	public Page<PingLun> getRecord(DefaultQueryCondition condition) {
		PingLun entity = (PingLun)condition.getCondition();
		Criterion cr1 = null;
		if(CommonUtil.isNotEmpty(entity.getMusicname())) {
			cr1 = Restrictions.like("musicname",entity.getMusicname(), MatchMode.ANYWHERE);
		}
		Criterion cr2 = null;
		if(CommonUtil.isNotEmpty(entity.getPinglunname())) {
			cr2 = Restrictions.like("pinglunname",entity.getPinglunname(), MatchMode.ANYWHERE);
		}
		return this.getPagers(condition,cr1,cr2);
	}

	@Override
	public Page getRecord(String column, String order,
			DefaultQueryCondition condition) {
		// TODO Auto-generated method stub
		return null;
	}
}