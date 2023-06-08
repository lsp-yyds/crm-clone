package com.gatsby.crm.query;

import com.gatsby.crm.base.BaseQuery;

/**
 * @PACKAGE_NAME: com.gatsby.crm.query
 * @NAME: CusDevPlanQuery
 * @AUTHOR: Jonah
 * @DATE: 2023/6/6
 */
public class CusDevPlanQuery extends BaseQuery {
    private Integer saleChanceId;

    public Integer getSaleChanceId() {
        return saleChanceId;
    }

    public void setSaleChanceId(Integer saleChanceId) {
        this.saleChanceId = saleChanceId;
    }
}
