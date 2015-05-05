package com.sr.apps.freightbit.core.formbean;

public class UserBean {

    private int userCode;
    private String firstName;
    private String lastName;
    private String companyName;
    private String userName;
    private String password;
    private String reenterPassword;
	private String title;
    private String emailAddress;
    private String contactNumber;
    private String userType;
    private String status;
    private Integer clientId;
    private String userId;
    private String userSearchCriteria;
    private String userKeyword;
    private Integer customerId;
    private String customerName;
    private String finalCompanyName;

    public UserBean() {

    }

    public UserBean(String finalCompanyName, int userCode, String firstName, String lastName, String companyName, String userName, String password, String reenterPassword, String title, String emailAddress, String contactNumber, String userType, String status, Integer clientId, String userId, String userSearchCriteria, String userKeyword, Integer customerId, String customerName) {
        this.finalCompanyName = finalCompanyName;
        this.userCode = userCode;
        this.firstName = firstName;
        this.lastName = lastName;
        this.companyName = companyName;
        this.userName = userName;
        this.password = password;
        this.reenterPassword = reenterPassword;
        this.title = title;
        this.emailAddress = emailAddress;
        this.contactNumber = contactNumber;
        this.userType = userType;
        this.status = status;
        this.clientId = clientId;
        this.userId = userId;
        this.userSearchCriteria = userSearchCriteria;
        this.userKeyword = userKeyword;
        this.customerId = customerId;
        this.customerName = customerName;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }


    public Integer getClientId() {
        return clientId;
    }

    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    public int getUserCode() {
        return userCode;
    }

    public void setUserCode(int userCode) {
        this.userCode = userCode;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getUserType() {
        return userType;
    }

    public void setUserType(String userType) {
        this.userType = userType;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getReenterPassword() {
		return reenterPassword;
	}
	
	public void setReenterPassword(String reenterPassword) {
		this.reenterPassword = reenterPassword;
	}

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getUserSearchCriteria() {
        return userSearchCriteria;
    }

    public void setUserSearchCriteria(String userSearchCriteria) {
        this.userSearchCriteria = userSearchCriteria;
    }

    public String getUserKeyword() {
        return userKeyword;
    }

    public void setUserKeyword(String userKeyword) {
        this.userKeyword = userKeyword;
    }

	public Integer getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Integer customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

    public String getFinalCompanyName() {
        return finalCompanyName;
    }

    public void setFinalCompanyName(String finalCompanyName) {
        this.finalCompanyName = finalCompanyName;
    }
}