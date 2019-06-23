<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	function dormBuildDelete(dormBuildId) {
		if(confirm("您确定要删除这个宿舍楼吗？")) {
			window.location="dormBuild?action=delete&dormBuildId="+dormBuildId;
		}
	}
	$(document).ready(function(){
		$("ul li:eq(3)").addClass("active");
	});
</script>
<div class="data_list">
		<div class="data_list_title">
			文件下载
		</div>
		<form name="myForm" class="form-search" method="post" action="dormBuild?action=search">
				<button class="btn btn-success" type="button" style="margin-right: 50px;"><a href="upload.jsp">上传</a></button>
				
		</form>
		<div>
			<table class="table table-striped table-bordered table-hover datatable">
				<thead>
					<tr>
						<th width="5%">编号</th>
						<th>名称</th>
						<th width="15%">备注</th>
						<th width="5%">操作</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>有关暑假放假通知及寝室装修公告</td>
						<td>放假通知</td>
						<td><button class="btn btn-mini btn-info" type="button"><a href="fangjiatongzhi.jsp">下载</a></button>&nbsp;
					</tr>
					<tr>
						<td>2</td>
						<td>有关研究生入住注意事项</td>
						<td>研究生入住</td>
						<td><button class="btn btn-mini btn-info" type="button"><a href="yanjiusheng.jsp">下载</a></button>&nbsp;
					</tr>
				</tbody>
			</table>
		</div>
		<div align="center"><font color="red">${error }</font></div>
		<div class="pagination pagination-centered">
			<ul>
				${pageCode }
			</ul>
		</div>
</div>