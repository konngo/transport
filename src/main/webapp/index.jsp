<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<jsp:include page="/head.jsp"/>
<body>
               <jsp:include page="/menu.jsp" />

               <div id="page-wrapper">
                   <div id="page-inner">


                       <div class="row">
                           <div class="col-md-12">
                               <h1 class="page-header">
                                   城市公交 <small>城市公交查询系统</small>
                               </h1>
                           </div>
                       </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        公交信息
                    </div>
                    <div class="panel-heading">
                        <a href="/add.jsp" class="btn btn-default">
                            <font style="vertical-align: inherit;">
                                <font style="vertical-align: inherit;">
                                    添加</font></font></a>
                    </div>

                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                <tr>
                                    <th>序号</th>
                                    <th>路线名称</th>
                                    <th>路线</th>
                                    <th>始发时间</th>
                                    <th>终点时间</th>
                                    <th>操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="ews" items="${list}">
                                    <tr class="odd gradeX">
                                        <td >${ews.id}</td>
                                        <td >${ews.name}</td>
                                        <td >${ews.luxian}</td>
                                        <td >${ews.shifa}</td>
                                        <td >${ews.zhongdian}</td>
<%--                                        <td >${ews.descriptions}</td>--%>
                                        <td >
                                            <a href="/trans/edit?id=${ews.id}" class="btn btn-default">
                                                <font style="vertical-align: inherit;">
                                                <font style="vertical-align: inherit;">
                                                    编辑</font></font></a>
                                            <a href="/trans/del?id=${ews.id}" class="btn btn-default">
                                                <font style="vertical-align: inherit;">
                                                    <font style="vertical-align: inherit;">
                                                        删除</font></font></a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
				<footer><p>Copyright &copy; 2020.</p></footer>
            </div>
        </div>
    <script src="/assets/js/jquery-1.10.2.js"></script>
    <script src="/assets/js/bootstrap.min.js"></script>
    <script src="/assets/js/jquery.metisMenu.js"></script>
    <script src="/assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="/assets/js/dataTables/dataTables.bootstrap.js"></script>
    <script>
        $(document).ready(function () {
            $('#dataTables-example').dataTable();
        });
    </script>
    <script src="/assets/js/custom-scripts.js"></script>


</body>

</html>