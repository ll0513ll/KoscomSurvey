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
	 return sqlSession.selectList("cateEdit.getCateList");
	 }
	

}
