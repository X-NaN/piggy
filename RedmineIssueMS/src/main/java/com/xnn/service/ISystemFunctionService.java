package com.xnn.service;

import com.xnn.model.SystemFunction;

import java.util.List;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/10/15  20:36
 * Description:
 * Modified By:
 */
public interface ISystemFunctionService {
    public List<SystemFunction> loadOrgTree();
    public List<SystemFunction> loadOrgChildrenTree(String FID);

}
