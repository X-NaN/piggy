package com.xnn.util;

import com.xnn.constant.BaseResultStatus;

import java.util.HashMap;
import java.util.Map;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/12/06  20:25
 * Description:包装类用来传输外部数据
 * Modified By:
 */
public class ResultData {

    /*状态码*/
    private Object code;

    /*状态信息*/
    private String message;

    /*内容*/
    private Map<String, Object> data = new HashMap<String, Object>();

    public ResultData() {
    }

    public ResultData(Object code, String message) {
        super();
        this.code = code;
        this.message = message;
    }

    public ResultData(Object code, String message, Map<String, Object> data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public Object getCode() {
        return code;
    }

    public void setCode(Object code) {
        this.code = code;
    }

    public Object getData() {
        return data;
    }

    public void setData(Map<String, Object> message) {
        this.data = message;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
    public ResultData addMessage(String message){
        this.message = message;
        return this;
    }


    public ResultData putDataValue(String key, Object value) {
        data.put(key, value);
        return this;
    }

    public static ResultData repeat() {
        return new ResultData(
                BaseResultStatus.REPEAT.getCode(),
                BaseResultStatus.REPEAT.getMessage());
    }

    public static ResultData ok() {
        return new ResultData(
                BaseResultStatus.SUCCESS.getCode(),
                BaseResultStatus.SUCCESS.getMessage());
    }

    public static ResultData notFound() {
        return new ResultData(
                BaseResultStatus.NOT_FOND.getCode(),
                BaseResultStatus.NOT_FOND.getMessage());    }

    public static ResultData errorRequest() {
        return new ResultData(
                BaseResultStatus.ERROR_REQUEST.getCode(),
                BaseResultStatus.ERROR_REQUEST.getMessage());    }

    public static ResultData forbidden() {
        return new ResultData(
                BaseResultStatus.FORBIDDEN.getCode(),
                BaseResultStatus.FORBIDDEN.getMessage());    }

    public static ResultData unauthorized() {
        return new ResultData(
                BaseResultStatus.UNAUTHORIZED.getCode(),
                BaseResultStatus.UNAUTHORIZED.getMessage());    }

    public static ResultData serverError() {
        return new ResultData(
                BaseResultStatus.SERVER_ERROR.getCode(),
                BaseResultStatus.SERVER_ERROR.getMessage());    }

    public static ResultData error(){
        return new ResultData(
                BaseResultStatus.ERROR.getCode(),
                BaseResultStatus.ERROR.getMessage());
    }

}
