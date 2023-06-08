package com.gatsby.crm.controller;

import com.gatsby.crm.base.BaseController;
import com.gatsby.crm.base.ResultInfo;
import com.gatsby.crm.enums.StateStatus;
import com.gatsby.crm.query.CusDevPlanQuery;
import com.gatsby.crm.query.SaleChanceQuery;
import com.gatsby.crm.service.CusDevPlanService;
import com.gatsby.crm.service.SaleChanceService;
import com.gatsby.crm.utils.LoginUserUtil;
import com.gatsby.crm.vo.CusDevPlan;
import com.gatsby.crm.vo.SaleChance;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * @PACKAGE_NAME: com.gatsby.crm.controller
 * @NAME: CusDevPlanController
 * @AUTHOR: Jonah
 * @DATE: 2023/6/6
 */

@Controller
@RequestMapping("cus_dev_plan")
public class CusDevPlanController extends BaseController {

    @Resource
    private SaleChanceService saleChanceService;

    @Resource
    private CusDevPlanService cusDevPlanService;

    @RequestMapping("index")
    public String index() {
        return "cusDevPlan/cus_dev_plan";
    }

    @RequestMapping("list")
    @ResponseBody
    public Map<String, Object> queryCusDevPlanByParams(HttpServletRequest req, CusDevPlanQuery cusDevPlanQuery) {
        return cusDevPlanService.queryCusDevPlanByParams(cusDevPlanQuery);
    }

    @RequestMapping("toCusDevPlanDataPage")
    public String toCusDevPlanDataPage(HttpServletRequest req, Integer sid) {
        SaleChance saleChance = saleChanceService.selectByPrimaryKey(sid);

        req.setAttribute("saleChance", saleChance);

        return "cusDevPlan/cus_dev_plan_data";
    }

    @PostMapping("add")
    @ResponseBody
    public ResultInfo addCusDevPlan(CusDevPlan cusDevPlan) {
        cusDevPlanService.addCusDevPlan(cusDevPlan);
        return success("计划项添加成功！");
    }

    @PostMapping("update")
    @ResponseBody
    public ResultInfo updateCusDevPlan(CusDevPlan cusDevPlan) {
        cusDevPlanService.updateCusDevPlan(cusDevPlan);
        return success("计划项更新成功！");
    }

    @PostMapping("delete")
    @ResponseBody
    public ResultInfo deleteCusDevPlan(Integer id) {
        cusDevPlanService.delteCusDevPlan(id);
        return success("计划项删除成功！");
    }

    @RequestMapping("addOrUpdateCusDevPlanPage")
    public String addOrUpdateCusDevPlanPage(Integer sid, Integer id, Model model) {
        model.addAttribute("sid", sid);
        model.addAttribute("cusDevPlan", cusDevPlanService.selectByPrimaryKey(id));

        return "cusDevPlan/add_update";
    }
}
