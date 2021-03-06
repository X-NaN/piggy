package com.xnn.service.impl;

import com.xnn.dao.ProjectInfoMapper;
import com.xnn.dto.ProjectInfoDto;
import com.xnn.model.ProjectInfo;
import com.xnn.service.IProjectService;
import org.omg.PortableServer.LIFESPAN_POLICY_ID;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/11/20  18:02
 * Description:
 * Modified By:
 */
@Service
public class ProjectServiceImpl implements IProjectService {

    @Autowired
    private ProjectInfoMapper projectInfoMapper;

    public ProjectInfoDto getByProjectId(String projectId) {
        ProjectInfo projectInfo = projectInfoMapper.selectByProjectId(projectId);
        ProjectInfoDto projectInfoDto=new ProjectInfoDto();
        if (projectInfo!=null){
            BeanUtils.copyProperties(projectInfo,projectInfoDto);
        }
        return projectInfoDto;
    }

    /**
     * 插入机型项目信息
     *
     * @param projectInfoDto
     * @return
     */
    public boolean insertProject(ProjectInfoDto projectInfoDto) {
        ProjectInfo projectInfo = new ProjectInfo();
        if (projectInfoDto != null) {
            BeanUtils.copyProperties(projectInfoDto, projectInfo);
            projectInfoMapper.insert(projectInfo);
            return true;

        } else {
            return false;
        }
    }

    /**
     * 获得所有机型项目
     *
     * @return
     */
    public List<ProjectInfoDto> getAll() {
        List<ProjectInfoDto> result = new ArrayList<ProjectInfoDto>();
        List<ProjectInfo> projectInfoList = projectInfoMapper.selectAll();
        for (ProjectInfo projectInfo : projectInfoList) {
            ProjectInfoDto projectInfoDto = new ProjectInfoDto();
            BeanUtils.copyProperties(projectInfo, projectInfoDto);
            result.add(projectInfoDto);
        }
        return result;
    }

    /**
     * 分页查询
     * @param currPage
     * @param pageSize
     * @return
     */
    public List<ProjectInfoDto> selectProjectByPage(int currPage,int pageSize){
        Map<String,Object> data=new HashMap<String, Object>();
        data.put("currPage",currPage);
        data.put("pageSize",pageSize);
        List<ProjectInfoDto> result=new ArrayList<ProjectInfoDto>();
        List<ProjectInfo> projectInfoList=projectInfoMapper.selectProjectByPage(data);
         for (ProjectInfo projectInfo:projectInfoList){
             ProjectInfoDto projectInfoDto=new ProjectInfoDto();
             BeanUtils.copyProperties(projectInfo,projectInfoDto);
             result.add(projectInfoDto);
         }

         return result;
    }
}
