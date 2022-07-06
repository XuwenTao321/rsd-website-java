package org.rsd.myAop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;
import java.util.Date;

@Component
@Aspect
public class UpdateInfo {

    @Before("execution(* org.rsd.dao.impl.*.insert(..))")
    public void info1(JoinPoint joinPoint){
        Object[] args = joinPoint.getArgs();
        Class<?> clazz = args[0].getClass();
        Method method = null;
        try {
            method = clazz.getMethod("setCreateTime", Date.class);
            method.invoke(args[0],new Date());
        } catch (Exception e) {

        }
    }

    @Before("execution(* org.rsd.dao.impl.*.update(..))")
    public void info2(JoinPoint joinPoint){
        Object[] args = joinPoint.getArgs();
        Class<?> clazz = args[0].getClass();
        Method method = null;
        try {
            method = clazz.getMethod("setUpdateTime", Date.class);
            method.invoke(args[0],new Date());
        } catch (Exception e) {

        }
    }
}
