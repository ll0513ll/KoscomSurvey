package survey.model;

import lombok.Data;

@Data
public class SurveyFormVo {
    private long surveyFormNo;
    private long surveyFormGroupNo;
    private String quesName;
    private int type;
}