package org.rsd.controller;

import org.rsd.bean.SysFunction;
import org.rsd.service.ISysFunctionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("sysFunction")
public class SysFunctionController {
    @Autowired
    private ISysFunctionService sysFunctionService;

    @RequestMapping(value = "list",method = RequestMethod.GET)
    public ModelAndView list(){
        ModelAndView modelAndView = new ModelAndView("/admin/jsp/sysFunction/list.jsp");
        modelAndView.addObject("list",sysFunctionService.queryList());
        return modelAndView;
    }

    @RequestMapping(value = "toUpdatePage/{id}",method = RequestMethod.GET)
    public ModelAndView toUpdagePage(@PathVariable Integer id){
        ModelAndView mov = new ModelAndView("/admin/jsp/sysFunction/form.jsp");
        mov.addObject("sysFunction",sysFunctionService.getById(id));
        return mov;
    }

    @RequestMapping(value = "save",method = RequestMethod.POST)
    public String save(SysFunction sysFunction){
        if (sysFunction.getId() == null || sysFunction.getId().equals("")){
            sysFunctionService.insert(sysFunction);
        }else {
            sysFunctionService.update(sysFunction);
        }
        return "redirect:/sysFunction/list";
    }

    @RequestMapping(value = "delete/{id}",method = RequestMethod.GET)
    public String delete(@PathVariable Integer id){
        sysFunctionService.doDelById(id);

        return "redirect:/sysFunction/list";
    }
}
