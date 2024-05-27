package com.fansheng.fanshengapibackend.service.impl;

import cn.hutool.core.collection.CollUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.fansheng.fanshengapibackend.common.ErrorCode;
import com.fansheng.fanshengapibackend.constant.CommonConstant;
import com.fansheng.fanshengapibackend.exception.ThrowUtils;
import com.fansheng.fanshengapibackend.mapper.InterfaceInfoMapper;
import com.fansheng.fanshengapibackend.model.dto.interface_info.InterfaceInfoQueryRequest;
import com.fansheng.fanshengapibackend.model.entity.InterfaceInfo;
import com.fansheng.fanshengapibackend.model.entity.PostFavour;
import com.fansheng.fanshengapibackend.model.entity.PostThumb;
import com.fansheng.fanshengapibackend.model.entity.User;
import com.fansheng.fanshengapibackend.model.vo.InterfaceInfoVO;
import com.fansheng.fanshengapibackend.model.vo.UserVO;
import com.fansheng.fanshengapibackend.service.InterfaceInfoService;
import com.fansheng.fanshengapibackend.service.UserService;
import com.fansheng.fanshengapibackend.utils.SqlUtils;
import org.apache.commons.lang3.ObjectUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * @author xiang
 * @description 针对表【interface_info(接口信息表)】的数据库操作Service实现
 * @createDate 2024-05-20 15:53:48
 */
