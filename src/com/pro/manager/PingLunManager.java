package com.pro.manager;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.base.sys.dao.IBaseDAO;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.pro.entity.PingLun;

	@Service
	public class PingLunManager{
		@Resource private IBaseDAO pingLunDAOImpl;

		public void add(PingLun entity) throws Exception {
			try {
				this.pingLunDAOImpl.add(entity);
			} catch(Exception e) {
				throw new Exception("添加失败");
			}
		}

		public boolean isExist(String key, String value) {
			List list = this.pingLunDAOImpl.getViaHql("from PingLun where "+key+"='"+value+"'");
			return (list != null && list.size() > 0) ? true : false;
		}

		public List<PingLun> queryAll() {
			return this.pingLunDAOImpl.getAll();
		}

		public void deleteViaId(Integer id) {
			this.pingLunDAOImpl.delete(id);
		}

		public List queryByHql(String hql) {
			return this.pingLunDAOImpl.getViaHql(hql);
		}

		public PingLun queryById(Integer id) {
			return (PingLun)this.pingLunDAOImpl.getById(id);
		}

		public PingLun querySingleRecordViaKey(String key, String value) {
			List list = this.pingLunDAOImpl.getViaHql("from PingLun where "+key+"='"+value+"'");
		if(list != null && list.size() > 0){
			return (PingLun)this.pingLunDAOImpl.getViaHql("from PingLun where "+key+"='"+value+"'").get(0);
		}else{
		return null;
		}
		}
		public void update(PingLun entity) {
			this.pingLunDAOImpl.update(entity);
		}

		public Page<PingLun> getRecords(DefaultQueryCondition condition) {
			return this.pingLunDAOImpl.getRecord(condition);
		}

	}