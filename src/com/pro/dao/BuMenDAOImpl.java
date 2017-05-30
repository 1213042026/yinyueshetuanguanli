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
import com.pro.entity.BuMen;
@Service
@Transactional
public class BuMenDAOImpl extends BaseDAO<BuMen, Integer> {
	@Resource private SessionFactory sessionFactory;
	protected Class<BuMen> getReferenceClass() {
		return BuMen.class;
	}

	protected SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	public Page<BuMen> getRecord(DefaultQueryCondition condition) {
		BuMen entity = (BuMen)condition.getCondition();
		return this.getPagers(condition);
	}

	@Override
	public Page getRecord(String column, String order,
			DefaultQueryCondition condition) {
		// TODO Auto-generated method stub
		return null;
	}
}