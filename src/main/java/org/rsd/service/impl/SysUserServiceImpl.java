package org.rsd.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

import com.github.pagehelper.PageInfo;
import org.rsd.bean.SysUser;
import org.rsd.mapper.ISysUserMapper;
import org.rsd.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class SysUserServiceImpl implements ISysUserService {

    @Autowired
    private ISysUserMapper sysUserMapper;

    @Override
    public PageInfo<SysUser> queryList(Integer pageNum) {
        Page<SysUser> page = PageHelper.startPage(pageNum, 10);
        sysUserMapper.queryList();
        return page.toPageInfo();
    }

    @Override
    public SysUser getById(Integer id) {
        return sysUserMapper.getById(id);
    }

    @Override
    public void insert(SysUser sysUser) {
        sysUserMapper.insert(sysUser);
    }

    @Override
    public void doDelById(Integer id) {
        sysUserMapper.doDelById(id);
    }

    @Override
    public void update(SysUser sysUser) {
        sysUserMapper.update(sysUser);
    }

    @Override
    @Transactional
    public void moreDelete(Integer id) {
        sysUserMapper.doDelById(id);
        int i = 5/0;
        sysUserMapper.doDelById(id + 1);
    }
}
