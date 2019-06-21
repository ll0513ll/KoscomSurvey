package survey.model;


public class companyVO {

	
	private int company_no;
	
	private String company_name;
	
	private String manager;
	

	public companyVO() {
	
	}

	public companyVO(int company_no, String company_name, String manager) {
		this.company_no = company_no;
		this.company_name = company_name;
		this.manager = manager;
	}



	public int getCompany_no() {
		return company_no;
	}

	public void setCompany_no(int company_no) {
		this.company_no = company_no;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}
	
	


	@Override
	public String toString() {
		return "companyVO [company_no=" + company_no + ", company_name=" + company_name + ", manager=" + manager
				+ "]";
	}


}
