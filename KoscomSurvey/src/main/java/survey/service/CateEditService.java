package survey.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import survey.mapper.CateEditDao;
import survey.mapper.SurveyMapper;
import survey.model.cateVO;

@Service
public class CateEditService {
	
	@Autowired
	CateEditDao cateEditDao;

	
	public List<cateVO> getCateList() throws Exception{
		
		System.out.println("카테서비스");
		List<cateVO> cateList = cateEditDao.getCateList();
//		 return cateList;
		return null;
	}
	
	/*public int addCate(cateVO cateVO) throws Exception{
		
		System.out.println("카테추가 서비스");
		
		return surveyMapper.addCate(cateVO);
	}
	
	public int delCate(List<String> delCateList) throws Exception{
		
		System.out.println("카테삭제 서비스");
		System.out.println(delCateList);
		
		return surveyMapper.delCate(delCateList);
	}*/
	
}
