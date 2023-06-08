package com.gatsby.crm;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

/**
 * @PACKAGE_NAME: com.gatsby.crm
 * @NAME: App
 * @AUTHOR: Jonah
 * @DATE: 2023/6/3
 */

@SpringBootApplication
@MapperScan("com.gatsby.crm.dao")
public class App {
    public static void main(String[] args) {
        SpringApplication.run(App.class);
    }
}
