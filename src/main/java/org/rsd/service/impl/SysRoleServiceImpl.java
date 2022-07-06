package org.rsd.service.impl;

import org.rsd.bean.SysRole;
import org.rsd.mapper.ISysRoleMapper;
import org.rsd.service.ISysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysRoleServiceImpl implements ISysRoleService {
    @Autowired
    private ISysRoleMapper sysRoleMapper;

    @Override
    public List<SysRole> queryList() {

        return sysRoleMapper.queryList();
    }

    @Override
    public SysRole getById(Integer id) {
        return sysRoleMapper.getRoleById(id);
    }

    @Override
    public void insert(SysRole sysRole) {
        sysRoleMapper.insert(sysRole);
    }

    @Override
    public void doDelById(Integer id) {
        sysRoleMapper.doDelById(id);
    }

    @Override
    public void update(SysRole sysRole) {
        sysRoleMapper.update(sysRole);
    }
}
