package com.gatsby.crm;

import com.alibaba.fastjson.JSON;
import com.gatsby.crm.base.ResultInfo;
import com.gatsby.crm.exceptions.NoLoginException;
import com.gatsby.crm.exceptions.ParamsException;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.annotation.Annotation;

/**
 * @PACKAGE_NAME: com.gatsby
 * @NAME: GlobalExceptionResolver
 * @AUTHOR: Jonah
 * @DATE: 2023/6/5
 */

@Component
public class GlobalExceptionResolver implements HandlerExceptionResolver {

    /**
     * @param req
     * @param resp
     * @param handler
     * @param e
     * @return
     */
    @Override
    public ModelAndView resolveException(HttpServletRequest req, HttpServletResponse resp, Object handler, Exception e) {

        if (e instanceof NoLoginException) {
            ModelAndView modelAndView = new ModelAndView("redirect:/index");
            return modelAndView;
        }

        ModelAndView modelAndView = new ModelAndView("error");
        modelAndView.addObject("code", 500);
        modelAndView.addObject("msg", "系统异常，请重试...");

        if (handler instanceof HandlerMethod) {
            HandlerMethod handlerMethod = (HandlerMethod) handler;
            ResponseBody responseBody = handlerMethod.getMethod().getDeclaredAnnotation(ResponseBody.class);

            if (responseBody == null) {
                if (e instanceof ParamsException) {
                    ParamsException pe = (ParamsException) e;
                    modelAndView.addObject("code", pe.getCode());
                    modelAndView.addObject("msg", pe.getMsg());
                }

                return modelAndView;
            } else {
                ResultInfo resultInfo = new ResultInfo();
                resultInfo.setCode(500);
                resultInfo.setMsg("系统异常，请重试...");

                if (e instanceof ParamsException) {
                    ParamsException pe = (ParamsException) e;
                    resultInfo.setCode(pe.getCode());
                    resultInfo.setMsg(pe.getMsg());
                }

                resp.setContentType("application/json;charset=UTF-8");

                PrintWriter out = null;

                try {
                    out = resp.getWriter();
                    String jsonString = JSON.toJSONString(resultInfo);
                    out.write(jsonString);

                } catch (IOException ex) {
                    ex.printStackTrace();
                } finally {
                    if (out != null) {
                        out.close();
                    }
                }
                return null;
            }
        }
        return modelAndView;
    }
}
