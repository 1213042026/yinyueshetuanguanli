package com.pro.manager;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.base.sys.dao.IBaseDAO;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.pro.entity.CollectMusic;
import com.pro.entity.MusicInfo;
import com.pro.entity.PingLun;

	@Service
	public class MusicInfoManager{
		@Resource private IBaseDAO musicInfoDAOImpl;

		public void add(MusicInfo entity) throws Exception {
			try {
				this.musicInfoDAOImpl.add(entity);
			} catch(Exception e) {
				throw new Exception("添加失败");
			}
		}

		public boolean isExist(String key, String value) {
			List list = this.musicInfoDAOImpl.getViaHql("from MusicInfo where "+key+"='"+value+"'");
			return (list != null && list.size() > 0) ? true : false;
		}

		public List<MusicInfo> queryAll() {
			return this.musicInfoDAOImpl.getAll();
		}

		public void deleteViaId(Integer id) {
			this.musicInfoDAOImpl.delete(id);
		}

		public List queryByHql(String hql) {
			return this.musicInfoDAOImpl.getViaHql(hql);
		}

		public MusicInfo queryById(Integer id) {
			return (MusicInfo)this.musicInfoDAOImpl.getById(id);
		}

		public MusicInfo querySingleRecordViaKey(String key, String value) {
			List list = this.musicInfoDAOImpl.getViaHql("from MusicInfo where "+key+"='"+value+"'");
		if(list != null && list.size() > 0){
			return (MusicInfo)this.musicInfoDAOImpl.getViaHql("from MusicInfo where "+key+"='"+value+"'").get(0);
		}else{
		return null;
		}
		}

		public List<MusicInfo> queryByKey(String key) {
			List<MusicInfo> list = this.musicInfoDAOImpl.getViaHql("from MusicInfo where t_username like '%"+key+"%'");
			if(list == null || list.size() == 0){
				return new ArrayList<MusicInfo>();
			}
			return list;
		}

		public void update(MusicInfo entity) {
			this.musicInfoDAOImpl.update(entity);
		}

		public Page<MusicInfo> getRecords(DefaultQueryCondition condition) {
			return this.musicInfoDAOImpl.getRecord(condition);
		}

		public List<CollectMusic> getMusicCoo(int m_id) {
			return this.musicInfoDAOImpl.getViaHql("from CollectMusic where musicid ="+m_id);
		}

		public List<PingLun> getMusicPinglun(int m_id) {
			// TODO Auto-generated method stub
			return this.musicInfoDAOImpl.getViaHql("from PingLun where musicid ="+m_id);
		}

	}