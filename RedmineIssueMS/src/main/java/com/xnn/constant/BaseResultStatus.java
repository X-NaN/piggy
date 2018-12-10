package com.xnn.constant;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/12/06  20:25
 * Description:操作结果类型
 * Modified By:
 */
public enum BaseResultStatus {
    REPEAT(1101,"数据库内容已存在"),
    SUCCESS(1200, "成功"),
    ERROR_REQUEST(1400, "错误的请求"),
    UNAUTHORIZED(1401, "没有授权"),
    FORBIDDEN(1403, "没有权限访问"),
    ERROR_USERNAME(14031, "用户名错误"),
    ERROR_PASSWORD(14032, "密码错误"),
    TOKEN_EXPIRED(14033, "TOKEN过期"),
    NOT_FOND(1404, "页面不存在"),
    SERVER_ERROR(1500, "服务器错误"),
    ERROR(9999, "其他异常");

    private Integer code;
    private String message;

    BaseResultStatus(Integer code, String message) {
        this.code = code;
        this.message = message;
    }


    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

}
