package org.rsd.service;

import com.github.pagehelper.PageInfo;
import org.rsd.bean.SysUser;

import java.util.List;

public interface ISysUserService {
    PageInfo<SysUser> queryList(Integer pageNum);

    SysUser getById(Integer id);

    void insert(SysUser sysUser);

    void doDelById(Integer id);

    void update(SysUser sysUser);

    void moreDelete(Integer id);
}
