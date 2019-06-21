package survey.model;



public class questionVO {
	
	private int ques_no;
	private String ques_name;
	private int type;
	private int cate_no;
	
	
	
	public questionVO() {

	}

	public questionVO(int ques_no, String ques_name, int type, int cate_no) {
		this.ques_no = ques_no;
		this.ques_name = ques_name;
		this.type = type;
		this.cate_no = cate_no;
	}


	public int getQues_no() {
		return ques_no;
	}

	public void setQues_no(int ques_no) {
		this.ques_no = ques_no;
	}

	public String getQues_name() {
		return ques_name;
	}

	public void setQues_name(String ques_name) {
		this.ques_name = ques_name;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getCate_no() {
		return cate_no;
	}

	public void setCate_no(int cate_no) {
		this.cate_no = cate_no;
	}

	@Override
	public String toString() {
		return "questionVO [ques_no=" + ques_no + ", ques_name=" + ques_name + ", type=" + type + ", cate_no=" + cate_no
				+ "]";
	}



}
