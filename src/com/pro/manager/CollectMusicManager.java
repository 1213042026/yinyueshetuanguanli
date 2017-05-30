package com.pro.manager;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.base.sys.dao.IBaseDAO;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.pro.entity.CollectMusic;

	@Service
	public class CollectMusicManager{
		@Resource private IBaseDAO collectMusicDAOImpl;

		public void add(CollectMusic entity) throws Exception {
			try {
				this.collectMusicDAOImpl.add(entity);
			} catch(Exception e) {
				throw new Exception("添加失败");
			}
		}

		 public  void delete(CollectMusic entity){
			 try{
			 this.collectMusicDAOImpl.delete(entity);
			 }catch(Exception e){
				 System.out.println(e);
			 }
		 }
		
		public boolean isExist(String key, String value) {
			List list = this.collectMusicDAOImpl.getViaHql("from CollectMusic where "+key+"='"+value+"'");
			return (list != null && list.size() > 0) ? true : false;
		}

		public List<CollectMusic> queryAll() {
			return this.collectMusicDAOImpl.getAll();
		}

		public void deleteViaId(Integer id) {
			this.collectMusicDAOImpl.delete(id);
		}

		public List queryByHql(String hql) {
			return this.collectMusicDAOImpl.getViaHql(hql);
		}

		public CollectMusic queryById(Integer id) {
			return (CollectMusic)this.collectMusicDAOImpl.getById(id);
		}

		public CollectMusic querySingleRecordViaKey(String key, String value) {
			List list = this.collectMusicDAOImpl.getViaHql("from CollectMusic where "+key+"='"+value+"'");
		if(list != null && list.size() > 0){
			return (CollectMusic)this.collectMusicDAOImpl.getViaHql("from CollectMusic where "+key+"='"+value+"'").get(0);
		}else{
		return null;
		}
		}
		public void update(CollectMusic entity) {
			this.collectMusicDAOImpl.update(entity);
		}

		public Page<CollectMusic> getRecords(DefaultQueryCondition condition) {
			return this.collectMusicDAOImpl.getRecord(condition);
		}

	}