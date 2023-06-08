package com.gatsby.crm.controller;

import com.gatsby.crm.base.BaseController;
import com.gatsby.crm.base.ResultInfo;
import com.gatsby.crm.exceptions.ParamsException;
import com.gatsby.crm.model.UserModel;
import com.gatsby.crm.query.UserQuery;
import com.gatsby.crm.service.UserService;
import com.gatsby.crm.utils.LoginUserUtil;
import com.gatsby.crm.vo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @PACKAGE_NAME: com.gatsby.crm.controller
 * @NAME: UserController
 * @AUTHOR: Jonah
 * @DATE: 2023/6/3
 */

@Controller
@RequestMapping("user")
public class UserController extends BaseController {

    @Resource
    private UserService userService;

    @PostMapping("login")
    @ResponseBody
    public ResultInfo userLogin(String userName, String userPwd) {

        ResultInfo resultInfo = new ResultInfo();

        UserModel userModel = userService.userLogin(userName, userPwd);

        resultInfo.setResult(userModel);

        /*try {
            UserModel userModel = userService.userLogin(userName, userPwd);

            resultInfo.setResult(userModel);

        } catch (ParamsException e) {
            resultInfo.setCode(e.getCode());
            resultInfo.setMsg(e.getMsg());
            e.printStackTrace();
        } catch (Exception e) {
            resultInfo.setCode(500);
            resultInfo.setMsg("登录失败");
        }*/

        return resultInfo;
    }

    @PostMapping("updatePwd")
    @ResponseBody
    public ResultInfo updateUserPassword(HttpServletRequest req, String oldPassword, String newPassword, String repeatPassword) {
        ResultInfo resultInfo = new ResultInfo();

        int userId = LoginUserUtil.releaseUserIdFromCookie(req);
        userService.updatePassword(userId, oldPassword, newPassword, repeatPassword);

        /*try {
            int userId = LoginUserUtil.releaseUserIdFromCookie(req);
            userService.updatePassword(userId, oldPassword, newPassword, repeatPassword);
        } catch (ParamsException e) {
            resultInfo.setCode(e.getCode());
            resultInfo.setMsg(e.getMsg());
            e.printStackTrace();
        } catch (Exception e) {
            resultInfo.setCode(500);
            resultInfo.setMsg("修改密码失败");
            e.printStackTrace();
        }*/

        return resultInfo;
    }

    @RequestMapping("toPasswordPage")
    public String toPasswordPage() {

        return "user/password";
    }

    @RequestMapping("queryAllSales")
    @ResponseBody
    public List<Map<String, Object>> queryAllSales() {
        return userService.queryAllSales();
    }

    @RequestMapping("list")
    @ResponseBody
    public Map<String, Object> selectByParams(UserQuery userQuery) {
        return userService.queryByParamsForTable(userQuery);
    }

    @RequestMapping("index")
    public String index() {
        return "user/user";
    }

    @PostMapping("add")
    @ResponseBody
    public ResultInfo addUser(User user) {
        userService.addUser(user);

        return success("用户添加成功！");
    }

    @PostMapping("update")
    @ResponseBody
    public ResultInfo updateUser(User user) {
        userService.updateUser(user);

        return success("用户更新成功！");
    }

    @RequestMapping("addOrUpdateUserPage")
    public String addOrUpdateUserPage(Integer id, HttpServletRequest req) {
        if (id != null) {
            User user = userService.selectByPrimaryKey(id);
            req.setAttribute("userInfo", user);
        }

        return "user/add_update";
    }

    @RequestMapping("delete")
    @ResponseBody
    public ResultInfo deleteUser(Integer[] ids) {
        userService.deleteByids(ids);

        return success("用户删除成功！");
    }
}
