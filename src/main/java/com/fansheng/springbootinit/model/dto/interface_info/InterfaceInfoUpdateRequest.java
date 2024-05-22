package com.fansheng.springbootinit.model.dto.interface_info;

import lombok.Data;

import java.io.Serializable;

/**
 * 更新请求
 *
 * @author 
 * @from 
 */
@Data
public class InterfaceInfoUpdateRequest implements Serializable {

    /**
     * 接口id
     */
    private Long id;

    /**
     * 接口名
     */
    private String name;

    /**
     * 接口路径
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

    /**
     * 接口描述
     */
    private String description;

    /**
     * 接口状态，0-关闭，1-开启
     */
    private Integer status;


    private static final long serialVersionUID = 1L;
}