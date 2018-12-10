package com.xnn.dao;

import com.xnn.model.SystemFunction;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface SystemFunctionMapper {

    int insert(SystemFunction record);

    int insertSelective(SystemFunction record);

    int updateByPrimaryKeySelective(SystemFunction record);

    int updateByPrimaryKey(SystemFunction record);

    public List<SystemFunction> loadOrgTree();

    public List<SystemFunction> loadOrgChildrenTree(@Param("FID") String FID);
}