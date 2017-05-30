package com.pro.dao;
import java.util.List;

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
import com.pro.entity.MusicInfo;
@Service
@Transactional
public class MusicInfoDAOImpl extends BaseDAO<MusicInfo, Integer> {
	@Resource private SessionFactory sessionFactory;
	protected Class<MusicInfo> getReferenceClass() {
		return MusicInfo.class;
	}

	protected SessionFactory getSessionFactory() {
		return this.sessionFactory;
	}

	public Page<MusicInfo> getRecord(DefaultQueryCondition condition) {
		MusicInfo entity = (MusicInfo)condition.getCondition();
		Criterion cr1 = null;
		if(CommonUtil.isNotEmpty(entity.getTypes())) {
			cr1 = Restrictions.like("types",entity.getTypes(), MatchMode.ANYWHERE);
		}
		Criterion cr2 = null;
		if(CommonUtil.isNotEmpty(entity.getMusicname())) {
			cr2 = Restrictions.like("musicname",entity.getMusicname(), MatchMode.ANYWHERE);
		}
		Criterion cr3 = null;
		if(CommonUtil.isNotEmpty(entity.getUsername())) {
			cr3 = Restrictions.like("username",entity.getUsername(), MatchMode.ANYWHERE);
		}
		Criterion cr4 = null;
		if(CommonUtil.isNotEmpty(entity.getRenqi())) {
			cr4 = Restrictions.like("renqi",entity.getRenqi(), MatchMode.ANYWHERE);
		}
		Criterion cr5 = null;
		if(CommonUtil.isNotEmpty(entity.getTuijian())) {
			cr5 = Restrictions.like("tuijian",entity.getTuijian(), MatchMode.ANYWHERE);
		}
		Criterion cr6 = null;
		if(CommonUtil.isNotEmpty(entity.getShenhe())) {
			cr6 = Restrictions.like("shenhe",entity.getShenhe(), MatchMode.ANYWHERE);
		}
		return this.getPagers(condition,cr1,cr2,cr3,cr4,cr5,cr6);
	}

	@Override
	public Page getRecord(String column, String order,
			DefaultQueryCondition condition) {
		// TODO Auto-generated method stub
		return null;
	}

	
}