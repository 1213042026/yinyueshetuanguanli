package com.pro.manager;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.base.sys.dao.IBaseDAO;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.pro.entity.Baoming;
import com.pro.entity.Huodong;
import com.pro.entity.ZhaoPin;

	@Service
	public class ZhaoPinManager{
		@Resource private IBaseDAO zhaoPinDAOImpl;
		
		@Resource private IBaseDAO huodongDAOImpl;

		public void add(ZhaoPin entity) throws Exception {
			try {
				this.zhaoPinDAOImpl.add(entity);
			} catch(Exception e) {
				throw new Exception("添加失败");
			}
		}
		
		public void add1(Huodong entity) throws Exception {
			/*try {*/
				this.zhaoPinDAOImpl.add(entity);
			//} /*catch(Exception e) {
				//throw new Exception("添加失败");
			//}*/
		}
		public void add2(Baoming entity) throws Exception {
			try {
				this.zhaoPinDAOImpl.add(entity);
			} catch(Exception e) {
				throw new Exception("添加失败");
			}
		}
		public void delete(Baoming entity) throws Exception {
			try {
				this.zhaoPinDAOImpl.delete(entity);
			} catch(Exception e) {
				throw new Exception("添加失败");
			}
		}

		public boolean isExist(String key, String value) {
			List list = this.zhaoPinDAOImpl.getViaHql("from ZhaoPin where "+key+"='"+value+"'");
			return (list != null && list.size() > 0) ? true : false;
		}

		public List<ZhaoPin> queryAll() {
			return this.zhaoPinDAOImpl.getAll();
		}

		public void deleteViaId(Integer id) {
			this.zhaoPinDAOImpl.delete(id);
		}

		public List queryByHql(String hql) {
			return this.zhaoPinDAOImpl.getViaHql(hql);
		}

		public ZhaoPin queryById(Integer id) {
			return (ZhaoPin)this.zhaoPinDAOImpl.getById(id);
		}

		public ZhaoPin querySingleRecordViaKey(String key, String value) {
			List list = this.zhaoPinDAOImpl.getViaHql("from ZhaoPin where "+key+"='"+value+"'");
		if(list != null && list.size() > 0){
			return (ZhaoPin)this.zhaoPinDAOImpl.getViaHql("from ZhaoPin where "+key+"='"+value+"'").get(0);
		}else{
		return null;
		}
		}
		public void update(ZhaoPin entity) {
			this.zhaoPinDAOImpl.update(entity);
		}

		public Page<ZhaoPin> getRecords(DefaultQueryCondition condition) {
			return this.zhaoPinDAOImpl.getRecord(condition);
		}

		

	}