package user;
//dto = date transfer object

public class UserDTO {
	String name;
	String id;
	String password;
	String grade;
	String nickname;
	String email;
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getGrade() {
		return grade;
	}
	
	public void setGrade(String grade) {
		this.grade = grade;
	}
	
	public String getNickname() {
		return nickname;
	}
	
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	//getter �쁽�옱 湲곕줉�맂�뜲�씠�꽣瑜� 媛��졇�삷
	//setter �뜲�씠�꽣瑜� 湲곕줉�븯�뒗 寃�
}
