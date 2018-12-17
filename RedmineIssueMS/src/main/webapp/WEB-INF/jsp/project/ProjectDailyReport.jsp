<%--
  Created by IntelliJ IDEA.
  User: xingnana
  Date: 2018/10/15
  Time: 19:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>项目日报</title>
    <script type="text/javascript" src="${basePath}/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/echarts/echarts.js"></script>
    <style>
        table,td,th
        {
            border:1px solid black;
        }
        table{
            width:600px;
        }
        td
        {
            text-align:left;
        }
    </style>
</head>
<body>
<div id="tb" style="padding:3px">
    <span>Product ID:</span>
    <input id="projectId" style="line-height:26px;border:1px solid #ccc" value="${project.projectId}">
    <a href="/project/getProject?projectId=${project.projectId} " plain="true" onclick="doSearch()">Search</a>
    <label>${project.projectId}</label>
</div>
<div>
    <table >
        <tr><td>项目名称：</td><td>${project.projectId}</td><td></td><td></td></tr>
        <tr><td>硬件平台：</td><td>${project.hardwarePlatform}(${project.platformModel})</td>
            <td>项目负责人：</td><td>${project.leader.userName}</td>
        </tr>
        <tr><td>项目状态：</td><td>${project.projectStatus}</td><td></td><td></td></tr>
        <tr><td>阶段：</td><td></td><td></td><td></td></tr>
        <tr><td>时间：</td><td></td><td></td><td></td></tr>
        <tr><td>状态：</td><td></td><td></td><td></td></tr>
    </table>
</div>

<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    option = {
        title: {
            text: '机型项目${project.projectId}'
        },
        tooltip: {},
        legend: {
            data:['bug状态分布']
        },
        xAxis: {
            data: []
        },
        yAxis: {},
        series: [{
            name: 'bug状态分布',
            type: 'bar',
            data: []
        }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);

    $.ajax({
        type:'GET',
        url:"${basePath}/dailyReport/getBugStatusDistribution?projectId=${project.projectId}",
        contentType: "application/json; charset=utf-8",
        async : true ,
        data:{},
        dataType: "json",
        success: function (data) {
            console.log(data);
            myChart.showLoading({text: '正在努力的读取数据中...'});
            myChart.setOption({
                xAxis: {
                    data: data.status
                },
                series: [{
                    // 根据名字对应到相应的系列
                    name: 'bug状态分布',
                    data: data.num
                }]
            });
            myChart.hideLoading();
        },

        error: function (msg) {
            layer.msg('数据出错了!!');
        }
    });

</script>


</body>
</html>
