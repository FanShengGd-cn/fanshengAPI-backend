package com.fansheng.fanshengapibackend.model.dto.interface_info;

import com.fansheng.fanshengapibackend.common.PageRequest;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * 查询请求
 *
 * @author 
 * @from 
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class InterfaceInfoQueryRequest extends PageRequest implements Serializable {

    /**
     * 接口id
     */
    private Long id;

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

    /**
     * 接口状态，0-关闭，1-开启
     */
    private Integer status;

    /**
     *
     */
    private Long userId;

    private static final long serialVersionUID = 1L;
}