package com.gatsby.crm.service;

import com.gatsby.crm.base.BaseService;
import com.gatsby.crm.dao.CusDevPlanMapper;
import com.gatsby.crm.dao.SaleChanceMapper;
import com.gatsby.crm.query.CusDevPlanQuery;
import com.gatsby.crm.query.SaleChanceQuery;
import com.gatsby.crm.utils.AssertUtil;
import com.gatsby.crm.vo.CusDevPlan;
import com.gatsby.crm.vo.SaleChance;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @PACKAGE_NAME: com.gatsby.crm.service
 * @NAME: CusDevPlanService
 * @AUTHOR: Jonah
 * @DATE: 2023/6/6
 */

@Service
public class CusDevPlanService extends BaseService<CusDevPlan, Integer> {

    @Resource
    private CusDevPlanMapper cusDevPlanMapper;

    @Resource
    private SaleChanceMapper saleChanceMapper;

    /**
     * 多条件分页查询
     *
     * @param cusDevPlanQuery
     * @return
     */
    public Map<String, Object> queryCusDevPlanByParams(CusDevPlanQuery cusDevPlanQuery) {
        Map<String, Object> map = new HashMap<>();

        PageHelper.startPage(cusDevPlanQuery.getPage(), cusDevPlanQuery.getLimit());

        PageInfo<CusDevPlan> pageInfo = new PageInfo<>(cusDevPlanMapper.selectByParams(cusDevPlanQuery));

        map.put("code", 0);
        map.put("msg", "success");
        map.put("count", pageInfo.getTotal());

        map.put("data", pageInfo.getList());

        return map;
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void addCusDevPlan(CusDevPlan cusDevPlan) {
        checkCusDevPlanParams(cusDevPlan);

        cusDevPlan.setIsValid(1);
        cusDevPlan.setCreateDate(new Date());
        cusDevPlan.setUpdateDate(new Date());

        AssertUtil.isTrue(cusDevPlanMapper.insertSelective(cusDevPlan) != 1, "计划项数据添加失败！");
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void updateCusDevPlan(CusDevPlan cusDevPlan) {
        AssertUtil.isTrue(null == cusDevPlan.getId() || cusDevPlanMapper.selectByPrimaryKey(cusDevPlan.getId()) == null, "数据异常，请重试！");

        checkCusDevPlanParams(cusDevPlan);

        cusDevPlan.setUpdateDate(new Date());

        AssertUtil.isTrue(cusDevPlanMapper.updateByPrimaryKeySelective(cusDevPlan) != 1, "计划项更新失败！");
    }

    private void checkCusDevPlanParams(CusDevPlan cusDevPlan) {
        Integer sId = cusDevPlan.getSaleChanceId();
        AssertUtil.isTrue(null == sId || saleChanceMapper.selectByPrimaryKey(sId) == null, "数据异常，请重试！");

        AssertUtil.isTrue(StringUtils.isBlank(cusDevPlan.getPlanItem()), "计划内容不能为空！");

        AssertUtil.isTrue(null == cusDevPlan.getPlanDate(), "计划时间不能为空！");
    }

    // @Transactional(propagation = Propagation.REQUIRED)
    public void delteCusDevPlan(Integer id) {
        AssertUtil.isTrue(null == id, "待删除数据不存在！");

        CusDevPlan cusDevPlan = cusDevPlanMapper.selectByPrimaryKey(id);

        cusDevPlan.setIsValid(0);
        cusDevPlan.setUpdateDate(new Date());

        AssertUtil.isTrue(cusDevPlanMapper.updateByPrimaryKeySelective(cusDevPlan) != 1, "计划项删除失败！");
    }
}
