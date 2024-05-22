package com.fansheng.springbootinit.model.vo;

import com.baomidou.mybatisplus.annotation.TableId;
import com.fansheng.springbootinit.model.entity.InterfaceInfo;
import lombok.Data;
import org.springframework.beans.BeanUtils;

import java.io.Serializable;
import java.util.Date;

/**
 * 帖子视图
 *
 * @author 
 * @from 
 */
@Data
public class InterfaceInfoVO implements Serializable {

    /**
     * 接口id
     */
    @TableId
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

    /**
     *
     */
    private UserVO userVO;

    /**
     * 创建时间
     */
    private Date createTime;

    /**
     * 更新时间
     */
    private Date updateTime;

    /**
     * 包装类转对象
     *
     * @param interfaceInfoVO
     * @return
     */
    public static InterfaceInfo voToObj(InterfaceInfoVO interfaceInfoVO) {
        if (interfaceInfoVO == null) {
            return null;
        }
        InterfaceInfo post = new InterfaceInfo();
        BeanUtils.copyProperties(interfaceInfoVO, post);
        return post;
    }

    /**
     * 对象转包装类
     *
     * @param interfaceInfo
     * @return
     */
    public static InterfaceInfoVO objToVo(InterfaceInfo interfaceInfo) {
        if (interfaceInfo == null) {
            return null;
        }
        InterfaceInfoVO postVO = new InterfaceInfoVO();
        BeanUtils.copyProperties(interfaceInfo, postVO);
        return postVO;
    }


}
