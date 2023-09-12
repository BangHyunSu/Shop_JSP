package user;

public class UserDTO {

	private String userID;
	private String userPW;
	private String userName;
	private String userAddress;
	private String phonNum;
	
	//디폴트 생성자
	public UserDTO() {
		
	}
	
	public UserDTO(String userID, String userPW, String userName, String userAddress, String phonNum) {
		super();
		this.userID = userID;
		this.userPW = userPW;
		this.userName = userName;
		this.userAddress = userAddress;
		this.phonNum = phonNum;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserPW() {
		return userPW;
	}

	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserAddress() {
		return userAddress;
	}

	public void setUserAddress(String userAddress) {
		this.userAddress = userAddress;
	}

	public String getPhonNum() {
		return phonNum;
	}

	public void setPhonNum(String phonNum) {
		this.phonNum = phonNum;
	}

	@Override
	public String toString() {
		return "UserDTO [userID=" + userID + ", userPW=" + userPW + ", userName=" + userName + ", userAddress="
				+ userAddress + ", phonNum=" + phonNum + "]";
	}


	
	
	
	

}
