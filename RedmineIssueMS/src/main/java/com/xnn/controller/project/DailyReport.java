package com.xnn.controller.project;

import com.taskadapter.redmineapi.RedmineException;
import com.taskadapter.redmineapi.bean.Issue;
import com.taskadapter.redmineapi.bean.IssueCategory;
import com.taskadapter.redmineapi.bean.Project;
import com.xnn.dto.ProjectInfoDto;
import com.xnn.model.ProjectInfo;
import com.xnn.service.impl.ProjectServiceImpl;
import com.xnn.service.impl.RedmineService;
import com.xnn.service.impl.ReportService;
import com.xnn.util.ResultData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/12/17  09:39
 * Description:
 * Modified By:
 */
@Controller
@RequestMapping("/dailyReport")
public class DailyReport {

    @Autowired
    ProjectServiceImpl projectServiceImpl;

    @Autowired
    RedmineService redmineService;
    @Autowired
    ReportService reportService;

    @RequestMapping("/{projectId}")
    public ModelAndView init(@PathVariable String projectId) {
        //创建一个模型视图对象
        ModelAndView mav = new ModelAndView();
        //获取到查询的数据
        ProjectInfoDto projectInfo = projectServiceImpl.getByProjectId(projectId);
        // //将数据放置到ModelAndView对象view中,第二个参数可以是任何java类型
        mav.addObject("project", projectInfo);
        // 放入jsp路径
        mav.setViewName("/project/ProjectDailyReport");
        //返回ModelAndView对象mav
        return mav;
    }

    @RequestMapping(value = "/getChart", params = {"projectId"})
    public void getProjectChart(@RequestParam("projectId") String projectId, Model model) {

        Project project = redmineService.getProject(projectId);

        Map<String, Object> categoryIssueCount = new HashMap<String, Object>();
        List<IssueCategory> categoryList = null;
        try {
            categoryList = redmineService.getCategories(project.getId());
        } catch (RedmineException e) {
            e.printStackTrace();
        }
        List<Issue> issueList = redmineService.getALlIssuesByProjectId(project.getIdentifier());
        for (int i = 0; i < categoryList.size(); i++) {
            IssueCategory category = categoryList.get(i);

        }

    }
    @RequestMapping(value = "/getBugStatusDistribution", params = {"projectId"})
    @ResponseBody
    public Map getBugStatusDistribution(@RequestParam("projectId")String projectId){
        Map data=reportService.getBugStatusDistribution(projectId);
        return data;
    }



}
