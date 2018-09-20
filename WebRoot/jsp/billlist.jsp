<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/jsp/common/head.jsp"%>

<div class="right">
       <div class="location">
           <strong>你现在所在的位置是:</strong>
           <span>订单管理页面</span>
       </div>
       <div class="search">
       <form method="get" action="#">
			<input name="method" value="query" class="input-text" type="hidden">
			<span>商品名称：</span>
			<input name="queryProductName" type="text" value="">
			 
			<span>供应商：</span>
			<select name="queryProviderId">
				
				   <option value="0">--请选择--</option>
					<option value="0">供应商1</option>
					 <option value="0">供应商2</option>
					 <option value="0">供应商3</option>
					 <option value="0">供应商4</option>
					 <option value="0">供应商5</option>
					
				
       		</select>
			 
			<span>是否付款：</span>
			<select name="queryIsPayment">
				<option value="0">--请选择--</option>
				<option value="1" >未付款</option>
				<option value="2">已付款</option>
       		</select>
			
			 <input	value="查 询" type="submit" id="searchbutton">
			 <a href="billadd.jsp">添加订单</a>
		</form>
       </div>
       <!--账单表格 样式和供应商公用-->
      <table class="providerTable" cellpadding="0" cellspacing="0">
          <tr class="firstTr">
              <th width="10%">订单编码</th>
              <th width="20%">商品名称</th>
              <th width="10%">供应商</th>
              <th width="10%">订单金额</th>
              <th width="10%">是否付款</th>
              <th width="10%">创建时间</th>
              <th width="30%">操作</th>
          </tr>
         
				<tr>
					<td>
					<span>001</span>
					</td>
					<td>
					<span>商品1</span>
					</td>
					<td>
					<span>供应商1</span>
					</td>
					<td>
					<span>1000.50</span>
					</td>
					<td>
					<span>
						
						已付款
					</span>
					</td>
					<td>
					<span>
					2017-1-1
					</span>
					</td>
					<td>
					<span><a class="viewBill" href="billview.jsp"><img src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
					<span><a class="modifyBill" href="billmodify.jsp"><img src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
					<span><a class="deleteBill" href="#"><img src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
					</td>
				</tr>
				<tr>
					<td>
					<span>002</span>
					</td>
					<td>
					<span>商品2</span>
					</td>
					<td>
					<span>供应商2</span>
					</td>
					<td>
					<span>2000.50</span>
					</td>
					<td>
					<span>
						
						未付款
					</span>
					</td>
					<td>
					<span>
					2017-1-1
					</span>
					</td>
					<td>
					<span><a class="viewBill" href="billview.jsp"><img src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
					<span><a class="modifyBill" href="billmodify.jsp"><img src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
					<span><a class="deleteBill" href="#"><img src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
					</td>
				</tr>
				<tr>
					<td>
					<span>003</span>
					</td>
					<td>
					<span>商品3</span>
					</td>
					<td>
					<span>供应商1</span>
					</td>
					<td>
					<span>3000.50</span>
					</td>
					<td>
					<span>
						
						已付款
					</span>
					</td>
					<td>
					<span>
					2017-1-1
					</span>
					</td>
					<td>
					<span><a class="viewBill" href="billview.jsp"><img src="${pageContext.request.contextPath }/images/read.png" alt="查看" title="查看"/></a></span>
					<span><a class="modifyBill" href="billmodify.jsp"><img src="${pageContext.request.contextPath }/images/xiugai.png" alt="修改" title="修改"/></a></span>
					<span><a class="deleteBill" href="#"><img src="${pageContext.request.contextPath }/images/schu.png" alt="删除" title="删除"/></a></span>
					</td>
				</tr>
		
		
      </table>
  </div>
</section>

<!--点击删除按钮后弹出的页面-->
<div class="zhezhao"></div>
<div class="remove" id="removeBi">
    <div class="removerChid">
        <h2>提示</h2>
        <div class="removeMain">
            <p>你确定要删除该订单吗？</p>
            <a href="#" id="yes">确定</a>
            <a href="#" id="no">取消</a>
        </div>
    </div>
</div>

<%@include file="/jsp/common/foot.jsp" %>
