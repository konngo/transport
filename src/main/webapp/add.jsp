<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <jsp:include page="/head.jsp"/>

    <jsp:include page="/menu.jsp"/>

    <div id="page-wrapper">
        <div id="page-inner">


            <div class="row">
                <div class="col-md-12">
                    <h1 class="page-header">
                        城市公交 <small>城市公交查询系统</small>
                    </h1>
                </div>
            </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <form action="/trans/add">
                                <div class="form-group">
                                    <label>名称</label>
                                    <input name="id" value="${ews.id}" type="hidden" class="form-control">

                                    <input name="name" value="${ews.name}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>路线</label>
                                    <input name="luxian" value="${ews.luxian}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>始发时间</label>
                                    <input name="shifa" value="${ews.shifa}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>终点时间</label>
                                    <input name="zhongdian" value="${ews.zhongdian}" class="form-control">
                                </div>


                                <button type="submit" class="btn btn-default">提交</button>
                                <button type="reset" class="btn btn-default">重置</button>
                            </form>
                        </div>

                    </div>
                </div>
				<footer><p>Copyright &copy; 2020.</p></footer>
            </div>
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