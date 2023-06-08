package com.gatsby.crm.service;

import com.gatsby.crm.base.BaseService;
import com.gatsby.crm.dao.SaleChanceMapper;
import com.gatsby.crm.enums.DevResult;
import com.gatsby.crm.enums.StateStatus;
import com.gatsby.crm.query.SaleChanceQuery;
import com.gatsby.crm.utils.AssertUtil;
import com.gatsby.crm.utils.PhoneUtil;
import com.gatsby.crm.vo.SaleChance;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * @PACKAGE_NAME: com.gatsby.crm.service
 * @NAME: SaleChanceService
 * @AUTHOR: Jonah
 * @DATE: 2023/6/5
 */

@Service
public class SaleChanceService extends BaseService<SaleChance, Integer> {

    @Resource
    private SaleChanceMapper saleChanceMapper;

    /**
     * 多条件分页查询
     *
     * @param saleChanceQuery
     * @return
     */
    public Map<String, Object> querySaleChanceByParams(SaleChanceQuery saleChanceQuery) {
        Map<String, Object> map = new HashMap<>();

        PageHelper.startPage(saleChanceQuery.getPage(), saleChanceQuery.getLimit());

        PageInfo<SaleChance> pageInfo = new PageInfo<>(saleChanceMapper.selectByParams(saleChanceQuery));

        map.put("code", 0);
        map.put("msg", "success");
        map.put("count", pageInfo.getTotal());

        map.put("data", pageInfo.getList());

        return map;
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void addSaleChance(SaleChance saleChance) {
        checkSaleChanceParams(saleChance.getCustomerName(), saleChance.getLinkMan(), saleChance.getLinkPhone());

        saleChance.setIsValid(1);
        saleChance.setCreateDate(new Date());
        saleChance.setUpdateDate(new Date());

        if (StringUtils.isBlank(saleChance.getAssignMan())) {
            saleChance.setState(StateStatus.UNSTATE.getType());
            saleChance.setAssignTime(null);
            saleChance.setDevResult(DevResult.UNDEV.getStatus());
        } else {
            saleChance.setState(StateStatus.STATED.getType());
            saleChance.setAssignTime(new Date());
            saleChance.setDevResult(DevResult.DEVING.getStatus());
        }

        AssertUtil.isTrue(saleChanceMapper.insertSelective(saleChance) != 1, "添加营销机会失败！");
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void updateSaleChance(SaleChance saleChance) {
        AssertUtil.isTrue(null == saleChance.getId(), "待更新记录不存在！");
        SaleChance chance = saleChanceMapper.selectByPrimaryKey(saleChance.getId());
        AssertUtil.isTrue(chance == null, "待更新记录不存在！");

        checkSaleChanceParams(saleChance.getCustomerName(), saleChance.getLinkMan(), saleChance.getLinkPhone());

        saleChance.setUpdateDate(new Date());

        if (StringUtils.isBlank(chance.getAssignMan())) {
            if (!StringUtils.isBlank(saleChance.getAssignMan())) {
                saleChance.setAssignTime(new Date());
                saleChance.setState(StateStatus.STATED.getType());
                saleChance.setDevResult(DevResult.DEVING.getStatus());
            }
        } else {
            if (StringUtils.isBlank(saleChance.getAssignMan())) {
                saleChance.setAssignTime(null);
                saleChance.setState(StateStatus.UNSTATE.getType());
                saleChance.setDevResult(DevResult.UNDEV.getStatus());
            } else {
                if (!saleChance.getAssignMan().equals(chance.getAssignMan())) {
                    saleChance.setAssignTime(new Date());
                } else {
                    saleChance.setAssignTime(chance.getAssignTime());
                }
            }
        }

        AssertUtil.isTrue(saleChanceMapper.updateByPrimaryKeySelective(saleChance) != 1, "营销机会更新失败！");
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void deleteSaleChance(Integer[] ids) {
        AssertUtil.isTrue(null == ids || ids.length < 1, "待删除记录不存在！");
        AssertUtil.isTrue(saleChanceMapper.deleteBatch(ids) != ids.length, "营销机会删除失败！");
    }

    private void checkSaleChanceParams(String customerName, String linkMan, String linkPhone) {
        AssertUtil.isTrue(StringUtils.isBlank(customerName), "客户名称不能为空！");
        AssertUtil.isTrue(StringUtils.isBlank(linkMan), "联系人不能为空！");
        AssertUtil.isTrue(StringUtils.isBlank(linkPhone), "联系号码不能为空！");

        AssertUtil.isTrue(!PhoneUtil.isMobile(linkPhone), "联系号码格式不正确！");
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void updateSaleChanceDevResult(Integer id, Integer devResult) {
        AssertUtil.isTrue(null == id, "待更新记录不存在！");
        SaleChance saleChance = saleChanceMapper.selectByPrimaryKey(id);

        AssertUtil.isTrue(null == saleChance, "待更新记录不存在！");
        saleChance.setDevResult(devResult);

        AssertUtil.isTrue(saleChanceMapper.updateByPrimaryKeySelective(saleChance) != 1, "开发状态更新失败！");
    }
}
