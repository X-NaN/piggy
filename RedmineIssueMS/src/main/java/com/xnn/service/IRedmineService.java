package com.xnn.service;

import com.taskadapter.redmineapi.bean.Issue;

import java.util.List;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/11/27  18:02
 * Description:
 * Modified By:
 */
public interface IRedmineService {

    public List<Issue> getIssuesByProjectId(String projectId);

    public List<Issue> getALlIssuesByProjectId(String projectId);




}
