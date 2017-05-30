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
import com.pro.entity.CollectMusic;
@Service
@Transactional
public class CollectMusicDAOImpl extends BaseDAO<CollectMusic, Integer> {
	@Resource private SessionFactory sessionFactory;
	protected Class<CollectMusic> getReferenceClass() {
		return CollectMusic.class;
	}

	protected SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	public Page<CollectMusic> getRecord(DefaultQueryCondition condition) {
		CollectMusic entity = (CollectMusic)condition.getCondition();
		Criterion cr1 = null;
		if(CommonUtil.isNotEmpty(entity.getTypes())) {
			cr1 = Restrictions.like("types",entity.getTypes(), MatchMode.ANYWHERE);
		}
		Criterion cr2 = null;
		if(CommonUtil.isNotEmpty(entity.getMusicname())) {
			cr2 = Restrictions.like("musicname",entity.getMusicname(), MatchMode.ANYWHERE);
		}
		
		Criterion cr3 = null;
		if(CommonUtil.isNotEmpty(entity.getStuname())) {
			cr3 = Restrictions.eq("stuname",entity.getStuname());
		}
		return this.getPagers(condition,cr1,cr2,cr3);
	}

	@Override
	public Page getRecord(String column, String order,
			DefaultQueryCondition condition) {
		// TODO Auto-generated method stub
		return null;
	}
}