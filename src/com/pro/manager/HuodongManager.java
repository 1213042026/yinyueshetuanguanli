package com.pro.manager;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.base.sys.dao.IBaseDAO;
import com.base.pagination.util.DefaultQueryCondition;
import com.base.pagination.util.Page;
import com.pro.entity.Huodong;
import com.pro.entity.ZhaoPin;

	@Service
	public class HuodongManager{
		
		@Resource 
		private IBaseDAO huodongDAOImpl;

		

		public Page<Huodong> getRecords(DefaultQueryCondition condition) {
			return this.huodongDAOImpl.getRecord(condition);
		}
		public void deleteViaId(Integer id) {
			this.huodongDAOImpl.delete(id);
		}
		
		public Huodong queryById(Integer id) {
			return (Huodong)this.huodongDAOImpl.getById(id);
		}
		
		public void update(Huodong entity) {
			this.huodongDAOImpl.update(entity);
		}

	}