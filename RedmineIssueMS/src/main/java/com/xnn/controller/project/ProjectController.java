package com.xnn.controller.project;

import com.xnn.constant.PageCodeEnum;
import com.xnn.dto.ProjectInfoDto;
import com.xnn.model.ProjectInfo;
import com.xnn.service.impl.ProjectServiceImpl;
import com.xnn.constant.BaseResultStatus;
import com.xnn.util.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/11/20  17:45
 * Description:
 * Modified By:
 */
@Controller
@RequestMapping("/project")
public class ProjectController {

    @Autowired
    ProjectServiceImpl projectServiceImpl;

    /**
     * @param projectInfoDto
     * @param model
     * @return
     */
    @RequestMapping("/addProject")
    public String add(ProjectInfoDto projectInfoDto, Model model) {
        if (projectServiceImpl.insertProject(projectInfoDto)) {
            model.addAttribute(PageCodeEnum.KEY, PageCodeEnum.ADD_SUCCESS);
        } else {
            model.addAttribute(PageCodeEnum.KEY, PageCodeEnum.ADD_FAIL);
        }
        //返回视图名
        return "/project/addProject";
    }


    /**
     * OK的方法
     *
     * @param projectId
     * @return
     */

    @RequestMapping("/getProject/{projectId}")
    public ModelAndView getProjectById(@PathVariable("projectId") String projectId) {
        //创建一个模型视图对象
        ModelAndView mav = new ModelAndView();
        //获取到查询的数据
        ProjectInfo projectInfo = projectServiceImpl.getByProjectId(projectId);

        // //将数据放置到ModelAndView对象view中,第二个参数可以是任何java类型
        mav.addObject("project", projectInfo);
        // 放入jsp路径
        //mav.setViewName("/project/ProjectDailyReport");
        //返回ModelAndView对象mav
        return mav;
    }

    /**
     * 获得请求参数
     * @param projectId
     * @return
     */
    /*
    @RequestMapping(value = "/getProject", params={ "projectId" })
    public ModelAndView getProjectById(@RequestParam("projectId") String projectId) {
        //创建一个模型视图对象
        ModelAndView mav = new ModelAndView();
        //获取到查询的数据
        ProjectInfo projectInfo = projectServiceImpl.getByProjectId(projectId);

        // //将数据放置到ModelAndView对象view中,第二个参数可以是任何java类型
        mav.addObject("project", projectInfo);
        // 放入jsp路径
        mav.setViewName("/project/ProjectDailyReport");
        //返回ModelAndView对象mav
        return mav;
    }
    */

    /**
     * OK的方法
     *
     * @param projectId 请求参数
     * @ 返回json数据
     */

    @RequestMapping(value = "/getProject", params = {"projectId"})
    @ResponseBody
    public ProjectInfo getProjectByProjectId(@RequestParam("projectId") String projectId) {

        //获取到查询的数据
        ProjectInfo projectInfo = projectServiceImpl.getByProjectId(projectId);
        return projectInfo;
    }


    /*
    有两种接收前端数据的方式，一种使用Map接收，一种使用实体类进行接收
    @RequestMapping("/peopleSelect")
    @ResponseBody
    public People peopleSelect(@RequestBody People requestPeople ) {
        //使用requestPeople.getId方法得到JSON中id对应的值
        long id = requestPeople.getId();
        //查找对应id的用户信息
        People people = peopleService.getById(id);
        //返回用户信息，要使用@ResponseBody将返回值转换为JSON
        return people;
    }
*/

    @ResponseBody
    @RequestMapping("/list")
    public ResultData getAllProject(){
        ResultData resultData=new ResultData();
        List<ProjectInfoDto> projectInfoDtoList=projectServiceImpl.getAll();
        resultData.setCode(BaseResultStatus.SUCCESS.getCode());//BaseResultStatus.SUCCESS是枚举实例
        resultData.setMessage(BaseResultStatus.SUCCESS.getMessage());
        Map data=new HashMap<String,Object>();
        data.put("projects",projectInfoDtoList);
        resultData.setData(data);
        return resultData;
    }

    @ResponseBody
    @RequestMapping(value = "/page/{currPage}/{pageSize}")
    public ResultData getProjectsByPage(@PathVariable("currPage") int currPage,@PathVariable("pageSize") int pageSize){
        ResultData resultData=new ResultData();
        List<ProjectInfoDto> projects=projectServiceImpl.selectProjectByPage(currPage,pageSize);
        if (projects.size()>0){
            resultData.setCode(BaseResultStatus.SUCCESS.getCode());
            resultData.setMessage(BaseResultStatus.SUCCESS.getMessage());
            Map data=new HashMap<String,Object>();
            data.put("projetcs",projects);
            resultData.setData(data);
        }else {
            resultData.setCode(BaseResultStatus.ERROR.getCode());
            resultData.setMessage(BaseResultStatus.SUCCESS.getMessage());
        }
        return resultData;

    }




}
