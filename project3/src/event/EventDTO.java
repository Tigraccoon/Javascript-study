package event;

public class EventDTO {
	private String fileName;
	private String fileRealName;
	private String name;
	private String phoneNum;
	private String email;
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileRealName() {
		return fileRealName;
	}
	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "eventDTO [fileName=" + fileName + ", fileRealName=" + fileRealName + ", name=" + name + ", phoneNum="
				+ phoneNum + ", email=" + email + "]";
	}
	public EventDTO(String fileName, String fileRealName, String name, String phoneNum, String email) {
		this.fileName = fileName;
		this.fileRealName = fileRealName;
		this.name = name;
		this.phoneNum = phoneNum;
		this.email = email;
	}
	public EventDTO() {
	}

	
}