@Service
public class InterfaceInfoServiceImpl extends ServiceImpl<InterfaceInfoMapper, InterfaceInfo>
        implements InterfaceInfoService {

    @Resource
    private UserService userService;


    @Override
    public void validInterfaceInfo(InterfaceInfo interfaceInfo, boolean add) {

        ThrowUtils.throwIf(interfaceInfo == null, ErrorCode.PARAMS_ERROR);
        String name = interfaceInfo.getName();
        String url = interfaceInfo.getUrl();
        String method = interfaceInfo.getMethod();
        String requestHeader = interfaceInfo.getRequestHeader();
        String responseHeader = interfaceInfo.getResponseHeader();
        String description = interfaceInfo.getDescription();
        if (add) {
            ThrowUtils.throwIf(StringUtils.isAnyBlank(name, url, method, requestHeader, responseHeader), ErrorCode.PARAMS_ERROR);
        }
        ThrowUtils.throwIf(name .length() > 50, ErrorCode.PARAMS_ERROR,"内容过长");


    }

    @Override
    public QueryWrapper<InterfaceInfo> getQueryWrapper(InterfaceInfoQueryRequest interfaceInfoQueryRequest) {
        QueryWrapper<InterfaceInfo> queryWrapper = new QueryWrapper<>();
        if (interfaceInfoQueryRequest == null) {
            return queryWrapper;
        }
        Long id = interfaceInfoQueryRequest.getId();
        String name = interfaceInfoQueryRequest.getName();
        String url = interfaceInfoQueryRequest.getUrl();
        String method = interfaceInfoQueryRequest.getMethod();
        String description = interfaceInfoQueryRequest.getDescription();
        Integer status = interfaceInfoQueryRequest.getStatus();
        Long userId = interfaceInfoQueryRequest.getUserId();
        String sortField = interfaceInfoQueryRequest.getSortField();
        String sortOrder = interfaceInfoQueryRequest.getSortOrder();

        // 拼接查询条件
        if (StringUtils.isNotBlank(name)) {
            queryWrapper.and(qw -> qw.like("name", name));
        }
        queryWrapper.like(StringUtils.isNotBlank(url), "url", url);
        queryWrapper.like(StringUtils.isNotBlank(method), "method", method);
        queryWrapper.like(StringUtils.isNotBlank(description), "description", description);
        queryWrapper.like(ObjectUtils.isNotEmpty(status), "status", status);
        queryWrapper.eq(ObjectUtils.isNotEmpty(id), "id", id);
        queryWrapper.eq(ObjectUtils.isNotEmpty(userId), "userId", userId);
        queryWrapper.orderBy(SqlUtils.validSortField(sortField), sortOrder.equals(CommonConstant.SORT_ORDER_ASC),
                sortField);
        return queryWrapper;
    }

    @Override
    public InterfaceInfoVO getInterfaceInfoVO(InterfaceInfo interfaceInfo, HttpServletRequest request) {
        InterfaceInfoVO interfaceInfoVO = InterfaceInfoVO.objToVo(interfaceInfo);
        long postId = interfaceInfo.getId();
        // 1. 关联查询用户信息
        Long userId = interfaceInfo.getUserId();
        User user = null;
        if (userId != null && userId > 0) {
            user = userService.getById(userId);
        }
        UserVO userVO = userService.getUserVO(user);
        interfaceInfoVO.setUserVO(userVO);
        // 2. 已登录，获取用户点赞、收藏状态
        User loginUser = userService.getLoginUserPermitNull(request);
        if (loginUser != null) {
            // 获取点赞
            QueryWrapper<PostThumb> postThumbQueryWrapper = new QueryWrapper<>();
            postThumbQueryWrapper.in("postId", postId);
            postThumbQueryWrapper.eq("userId", loginUser.getId());

            // 获取收藏
            QueryWrapper<PostFavour> postFavourQueryWrapper = new QueryWrapper<>();
            postFavourQueryWrapper.in("postId", postId);
            postFavourQueryWrapper.eq("userId", loginUser.getId());

        }
        return interfaceInfoVO;
    }

    @Override
    public Page<InterfaceInfoVO> getInterfaceInfoVOPage(Page<InterfaceInfo> interfaceInfoPage, HttpServletRequest request) {
        List<InterfaceInfo> infoList = interfaceInfoPage.getRecords();
        Page<InterfaceInfoVO> postVOPage = new Page<>(interfaceInfoPage.getCurrent(), interfaceInfoPage.getSize(), interfaceInfoPage.getTotal());
        if (CollUtil.isEmpty(infoList)) {
            return postVOPage;
        }
        // 1. 关联查询用户信息
        Set<Long> userIdSet = infoList.stream().map(InterfaceInfo::getUserId).collect(Collectors.toSet());
        Map<Long, List<User>> userIdUserListMap = userService.listByIds(userIdSet).stream()
                .collect(Collectors.groupingBy(User::getId));
        // 2. 已登录，获取用户点赞、收藏状态
        User loginUser = userService.getLoginUserPermitNull(request);
        if (loginUser != null) {
            Set<Long> postIdSet = infoList.stream().map(InterfaceInfo::getId).collect(Collectors.toSet());
            loginUser = userService.getLoginUser(request);
            // 获取点赞
            QueryWrapper<PostThumb> postThumbQueryWrapper = new QueryWrapper<>();
            postThumbQueryWrapper.in("postId", postIdSet);
            postThumbQueryWrapper.eq("userId", loginUser.getId());
            // 获取收藏
            QueryWrapper<PostFavour> postFavourQueryWrapper = new QueryWrapper<>();
            postFavourQueryWrapper.in("postId", postIdSet);
            postFavourQueryWrapper.eq("userId", loginUser.getId());
        }
        // 填充信息
        List<InterfaceInfoVO> interfaceInfoVOList = infoList.stream().map(info -> {
            InterfaceInfoVO interfaceInfoVO = InterfaceInfoVO.objToVo(info);
            Long userId = info.getUserId();
            User user = null;
            if (userIdUserListMap.containsKey(userId)) {
                user = userIdUserListMap.get(userId).get(0);
            }
            interfaceInfoVO.setUserVO(userService.getUserVO(user));
            return interfaceInfoVO;
        }).collect(Collectors.toList());
        postVOPage.setRecords(interfaceInfoVOList);
        return postVOPage;
    }
}




