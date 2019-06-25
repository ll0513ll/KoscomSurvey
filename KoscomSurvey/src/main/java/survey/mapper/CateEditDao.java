package survey.mapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import survey.model.cateVO;

@Repository
public class CateEditDao {
	
	 @Autowired SqlSession sqlSession;
	 
	 public List<cateVO> getCateList(){
		 //return surveyMapper.getCateList();
		System.out.println("카테 다오");
		List<cateVO> cateList = sqlSession.selectList("getCateList");
		System.out.println(cateList);
		return cateList;
	 }
	

}
