package com.gatsby.crm.controller;

import com.gatsby.crm.base.BaseController;
import com.gatsby.crm.service.UserService;
import com.gatsby.crm.utils.LoginUserUtil;
import com.gatsby.crm.vo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * @PACKAGE_NAME: com.gatsby.crm
 * @NAME: IndexController
 * @AUTHOR: Jonah
 * @DATE: 2023/6/3
 */

@Controller
public class IndexController extends BaseController {

    @Resource
    private UserService userService;

    @RequestMapping("index")
    public String index() {
        return "index";
    }

    @RequestMapping("welcome")
    public String welcome() {
        return "welcome";
    }

    @RequestMapping("main")
    public String main(HttpServletRequest req) {

        Integer userId = LoginUserUtil.releaseUserIdFromCookie(req);

        User user = userService.selectByPrimaryKey(userId);
        req.getSession().setAttribute("user", user);

        return "main";
    }
}
