package com.xnn.model;

public class SystemFunction {

    private String funId;

    private String parentCode;
    private String buttonName;

    private String menuName;

    private String winformPath;

    private String winformFlag;

    public SystemFunction(String funId, String parentCode, String buttonName, String menuName, String winformPath, String winformFlag) {
        this.funId=funId;
        this.parentCode=parentCode;
        this.buttonName = buttonName;
        this.menuName = menuName;
        this.winformPath = winformPath;
        this.winformFlag = winformFlag;
    }

    public SystemFunction() {
        super();
    }

    public String getFunId() {
        return funId;
    }

    public void setFunId(String funId) {
        this.funId = funId == null ? null : funId.trim();
    }

    public String getParentCode() {
        return parentCode;
    }

    public void setParentCode(String parentCode) {
        this.parentCode = parentCode == null ? null : parentCode.trim();
    }

    public String getButtonName() {
        return buttonName;
    }

    public void setButtonName(String buttonName) {
        this.buttonName = buttonName == null ? null : buttonName.trim();
    }

    public String getMenuName() {
        return menuName;
    }

    public void setMenuName(String menuName) {
        this.menuName = menuName == null ? null : menuName.trim();
    }

    public String getWinformPath() {
        return winformPath;
    }

    public void setWinformPath(String winformPath) {
        this.winformPath = winformPath == null ? null : winformPath.trim();
    }

    public String getWinformFlag() {
        return winformFlag;
    }

    public void setWinformFlag(String winformFlag) {
        this.winformFlag = winformFlag == null ? null : winformFlag.trim();
    }
}