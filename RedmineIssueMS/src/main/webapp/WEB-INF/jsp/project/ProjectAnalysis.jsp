<%--
  Created by IntelliJ IDEA.
  User: xingnana
  Date: 2018/11/29
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>项目分析</title>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://unpkg.com/vue-select@2.0.0/dist/vue-select.js"></script>
    <script type="text/javascript" src="${basePaht}/js/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${basePath}/js/echarts/echarts.js"></script>
    <!--
    <script>
        $(document).ready(function () { //此处页面打开即请求api
            $.ajax({
                type:'GET',
                url:"${basePath}/project/list",
                contentType: "application/json; charset=utf-8",
                async : true ,
                dataType: "json",
                success: function (date) {
                    var optionstring = "";
                    for (var j = 0; j < date.length;j++) {
                        console.log(date[j].projectName);
                        console.log(date[j].projectId);
                        optionstring += "<option value=\"" + date[j].projectId + "\" >" +date[j].projectName+" " + "</option>";
                        $("#projectSelect").html("<option value='0'>请选择...</option> "+optionstring);
                    }
                },

                error: function (msg) {
                    layer.msg('数据出错了!!');
                }
            });
        });
    </script>
     -->

</head>
<body>
<!--
<div id="header">
    <div>
        <table>
            <tbody>
            <tr>
                <td><label>项目</label></td>
                <td><span>
                    <select  id="projectSelect" name="v[project_id][]"  multiple="multiple" style="width : 100px;height : 50px;" >

                    </select>
                </span></td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
-->

<div id="app" style=" max-width: 30em;margin: 1em auto;">
    <h2>VueSelect Example</h2>
    <v-select multiple :placeholder="placeholder"  :options="options" label="projectName" >
    </v-select>
    <button id="btnSearch"></button>

    <div id="main" style="width: 600px; height: 400px;">图表</div>


</div>


<script>
    // 定义名为 v-select 的新组件// 获取注册的组件 (始终返回构造器)
    Vue.component('v-select', VueSelect.VueSelect);
    var app= new Vue({
        el: '#app',
        data: {
            selected:null,
            options: [],
            placeholder: '选择项目...',
            students:  []
        },

    });
    $.ajax({
        type:'GET',
        url:"${basePath}/project/list",
        contentType: "application/json; charset=utf-8",
        async : true ,
        dataType: "json",
        success: function (data) {
            console.log(data);
            app.$data.options=data;
            var optionstring = "";
            console.log(data);
            for (var j = 0; j < data.length;j++) {
                console.log(data[j].projectName);
                console.log(data[j].projectId);
                optionstring += "<option value=\"" + data[j].projectId + "\" >" +data[j].projectName+" " + "</option>";
                $("#projectSelect").html("<option value='0'>请选择...</option> "+optionstring);
            }
        },

        error: function (msg) {
            layer.msg('数据出错了!!');
        }
    });

</script>
</body>
</html>
