package com.pro.manager;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.base.sys.dao.IBaseDAO;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.pro.entity.BuMen;

	@Service
	public class BuMenManager{
		@Resource private IBaseDAO buMenDAOImpl;

		public void add(BuMen entity) throws Exception {
			try {
				this.buMenDAOImpl.add(entity);
			} catch(Exception e) {
				throw new Exception("添加失败");
			}
		}

		public boolean isExist(String key, String value) {
			List list = this.buMenDAOImpl.getViaHql("from BuMen where "+key+"='"+value+"'");
			return (list != null && list.size() > 0) ? true : false;
		}

		public List<BuMen> queryAll() {
			return this.buMenDAOImpl.getAll();
		}

		public void deleteViaId(Integer id) {
			this.buMenDAOImpl.delete(id);
		}

		public List queryByHql(String hql) {
			return this.buMenDAOImpl.getViaHql(hql);
		}

		public BuMen queryById(Integer id) {
			return (BuMen)this.buMenDAOImpl.getById(id);
		}

		public BuMen querySingleRecordViaKey(String key, String value) {
			List list = this.buMenDAOImpl.getViaHql("from BuMen where "+key+"='"+value+"'");
		if(list != null && list.size() > 0){
			return (BuMen)this.buMenDAOImpl.getViaHql("from BuMen where "+key+"='"+value+"'").get(0);
		}else{
		return null;
		}
		}
		public void update(BuMen entity) {
			this.buMenDAOImpl.update(entity);
		}

		public Page<BuMen> getRecords(DefaultQueryCondition condition) {
			return this.buMenDAOImpl.getRecord(condition);
		}

	}