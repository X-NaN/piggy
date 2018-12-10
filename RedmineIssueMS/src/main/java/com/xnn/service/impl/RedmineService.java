package com.xnn.service.impl;

import com.sun.org.apache.xalan.internal.utils.XMLSecurityManager;
import com.taskadapter.redmineapi.*;
import com.taskadapter.redmineapi.bean.*;
import com.taskadapter.redmineapi.internal.ResultsWrapper;
import com.xnn.service.IRedmineService;
import org.springframework.stereotype.Service;

import javax.persistence.Convert;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/11/28  09:51
 * Description:
 * Modified By:
 */
@Service
public class RedmineService implements IRedmineService {
    final String uri = "http://api.redmine.meizu.com";
    final String apiAccessKey = "50fe29df93ea5c125e9ac3cba81d176208d7e9f6";

    final int pageSize = 100;//pageSize
    RedmineManager mgr = RedmineManagerFactory.createWithApiKey(uri, apiAccessKey);
    IssueManager issueManager = mgr.getIssueManager();

    /**
     * 查询项目所有问题
     *
     * @param projectId
     * @return
     */
    public List<Issue> getIssuesByProjectId(String projectId) {

        List<Issue> issues = getALlIssuesByProjectId(projectId);
        for (Issue issue : issues) {
            System.out.println(issue.toString());
        }

        return issues;
    }

    /**
     * 获取Project对象
     * @param projectKey
     * @return
     */
    public Project getProject(String projectKey){
        Project project= null;
        try {
            project = mgr.getProjectManager().getProjectByKey(projectKey);
        } catch (RedmineException e) {
            e.printStackTrace();
        }

        return project;
    }



    /**
     * 根据项目Id，查询该项目所有Issues
     *
     * @param projectKey 项目Id
     * @return 项目所有Issues
     */
    public List<Issue> getALlIssuesByProjectId(String projectKey) {
        List<Issue> allIssuesList = new ArrayList<Issue>();
        List<Issue> issues = null;
        Map<String, String> params = new HashMap<String, String>();
        params.put("project_id", projectKey);
        params.put("status_id", "*");
        params.put("limit", Integer.toString(pageSize));
        params.put("offset", "0");

        ResultsWrapper<Issue> resultsWrapper = null;
        try {
            resultsWrapper = issueManager.getIssues(params);
            //总记录数
            int totalCount = resultsWrapper.getTotalFoundOnServer();
            issues = resultsWrapper.getResults();

            allIssuesList.addAll(issues);
            int pageCount = (int) Math.ceil((totalCount / (double) pageSize));
            for (int i = 2; i <= pageCount; i++) {
                int offset = pageSize * (i - 1);
                params.put("offset", Integer.toString(offset));

                /*
                try {
                    Thread.sleep(2);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                */
                //查询结果
                synchronized (issueManager) {
                    resultsWrapper = issueManager.getIssues(params);
                }

                issues = resultsWrapper.getResults();
                allIssuesList.addAll(issues);
            }

        } catch (RedmineException e) {
            e.printStackTrace();
        }

        for (Issue issue : allIssuesList) {
            System.out.println(issue.toString());
        }
        System.out.println("项目：" + projectKey + "Issue总数：" + allIssuesList.size());
        return allIssuesList;

    }

    /**
     * @param projectKey
     * @param limit     pageSieze
     * @param offset    偏移量（第几页）
     * @return
     */
    public List<Issue> getIssuesByPage(String projectKey, int limit, int offset) {
        List<Issue> issues = null;
        Map<String, String> params = new HashMap<String, String>();
        params.put("project_id", projectKey);
        params.put("status_id", "*");
        params.put("limit", Integer.toString(limit));
        params.put("offset", Integer.toString(offset));
        ResultsWrapper<Issue> resultsWrapper = null;

        try {
            resultsWrapper = issueManager.getIssues(params);
        } catch (RedmineException e) {
            e.printStackTrace();
        }
        issues = resultsWrapper.getResults();

        return issues;
    }

    /**
     * 获得所有问题状态
     * @return
     */
    public List<IssueStatus> getStatus() {

        List<IssueStatus> statusList = null;
        try {
            statusList = issueManager.getStatuses();
        } catch (RedmineException e) {
            e.printStackTrace();
        }

        return statusList;
    }

    /**
     * 获得优先级
     * @return
     */
    public List<IssuePriority> getIssuePriorities() {
        List<IssuePriority> priorityList=null;
        try {
            priorityList=issueManager.getIssuePriorities();
        } catch (RedmineException e) {
            e.printStackTrace();
        }
        return priorityList;
    }

    /**
     *
     * @param projectID
     * @return
     * @throws RedmineException
     */
    public List<IssueCategory> getCategories(int projectID) throws RedmineException {

        List<IssueCategory> categoryList=issueManager.getCategories(projectID);
        return categoryList;

    }

}
