package com.gatsby.crm.model;

/**
 * @PACKAGE_NAME: com.gatsby.crm.model
 * @NAME: UserModel
 * @AUTHOR: Jonah
 * @DATE: 2023/6/3
 */
public class UserModel {
    // private Integer userId;
    private String userIdStr;

    private String userName;
    private String trueName;

    /*public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }*/

    public String getUserIdStr() {
        return userIdStr;
    }

    public void setUserIdStr(String userIdStr) {
        this.userIdStr = userIdStr;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getTrueName() {
        return trueName;
    }

    public void setTrueName(String trueName) {
        this.trueName = trueName;
    }
}
