(window.webpackJsonp=window.webpackJsonp||[]).push([[0],{149:function(e,t,n){e.exports=n(320)},154:function(e,t,n){},157:function(e,t,n){},237:function(e,t,n){},320:function(e,t,n){"use strict";n.r(t);var a=n(1),l=n.n(a),r=n(9),i=n.n(r),o=(n(154),n(27)),c=n(28),d=n(30),u=n(29),s=n(31),m=n(326),p=n(325),h=n(321),f=n(10),j=(n(157),[{label:"\u9996\u9875",icon:"home",key:"main",href:"#",children:[]},{label:"\u9879\u76ee",icon:"project",key:"project",href:"#",children:[{label:"\u9879\u76ee\u5217\u8868",icon:"ordered-list",key:"project-list",href:"#",children:[]}]},{label:"\u65e5\u5fd7",icon:"book",key:"daily",href:"#",children:[{label:"\u65e5\u5fd7\u5217\u8868",icon:"ordered-list",key:"daily-list",href:"#",children:[]}]}]),y=(p.a.Header,p.a.Content),b=p.a.Footer,g=p.a.Sider,v=h.a.Item,k=h.a.SubMenu,E=function(e){function t(){var e,n;Object(o.a)(this,t);for(var a=arguments.length,l=new Array(a),r=0;r<a;r++)l[r]=arguments[r];return(n=Object(d.a)(this,(e=Object(u.a)(t)).call.apply(e,[this].concat(l)))).state={collapsed:!1,config:j},n.onCollapse=function(e){n.setState({collapsed:e})},n.handleClickMenuItem=function(e){var t=e.key,a=n.props.onMenuChange;(void 0===a?function(){}:a)(t)},n}return Object(s.a)(t,e),Object(c.a)(t,[{key:"render",value:function(){var e=this,t=this.state,n=t.collapsed,a=t.config,r=this.props,i=r.children,o=r.defaultSelectedKeys,c=void 0===o?["main"]:o;return l.a.createElement(p.a,{style:{minHeight:"100vh"}},l.a.createElement(g,{collapsible:!0,collapsed:n,onCollapse:this.onCollapse},l.a.createElement("div",{className:"logo"},"Na"),l.a.createElement(h.a,{theme:"dark",defaultSelectedKeys:c,mode:"inline"},a.map(function(t){return 0===t.children.length?l.a.createElement(v,{key:t.key,onClick:e.handleClickMenuItem},l.a.createElement(f.a,{type:t.icon}),l.a.createElement("span",null,t.label)):l.a.createElement(k,{key:t.key,title:l.a.createElement("span",null,l.a.createElement(f.a,{type:t.icon}),l.a.createElement("span",null,t.label))},t.children.map(function(t){return l.a.createElement(v,{onClick:e.handleClickMenuItem,key:t.key},t.label)}))}))),l.a.createElement(p.a,null,l.a.createElement(y,{style:{margin:"0 16px"}},i),l.a.createElement(b,{style:{textAlign:"center"}},"By Claire & Leo")))}}]),t}(l.a.Component),C=n(147),O={safeGet:function e(t,n,a){if(!t||!n||!(n instanceof Array))return a;if(0==n.length)return t;var l=Object(C.a)(n),r=l[0],i=l.slice(1);return e(t[r],i,a)}},I=n(51),S=n.n(I),M={format:O,webApi:{getProject:function(e){return S.a.get("/project/getProject",{params:e})},queryProject:function(e){return S.a.get("/project/list",{params:e})},getProjectById:function(e){return S.a.get("/project/getProject",{params:e})},updateProjectById:function(e){return S.a.get("",{params:e})},deleteProjectById:function(e){return S.a.get("",{params:e})}}},P=M.webApi,w=function(e){function t(){return Object(o.a)(this,t),Object(d.a)(this,Object(u.a)(t).apply(this,arguments))}return Object(s.a)(t,e),Object(c.a)(t,[{key:"componentWillMount",value:function(){P.getProject({projectId:"m1818"}).then(function(e){console.log(e)}).catch(function(e){console.log(e)})}},{key:"render",value:function(){return l.a.createElement("div",null,"in the home page")}}]),t}(l.a.Component),L=n(324),x=n(33),N=n(322),A=n(323),T=(n(237),M.webApi),F=M.format,K=L.a.Search,B=[{projectId:"m1811-intl",projectName:"M1811 INTL",projectOuterName:"M6T",projectStatus:"Going",riskLevel:"/",projectType:"\u6d77\u5916",hardwarePlatform:"MTK",platformModel:"MT6750",leaderId:"zhenglu",projectLeaderId:"laoyiling",projectApprovalPeriod:"-",projectApprovalStatus:"Finished",bringupPeriod:"-",bringupStatus:"Finished",sdvPeriod:"-",sdvStatus:"Finished",mandatoryCertificationPeriod:"-",mandatoryCertificationStatus:"Finished",sitPeriod:"-",sitStatus:"Finished",networkTestPeriod:"-",networkTestStatus:"Finished",mptPeriod:"-",mptStatus:"Finished",lvtPeriod:"-",lvtStatus:"Finished",bz:"OTA",leader:{userId:"zhenglu",userName:null,gender:null,jobTitle:null,departmentCode:null,phone:null,email:null,dingdingNumber:null,roleId:null},projectLeader:{userId:"laoyiling",userName:null,gender:null,jobTitle:null,departmentCode:null,phone:null,email:null,dingdingNumber:null,roleId:null}}],V=[{title:"\u5185\u90e8\u540d\u79f0",dataIndex:"projectName"},{title:"\u5916\u90e8\u540d\u79f0",dataIndex:"projectOuterName"},{title:"\u9879\u76ee\u72b6\u6001",dataIndex:"projectStatus"},{title:"\u98ce\u9669\u7ea7\u522b",dataIndex:"riskLevel"},{title:"\u6240\u5c5e",dataIndex:"projectType"},{title:"\u786c\u4ef6\u5e73\u53f0",dataIndex:"hardwarePlatform"},{title:"\u786c\u4ef6\u578b\u53f7",dataIndex:"platformModel"},{title:"\u603b\u8d1f\u8d23\u4eba",dataIndex:"leaderId"},{title:"\u9879\u76ee\u8d1f\u8d23\u4eba",dataIndex:"projectLeaderId"}],H=function(e){function t(){var e,n;Object(o.a)(this,t);for(var a=arguments.length,l=new Array(a),r=0;r<a;r++)l[r]=arguments[r];return(n=Object(d.a)(this,(e=Object(u.a)(t)).call.apply(e,[this].concat(l)))).state={projectList:B,modalVisible:!1,confirmLoading:!1},n.handleClickCreate=function(){n.setState({modalVisible:!0})},n.handleSearch=function(e){(e=e?e.trim():"")&&console.log(e)},n.handleModalOk=function(){n.setState({confirmLoading:!0}),setTimeout(function(){n.setState({confirmLoading:!1,modalVisible:!1})},2e3)},n.handleModalCancle=function(){n.setState({modalVisible:!1})},n}return Object(s.a)(t,e),Object(c.a)(t,[{key:"componentWillMount",value:function(){var e=this;T.queryProject({}).then(function(t){var n=F.safeGet(t,["data"],[]);e.setState({projectList:n})})}},{key:"render",value:function(){var e=this.state,t=e.modalVisible,n=e.confirmLoading,a=e.projectList,r=void 0===a?[]:a;return l.a.createElement("div",{className:"project-list-container"},l.a.createElement("div",{className:"search-header"},l.a.createElement(K,{placeholder:"text",onSearch:this.handleSearch,style:{width:200}}),l.a.createElement(x.a,{type:"primary",onClick:this.handleClickCreate},"Create")),l.a.createElement(N.a,{columns:V,dataSource:r}),l.a.createElement(A.a,{title:"Add a new project",visible:t,onOk:this.handleModalOk,confirmLoading:n,onCancel:this.handleModalCancle},l.a.createElement("p",null,"hello world")))}}]),t}(l.a.Component),z=function(e){function t(){return Object(o.a)(this,t),Object(d.a)(this,Object(u.a)(t).apply(this,arguments))}return Object(s.a)(t,e),Object(c.a)(t,[{key:"render",value:function(){return l.a.createElement("div",null,"in the daily list page")}}]),t}(l.a.Component),G=m.a.Item,q=function(e){var t=e.activeKey;return l.a.createElement(m.a,{style:{margin:"16px 0"}},l.a.createElement(G,null,"main"===t?"Home":"project-list"===t?"Project":"Daily"),l.a.createElement(G,null,"main"===t?"":"List"))},J=function(e){function t(){var e,n;Object(o.a)(this,t);for(var a=arguments.length,l=new Array(a),r=0;r<a;r++)l[r]=arguments[r];return(n=Object(d.a)(this,(e=Object(u.a)(t)).call.apply(e,[this].concat(l)))).state={activeKey:"main"},n.onMenuChange=function(e){console.log(e),n.setState({activeKey:e})},n}return Object(s.a)(t,e),Object(c.a)(t,[{key:"render",value:function(){var e=this.state.activeKey;return l.a.createElement(E,{onMenuChange:this.onMenuChange},l.a.createElement(q,{activeKey:e}),l.a.createElement("div",{style:{padding:24,background:"#fff",minHeight:360}},"main"===e?l.a.createElement(w,null):"project-list"===e?l.a.createElement(H,null):l.a.createElement(z,null)))}}]),t}(l.a.Component);i.a.render(l.a.createElement(J,null),document.getElementById("root"))}},[[149,2,1]]]);
//# sourceMappingURL=main.ceb87710.chunk.js.map