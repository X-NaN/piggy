package com.xnn.service.impl;

import com.fasterxml.jackson.databind.util.ObjectIdMap;
import com.taskadapter.redmineapi.bean.Issue;
import com.taskadapter.redmineapi.bean.IssueStatus;
import com.xnn.service.IReportService;
import com.xnn.util.ListUtils;
import com.xnn.util.ListUtilsHook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.print.DocFlavor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/12/17  10:40
 * Description:
 * Modified By:
 */
@Service
public class ReportService implements IReportService {

    @Autowired
    RedmineService redmineService;
    List<Issue> issues=null;

    /**
     * 问题状态分布
     * {value:30,name:'高圆圆'},
     * @param projectId
     * @return
     */
    public Map getBugStatusDistribution(String projectId){
        List<IssueStatus> issueStatuses=redmineService.getStatus();
        issues=redmineService.getIssuesByProjectId(projectId);
        List<String> statusList=new ArrayList<>();
        List bugNumber=new ArrayList();
        Map data=new HashMap<Object,Object>();
        for(final IssueStatus status:issueStatuses){
            List<Issue> temp= ListUtils.filter(issues, new ListUtilsHook<Issue>() {
                @Override
                public boolean test(Issue issue) {
                    if (issue.getStatusId().equals(status.getId()))
                        return true;
                    else
                        return false;
                }
            });
            bugNumber.add(temp.size());
            statusList.add(status.getName());
        }

        data.put("status",statusList);
        data.put("num",bugNumber);
        return data;
    }





}
