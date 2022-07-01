package org.rsd.myAop;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;
import org.springframework.cglib.proxy.MethodProxy;

import java.lang.reflect.Method;

public class MySayHello implements MethodInterceptor {

    @Override
    public Object invoke(MethodInvocation invocation) throws Throwable {
        System.out.println("--------------------我是环绕通知start------------------");
        Object proceed = invocation.proceed();
        System.out.println("--------------------我是环绕通知end------------------");
        return proceed;
    }
}
