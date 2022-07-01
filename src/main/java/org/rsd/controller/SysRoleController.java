package org.rsd.controller;

import org.rsd.bean.SysRole;
import org.rsd.service.ISysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("sysRole")
public class SysRoleController {
    @Autowired
    private ISysRoleService sysRoleService;

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public ModelAndView list(){
        ModelAndView modelAndView = new ModelAndView("/admin/jsp/sysRole/list.jsp");
        modelAndView.addObject("list",sysRoleService.queryList());
        return modelAndView;
    }

    @RequestMapping(value = "toUpdatePage/{id}",method = RequestMethod.GET)
    public ModelAndView toUpdagePage(@PathVariable Integer id){
        ModelAndView mov = new ModelAndView("/admin/jsp/sysRole/form.jsp");
        mov.addObject("sysRole",sysRoleService.getById(id));
        return mov;
    }

    @RequestMapping(value = "save",method = RequestMethod.POST)
    public String save(SysRole sysRole){
        if (sysRole.getId() == null || sysRole.getId().equals("")){
            sysRoleService.insert(sysRole);
        }else {
            sysRoleService.update(sysRole);
        }
        return "redirect:/sysRole/list";
    }

    @RequestMapping(value = "delete/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable Integer id){
        sysRoleService.doDelById(id);

        return "redirect:/sysRole/list";
    }
}
