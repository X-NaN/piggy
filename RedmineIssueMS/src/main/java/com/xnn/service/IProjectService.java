package com.xnn.service;

import com.xnn.dto.ProjectInfoDto;
import com.xnn.model.ProjectInfo;
import com.xnn.model.SystemFunction;

import java.util.List;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/11/20  18:02
 * Description:
 * Modified By:
 */
public interface IProjectService {

    /**
     * 根据项目ID，查询一条机型项目记录
     * @param projectId 项目ID
     * @return 项目对象
     */
    public ProjectInfo getByProjectId(String projectId);

    /**
     * 插入机型项目信息
     * @param projectInfoDto
     * @return 是否插入成功
     */
    public  boolean insertProject(ProjectInfoDto projectInfoDto);


    public List<ProjectInfoDto> getAll();


}

