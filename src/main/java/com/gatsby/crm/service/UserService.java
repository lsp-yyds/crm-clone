package com.gatsby.crm.service;

import com.gatsby.crm.base.BaseService;
import com.gatsby.crm.dao.UserMapper;
import com.gatsby.crm.model.UserModel;
import com.gatsby.crm.utils.AssertUtil;
import com.gatsby.crm.utils.Md5Util;
import com.gatsby.crm.utils.PhoneUtil;
import com.gatsby.crm.utils.UserIDBase64;
import com.gatsby.crm.vo.User;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import sun.security.provider.MD5;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @PACKAGE_NAME: com.gatsby.crm.service
 * @NAME: UserService
 * @AUTHOR: Jonah
 * @DATE: 2023/6/3
 */

@Service
public class UserService extends BaseService<User, Integer> {

    @Resource
    private UserMapper userMapper;

    public UserModel userLogin(String userName, String userPwd) {
        checkLoginParams(userName, userPwd);

        User user = userMapper.queryUserByName(userName);

        AssertUtil.isTrue(user == null, "用户姓名不存在");

        checkUserPwd(userPwd, user.getUserPwd());

        return buildUserInfo(user);
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void updatePassword(Integer userId, String oldPwd, String newPwd, String repeatPwd) {
        User user = userMapper.selectByPrimaryKey(userId);

        AssertUtil.isTrue(user == null, "待更新记录不存在");

        checkPasswordParams(user, oldPwd, newPwd, repeatPwd);

        user.setUserPwd(Md5Util.encode(newPwd));

        AssertUtil.isTrue(userMapper.updateByPrimaryKeySelective(user) < 1, "修改密码失败");
    }

    public List<Map<String, Object>> queryAllSales() {
        return userMapper.queryAllSales();
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void addUser(User user) {
        checkUserParams(user.getUserName(), user.getEmail(), user.getPhone(), null);

        user.setIsValid(1);
        user.setCreateDate(new Date());
        user.setUpdateDate(new Date());

        user.setUserPwd(Md5Util.encode("123456"));

        AssertUtil.isTrue(userMapper.insertSelective(user) != 1, "用户添加失败！");
    }

    @Transactional(propagation = Propagation.REQUIRED)
    public void updateUser(User user) {
        AssertUtil.isTrue(null == user.getId(), "待更新用户记录不存在！");
        User temp = userMapper.selectByPrimaryKey(user.getId());

        checkUserParams(user.getUserName(), user.getEmail(), user.getPhone(), user.getId());

        user.setUpdateDate(new Date());

        AssertUtil.isTrue(userMapper.updateByPrimaryKeySelective(user) != 1, "用户更新失败！");
    }

    private void checkUserParams(String userName, String email, String phone, Integer userId) {
        AssertUtil.isTrue(StringUtils.isBlank(userName), "用户名不能为空！");

        User temp = userMapper.queryUserByName(userName);
        AssertUtil.isTrue(temp != null && !(temp.getId().equals(userId)), "用户名已存在，请重新输入！");

        AssertUtil.isTrue(StringUtils.isBlank(email), "邮箱不能为空！");

        AssertUtil.isTrue(StringUtils.isBlank(phone), "手机号不能为空！");

        AssertUtil.isTrue(!PhoneUtil.isMobile(phone), "手机号码格式不正确！");
    }

    private void checkPasswordParams(User user, String oldPwd, String newPwd, String repeatPwd) {
        AssertUtil.isTrue(StringUtils.isBlank(oldPwd), "原始密码不能为空！");
        AssertUtil.isTrue(!Md5Util.encode(oldPwd).equals(user.getUserPwd()), "原始密码不正确！");
        AssertUtil.isTrue(StringUtils.isBlank(newPwd), "新密码不能为空！");
        AssertUtil.isTrue(newPwd.equals(oldPwd), "新密码不能与原始密码相同！");
        AssertUtil.isTrue(StringUtils.isBlank(repeatPwd), "确认密码不能为空！");
        AssertUtil.isTrue(!newPwd.equals(repeatPwd), "确认密码和新密码不一致！");
    }

    private UserModel buildUserInfo(User user) {
        UserModel userModel = new UserModel();

        // userModel.setUserId(user.getId());
        userModel.setUserIdStr(UserIDBase64.encoderUserID(user.getId()));
        userModel.setUserName(user.getUserName());
        userModel.setTrueName(user.getTrueName());

        return userModel;
    }

    private void checkUserPwd(String userPwd, String pwd) {
        userPwd = Md5Util.encode(userPwd);

        AssertUtil.isTrue(!userPwd.equals(pwd), "用户密码不正确");
    }

    private void checkLoginParams(String userName, String userPwd) {
        AssertUtil.isTrue(StringUtils.isBlank(userName), "用户姓名不能为空！");
        AssertUtil.isTrue(StringUtils.isBlank(userPwd), "用户密码不能为空！");
    }

    public void deleteByids(Integer[] ids) {
        AssertUtil.isTrue(ids == null || ids.length == 0, "待删除记录不存在！");
        AssertUtil.isTrue(userMapper.deleteBatch(ids) != ids.length, "用户删除失败！");
    }
}
