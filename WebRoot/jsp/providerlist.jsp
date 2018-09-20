<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/jsp/common/head.jsp"%>

<div class="right">
        <div class="location">
            <strong>你现在所在的位置是:</strong>
            <span>供应商管理页面</span>
        </div>
        <div class="search">
        	<form method="get" action="#">
				<input name="method" value="query" type="hidden">
				<span>供应商编码：</span>
				<input name="queryProCode" type="text" value="">
				
				<span>供应商名称：</span>
				<input name="queryProName" type="text" value="">
				
				<input value="查 询" type="submit" id="searchbutton">
				<a href="provideradd.jsp">添加供应商</a>
			</form>
        </div>
        <!--供应商操作表格-->
        <table class="providerTable" cellpadding="0" cellspacing="0">
            <tr class="firstTr">
                <th width="10%">供应商编码</th>
                <th width="20%">供应商名称</th>
                <th width="10%">联系人</th>
                <th width="10%">联系电话</th>
                <th width="10%">传真</th>
                <th width="10%">创建时间</th>
                <th width="30%">操作</th>
            </tr>
  
				<tr>
					<td>
					<span>001</span>
					</td>
					<td>
					<span>供应商1</span>
					</td>
					<td>
					<span>赵四</span>
					</td>
					<td>
					<span>13491910230</span>
					</td>
					<td>
					<span>021-12345678</span>
					</td>
					<td>
					<span>
						2017-1-1
					</span>
					</td>
					<td>
					<span><a class="viewProvider" href="providerview.jsp" ><img src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
					<span><a class="modifyProvider" href="providermodify.jsp" ><img src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
					<span><a class="deleteProvider" href="#"><img src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
					</td>
				</tr>
				<tr>
					<td>
					<span>002</span>
					</td>
					<td>
					<span>供应商2</span>
					</td>
					<td>
					<span>赵四</span>
					</td>
					<td>
					<span>1111111111</span>
					</td>
					<td>
					<span>021-12345678</span>
					</td>
					<td>
					<span>
						2017-1-2
					</span>
					</td>
					<td>
					<span><a class="viewProvider" href="providerview.jsp" ><img src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
					<span><a class="modifyProvider" href="providermodify.jsp" ><img src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
					<span><a class="deleteProvider" href="#"><img src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
					</td>
				</tr>
				<tr>
					<td>
					<span>003</span>
					</td>
					<td>
					<span>供应商3</span>
					</td>
					<td>
					<span>赵四</span>
					</td>
					<td>
					<span>13491910230</span>
					</td>
					<td>
					<span>021-12345678</span>
					</td>
					<td>
					<span>
						2017-1-3
					</span>
					</td>
					<td>
					<span><a class="viewProvider" href="providerview.jsp" ><img src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
					<span><a class="modifyProvider" href="providermodify.jsp" ><img src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
					<span><a class="deleteProvider" href="#"><img src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
					</td>
				</tr>
        </table>

    </div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeProv">
   <div class="removerChid">
       <h2>提示</h2>
       <div class="removeMain" >
           <p>你确定要删除该供应商吗？</p>
           <a href="#" id="yes">确定</a>
           <a href="#" id="no">取消</a>
       </div>
   </div>
</div>

<%@include file="/jsp/common/foot.jsp" %>

