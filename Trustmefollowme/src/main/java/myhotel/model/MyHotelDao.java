package myhotel.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myHotelDao")
public class MyHotelDao {
	
	private final String namespace = "myhotel.Myhotel";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
}
