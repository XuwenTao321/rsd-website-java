package org.rsd.service.impl;

import org.rsd.bean.SysFunction;
import org.rsd.mapper.ISysFunctionMapper;
import org.rsd.service.ISysFunctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysFunctionServiceImpl implements ISysFunctionService {

    @Autowired
    private ISysFunctionMapper sysFunctionMapper;
    @Override
    public List<SysFunction> queryList() {
        return sysFunctionMapper.queryList();
    }

    @Override
    public SysFunction getById(Integer id) {
        return sysFunctionMapper.getById(id);
    }

    @Override
    public void insert(SysFunction sysFunction) {
        sysFunctionMapper.insert(sysFunction);
    }

    @Override
    public void doDelById(Integer id) {
        sysFunctionMapper.doDelById(id);
    }

    @Override
    public void update(SysFunction sysFunction) {
        sysFunctionMapper.update(sysFunction);
    }
}
