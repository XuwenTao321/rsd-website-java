package org.rsd.controller;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.rsd.bean.SysUser;
import org.rsd.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("sysUser")
public class SysUserController {

    @Autowired
    private ISysUserService sysUserService;

    @RequestMapping(value = "list/{pageNum}", method = RequestMethod.GET)
    public ModelAndView list(@PathVariable Integer pageNum) {
        ModelAndView modelAndView = new ModelAndView("/admin/jsp/sysUser/list.jsp");

        PageInfo<SysUser> pageInfo = sysUserService.queryList(pageNum);

        modelAndView.addObject("pageInfo",pageInfo);
        return modelAndView;
    }


    @RequestMapping(value = "toUpdatePage/{id}", method = RequestMethod.GET)
    public ModelAndView toUpdatePage(@PathVariable Integer id) {
        ModelAndView modelAndView = new ModelAndView("/admin/jsp/sysUser/form.jsp");

        modelAndView.addObject("sysUser",sysUserService.getById(id) );

        return modelAndView;
    }

    @RequestMapping(value = "save", method = RequestMethod.POST)
    public String save(SysUser sysUser) {
        if (sysUser.getId() == null || sysUser.getId().equals("")) {
            sysUserService.insert(sysUser);
        } else {
            sysUserService.update(sysUser);
        }

        return "redirect:/sysUser/list/1";
    }


    @RequestMapping(value = "delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable Integer id) {
        sysUserService.doDelById(id);

        return "redirect:/sysUser/list/1";
    }

}
