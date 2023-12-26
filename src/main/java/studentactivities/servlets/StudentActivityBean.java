package studentactivities.servlets;

public class StudentActivityBean {
	private int actId;
    private String actName;
    private String actDesc;
    private String actImg;
    private String actInnerImg;
    private String actStartDate;
    private String actEndDate;
    private int actStatus;
    private int actType;

    // Getters and setters for each property
    // ...
    public int getActId() {
        return actId;
    }

    public void setActId(int actId) {
        this.actId = actId;
    }
    
    

    public String getActName() {
        return actName;
    }

    public void setActName(String actName) {
        this.actName = actName;
    }
    
    

    public String getActDesc() {
        return actDesc;
    }

    public void setActDesc(String actDesc) {
        this.actDesc = actDesc;
    }
    
    

    public String getActImg() {
        return actImg;
    }
    
    public void setActImg(String actImg) {
        this.actImg = actImg;
    }
    
    
    
    public String getActInnerImg() {
        return actInnerImg;
    }

    
    public void setActInnerImg(String actInnerImg) {
        this.actInnerImg = actInnerImg;
    }

    public String getActStartDate() {
        return actStartDate;
    }

    public void setActStartDate(String actStartDate) {
        this.actStartDate = actStartDate;
    }

    public String getActEndDate() {
        return actEndDate;
    }

    public void setActEndDate(String actEndDate) {
        this.actEndDate = actEndDate;
    }

    public int getActStatus() {
        return actStatus;
    }

    public void setActStatus(int actStatus) {
        this.actStatus = actStatus;
    }
    public int getActType() {
        return actType;
    }

    public void setActType(int actType) {
        this.actType = actType;
    }
}
