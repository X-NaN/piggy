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
    <script type="text/javascript" src="${basePath}/js/echarts/echarts.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // 基于准备好的dom，初始化echarts实例
            var myChart = echarts.init(document.getElementById('main'));

            // 指定图表的配置项和数据
            var option = {
                title: {
                    text: 'ECharts 入门示例'
                },
                tooltip: {},
                legend: {
                    data:['各个模块问题数量']
                },
                xAxis: {
                    data: ["类别1","羊毛衫","雪纺衫","裤子","高跟鞋","袜子"]
                },
                yAxis: {},
                series: [{
                    name: '问题数量',
                    type: 'bar',
                    data: [5, 20, 36, 10, 10, 20]
                }]
            };

            // 使用刚指定的配置项和数据显示图表。
            myChart.setOption(option);

            function loadChart() {
                var projectId =$("#projectId").val();
                $.ajax({
                    type:'GET',
                    url:"${basePath}/project/getProjectChart/",
                    contentType: "application/json; charset=utf-8",
                    async : true ,
                    data:{account:projectId},
                    dataType: "json",
                    success: function (data) {
                        myChart.showLoading({text: '正在努力的读取数据中...'});
                        myChart.setOption({
                            xAxis: {
                                data: data.categories
                            },
                            series: [{
                                // 根据名字对应到相应的系列
                                name: '问题数量',
                                data: data.data
                            }]
                        });
                        myChart.hideLoading();
                    },

                    error: function (msg) {
                        layer.msg('数据出错了!!');
                    }
                });

            }

        })




    </script>
</head>
<body>
<div id="tb" style="padding:3px">
    <span>Product ID:</span>
    <input id="projectId" style="line-height:26px;border:1px solid #ccc">
    <a href="/project/getProject?projectId=${project.projectId} " plain="true" onclick="doSearch()">Search</a>
    <label>${project.projectId}</label>
</div>
<div>
    <table>
        <thead>
        <tr class="success">
            <th>项目Id</th>
            <th>项目名称</th>
            <th>项目状态</th>
            <th>风险级别</th>
            <th>硬件平台</th>

            <th>编辑</th>
            <th>删除</th>
        </tr>
        </thead>
        <tr>
            <td>${project.projectId}</td>
            <td>${project.projectName}</td>
            <td>${project.projectStatus}</td>
            <td>${project.riskLevel}</td>
            <td>${project.hardwarePlatform}</td>

            <td><a href="/getProject/${project.projectId}">编辑<span class="glyphicon glyphicon-edit"></span> </a></td>
            <td><a href="/getProject/${project.projectId}" onclick="javascript:return del();">删除<span
                    class="glyphicon glyphicon-trash"></span> </a></td>
        </tr>
    </table>
</div>

<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>



</body>
</html>
