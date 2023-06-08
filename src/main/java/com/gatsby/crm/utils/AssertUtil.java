package com.gatsby.crm.utils;


import com.gatsby.crm.exceptions.ParamsException;

public class AssertUtil {


    public static void isTrue(Boolean flag, String msg) {
        if (flag) {
            throw new ParamsException(msg);
        }
    }

}
