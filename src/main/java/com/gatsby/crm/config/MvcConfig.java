package com.gatsby.crm.config;

import com.gatsby.crm.interceptor.NoLoginInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * @PACKAGE_NAME: com.gatsby.crm.config
 * @NAME: MvcConfig
 * @AUTHOR: Jonah
 * @DATE: 2023/6/5
 */

@Configuration
public class MvcConfig extends WebMvcConfigurerAdapter {

    @Bean
    public NoLoginInterceptor noLoginInterceptor() {
        return new NoLoginInterceptor();
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(noLoginInterceptor()).addPathPatterns("/**").excludePathPatterns("/css/**", "/images/**", "/js/**", "/lib/**", "/index", "/user/login");
    }
}
