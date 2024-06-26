package com.fansheng.fanshengapibackend.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.fansheng.fanshengapibackend.model.dto.interface_info.InterfaceInfoQueryRequest;
import com.fansheng.fanshengapibackend.model.vo.InterfaceInfoVO;
import com.fansheng.fanshengapicommon.model.entity.InterfaceInfo;

import javax.servlet.http.HttpServletRequest;

/**
 * @author xiang
 * @description 针对表【interface_info(接口信息表)】的数据库操作Service
 * @createDate 2024-05-20 15:53:48
 */
public interface InterfaceInfoService extends IService<InterfaceInfo> {
    void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add);

    QueryWrapper<InterfaceInfo> getQueryWrapper(InterfaceInfoQueryRequest interfaceInfo);

    InterfaceInfoVO getInterfaceInfoVO(InterfaceInfo interfaceInfo, HttpServletRequest request);

    Page<InterfaceInfoVO> getInterfaceInfoVOPage(Page<InterfaceInfo> postPage, HttpServletRequest request);
}
