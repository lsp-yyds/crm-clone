package com.gatsby.crm.dao;

import com.gatsby.crm.base.BaseMapper;
import com.gatsby.crm.vo.Role;

import java.util.List;
import java.util.Map;

public interface RoleMapper extends BaseMapper<Role, Integer> {
    List<Map<String, Object>> queryAllRoles(Integer userId);
}