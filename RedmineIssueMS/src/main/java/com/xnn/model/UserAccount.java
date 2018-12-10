package com.xnn.model;

public class UserAccount {
    private String userId;

    private String accountName;

    private String password;

    private String status;

    private String isEnable;

    public UserAccount(String userId, String accountName, String password, String status, String isEnable) {
        this.userId = userId;
        this.accountName = accountName;
        this.password = password;
        this.status = status;
        this.isEnable = isEnable;
    }

    public UserAccount() {
        super();
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId == null ? null : userId.trim();
    }

    public String getAccountName() {
        return accountName;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName == null ? null : accountName.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status == null ? null : status.trim();
    }

    public String getIsEnable() {
        return isEnable;
    }

    public void setIsEnable(String isEnable) {
        this.isEnable = isEnable == null ? null : isEnable.trim();
    }
}