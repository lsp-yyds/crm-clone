package com.gatsby.crm.query;

import com.gatsby.crm.base.BaseQuery;

/**
 * @PACKAGE_NAME: com.gatsby.crm.query
 * @NAME: SaleChanceQuery
 * @AUTHOR: Jonah
 * @DATE: 2023/6/5
 */
public class SaleChanceQuery extends BaseQuery {
    private String customerName;
    private String createMan;
    private Integer state;

    private String devResult;
    private Integer assignMan;

    public String getDevResult() {
        return devResult;
    }

    public void setDevResult(String devResult) {
        this.devResult = devResult;
    }

    public Integer getAssignMan() {
        return assignMan;
    }

    public void setAssignMan(Integer assignMan) {
        this.assignMan = assignMan;
    }

    public String getCustomerName() {
        return customerName;
    }

    public void setCustomerName(String customerName) {
        this.customerName = customerName;
    }

    public String getCreateMan() {
        return createMan;
    }

    public void setCreateMan(String createMan) {
        this.createMan = createMan;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
