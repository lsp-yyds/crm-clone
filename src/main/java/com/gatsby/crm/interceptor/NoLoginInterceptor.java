package com.gatsby.crm.interceptor;

import com.gatsby.crm.dao.UserMapper;
import com.gatsby.crm.exceptions.NoLoginException;
import com.gatsby.crm.utils.LoginUserUtil;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @PACKAGE_NAME: com.gatsby.crm.interceptor
 * @NAME: NoLoginInterceptor
 * @AUTHOR: Jonah
 * @DATE: 2023/6/5
 */
public class NoLoginInterceptor extends HandlerInterceptorAdapter {

    @Resource
    private UserMapper userMapper;

    @Override
    public boolean preHandle(HttpServletRequest req, HttpServletResponse resp, Object handler) throws Exception {
        Integer userId = LoginUserUtil.releaseUserIdFromCookie(req);

        if (null == userId || userMapper.selectByPrimaryKey(userId) == null) {
            throw new NoLoginException();
        }

        return true;
    }
}
