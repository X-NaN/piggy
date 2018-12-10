package com.xnn.service.impl;

import com.xnn.dao.SystemFunctionMapper;
import com.xnn.model.SystemFunction;
import com.xnn.service.ISystemFunctionService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/10/15  20:37
 * Description:
 * Modified By:
 */
@Service("systemFunctionService")
public class SystemFunctionServiceImpl implements ISystemFunctionService {
    @Resource
    private SystemFunctionMapper systemFunctionMapper;
    public List<SystemFunction> loadOrgTree(){
        return systemFunctionMapper.loadOrgTree();
    }

    public List<SystemFunction> loadOrgChildrenTree(String FID){
        return systemFunctionMapper.loadOrgChildrenTree(FID);
    }
}
