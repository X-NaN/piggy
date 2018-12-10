package com.xnn.dao;

import com.xnn.model.ProjectInfo;

import java.util.List;
import java.util.Map;

public interface ProjectInfoMapper {
    /**
     * 根据主键，删除项目记录
     * @param projectId
     * @return
     */
    int deleteByProjectId(String projectId);

    /**
     * 插入一条项目记录
     * @param projectInfo
     * @return 返回影响的行数，如果项目存在，插入行数为0，否则为1
     */
    int insert(ProjectInfo projectInfo);


    ProjectInfo selectByProjectId(String projectId);

    int updateByProjectId(ProjectInfo projectInfo);

    List<ProjectInfo> selectAll();

    List<ProjectInfo> selectProjectByPage(Map<String,Object> data);


}