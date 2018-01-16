package yan.com.yankart_backend.daoimpl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import yan.com.yankart_backend.dao.CategoryDAO;
import yan.com.yankart_backend.dto.Category;

@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO {

	
	@Autowired
	private SessionFactory sessionFactory;
	
/*	private static List<Category> categories =new ArrayList<>();
	
	static {
		Category category =new Category();
		category.setId(1);
		category.setName("television");
		category.setDescription("this is desctription about tv");
		category.setImageURL("cat.png");
		
		
		categories.add(category);
		
		
		category =new Category();
		category.setId(2);
		category.setName("laptop");
		category.setDescription("this is desctription about lap");
		category.setImageURL("cat1.png");
		
		
		categories.add(category);
		
		category =new Category();
		category.setId(3);
		category.setName("mobile");
		category.setDescription("this is desctription about mobile");
		category.setImageURL("cat3.png");
		
		
		categories.add(category);
	}
	
	
	
	
	*/
	
	
	
	
	
	@Override
	public Category get(int id) {
		return sessionFactory.getCurrentSession().get(Category.class, Integer.valueOf(id));
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public List<Category> list() {
		
		String selectActiveCategory = "FROM Category WHERE active = :active";
		
		
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(selectActiveCategory);
				
		query.setParameter("active", true);
						
		return query.getResultList();
	}

	@Override
	public boolean add(Category category) {
try {
			
			sessionFactory.getCurrentSession().persist(category);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean update(Category category) {
		try {
			// add the category to the database table
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean delete(Category category) {
category.setActive(false);
		
		try {
			// add the category to the database table
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

}
