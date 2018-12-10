package com.xnn.controller;

import com.xnn.model.SystemFunction;
import com.xnn.service.ISystemFunctionService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created with IDEA
 * Author:Nana Xing
 * Date:2018/10/11  19:35
 * Description:
 * Modified By:
 */
@Controller
public class SystemFunctionController {
    @Resource
    private ISystemFunctionService systemFunctionService;
    @RequestMapping("/loadOrgTree")
    @ResponseBody
    public String loadOrgTree(){
        List<SystemFunction> OTList = systemFunctionService.loadOrgTree();
        StringBuffer sb = new StringBuffer();
        sb.append("[");
        for (SystemFunction orgTree : OTList) {
            sb.append("{\"id\":" + orgTree.getFunId() + " ,\"text\":" + "\""
                    + orgTree.getMenuName() + "\"" + " ,\"state\":"
                    + " \"closed\" " + " ,\"attributes\":" + "\""
                    + "level" + "\"" + "},");
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append("]");
        return sb.toString();
    }

    @RequestMapping("/loadOrgChildrenTree")
    @ResponseBody
    public String loadOrgChildrenTree(String FID){
        List<SystemFunction> OTList = systemFunctionService.loadOrgChildrenTree(FID);
        StringBuffer sb = new StringBuffer();
        sb.append("[");
        for (SystemFunction orgTree : OTList) {
            sb.append("{\"id\":" + orgTree.getFunId() + " ,\"text\":" + "\""
                    + orgTree.getMenuName() + "\"" + " ,\"state\":"
                    + " \"closed\" " + " ,\"attributes\":" + "\""
                    + "Level" + "\"" + "},");
        }
        sb.deleteCharAt(sb.length() - 1);
        sb.append("]");
        return sb.toString();
    }
}
