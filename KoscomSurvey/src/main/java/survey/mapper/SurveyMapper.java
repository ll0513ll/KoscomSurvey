package survey.mapper;

import java.util.List;

/*import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;*/

import survey.model.cateVO;

//@Mapper
public interface SurveyMapper {
	
	public List<cateVO> getCateList();
//	//카테고리 리스트 호출
//	@Select("SELECT cate_no,cate_name,cate_info FROM CATE ORDER BY CATE_NO DESC")
//	public List<cateVO> getCateList() throws Exception;
//
//	//카테고리 추가
//	@Insert("INSERT INTO CATE(CATE_NO,CATE_NAME,CATE_INFO) VALUES(#{cate_no},#{cate_name},#{cate_info})")
//	public int addCate(cateVO cateVO) throws Exception;
//	
//	//카테고리 삭제
//	@Delete("DELETE FROM CATE WHERE cate_no in #{cateNo}")
//	public int delCate(@Param("cateNo")List<String> delCateList) throws Exception;
		
}
