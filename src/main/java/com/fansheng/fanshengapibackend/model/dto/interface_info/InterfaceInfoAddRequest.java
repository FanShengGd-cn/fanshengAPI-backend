package com.fansheng.fanshengapibackend.model.dto.interface_info;

import lombok.Data;

import java.io.Serializable;

/**
 * 创建请求
 *
 * @author 
 * @from 
 */
@Data
public class InterfaceInfoAddRequest implements Serializable {

    /**
     * 接口名
     */
    private String name;


    /**
     * 请求地址,例：http://127.0.0.1
     */
    private String host;

    /**
     * 接口路径,例：/api/name
     */
    private String url;


    /**
     * 请求方式
     */
    private String method;

    /**
     * 请求头
     */
    private String requestHeader;

    /**
     * 响应头
     */
    private String responseHeader;

    private String requestParams;

    /**
     * 接口描述
     */
    private String description;


    private static final long serialVersionUID = 1L;
}