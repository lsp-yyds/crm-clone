package com.gatsby.crm.dao;

import com.gatsby.crm.base.BaseMapper;
import com.gatsby.crm.vo.User;

import java.util.List;
import java.util.Map;

public interface UserMapper extends BaseMapper<User, Integer> {

    User queryUserByName(String UserName);

    List<Map<String, Object>> queryAllSales();
}