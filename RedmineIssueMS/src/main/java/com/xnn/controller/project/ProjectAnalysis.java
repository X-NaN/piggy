package com.xnn.controller.project;

import com.taskadapter.redmineapi.RedmineException;
import com.taskadapter.redmineapi.bean.Issue;
import com.taskadapter.redmineapi.bean.IssueCategory;
import com.taskadapter.redmineapi.bean.Project;
import com.xnn.service.impl.RedmineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/11/29  14:48
 * Description:
 * Modified By:
 */
@Controller
@RequestMapping("/projectAnalysis")
public class ProjectAnalysis {

    @Autowired
    RedmineService redmineService;

    @RequestMapping("/getProjectAnalysis")
    public String getProjectAnalysis(){
        return "/project/ProjectAnalysis";
    }



    /**
     * @param projectId
     * @return
     */
    @RequestMapping(value = "/getProjectRedmine", params = {"projectId"})
    public ModelAndView getProjectRedmine(@RequestParam("projectId") String projectId) {

        ModelAndView mav = new ModelAndView();
        List<Issue> issueList = redmineService.getALlIssuesByProjectId(projectId);
        mav.addObject("issuesList", issueList);
        // 放入jsp路径
        mav.setViewName("/project/ProjectDailyReport");
        //返回ModelAndView对象mav
        return mav;
    }



}
