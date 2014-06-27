<%@ taglib prefix="s" uri="/struts-tags" %>

<%--
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

    <h1 class="page-header" style="margin-left:-40px;">Vendor Module</h1>

    <div class="row">
        <div class="col-md-12" style="margin-left:-25px;">
            <div class="panel panel-info">

                <div class="panel-heading">

                    <img src="includes/images/listofusers.png" class="box-icon"/> <span
                        class="panel-title">List of Vendors</span>

                </div>

                <div class="panel-body">
                    <div class="table-responsive list-table">
                        <table class="table table-striped table-bordered text-center">
                            <thead>
                            <tr class="header_center">
                                <th class="tb-font-black"><input type="checkbox"/></th>
                                <th class="tb-font-black">Vendor Code</th>
                                <th class="tb-font-black">Company Name</th>
                                <th class="tb-font-black">Type</th>
                                <th class="tb-font-black">Class</th>
                                <th class="tb-font-black">Action</th>
                            </tr>
                            </thead>
                            <tbody>

                            <s:iterator value="vendors" var="vendor">

                                <tr>
                                        &lt;%&ndash;<input type="checkbox" />&ndash;%&gt;
                                    <td class="tb-font-black"><s:checkbox name="a" theme="simple"/></td>
                                    <td class="tb-font-black"><s:property value="vendorCode"/></td>
                                    <td class="tb-font-black"><s:property value="vendorName"/></td>
                                    <td class="tb-font-black"><s:property value="vendorType"/></td>
                                    <td class="tb-font-black"><s:property value="vendorClass"/></td>
                                    <td class="tb-font-black">

                                        <s:url var="editVendorUrl" action="loadEditVendorPage">
                                            <s:param name="vendorCodeParam" value="vendorCode"></s:param>
                                        </s:url>
                                        <s:a class="icon-action-link" href="%{editVendorUrl}" rel="tooltip" title="Edit this vendor">
                                            <img src="includes/images/edit-user.png" class="icon-action circ-icon">
                                        </s:a>

                                        <s:url var="deleteVendorUrl" action="deleteVendor">
                                            <s:param name="vendorCodeParam" value="vendorCode"></s:param>
                                        </s:url>
                                        <s:a class="icon-action-link" href="%{deleteVendorUrl}" rel="tooltip" title="Delete this Vendor" onclick="return confirm('Do you really want to delete?');">
                                            <img src="includes/images/remove-user.png" class="icon-action circ-icon">
                                        </s:a>

                                        <s:url var="viewInfoVendorUrl" action="viewInfoVendor">
                                            <s:param name="vendorCodeParam" value="vendorCode"></s:param>
                                        </s:url>
                                        <s:a class="icon-action-link" href="%{viewInfoVendorUrl}" rel="tooltip" title="View Vendor Info">
                                            <img src="includes/images/info-b.png" class="icon-action circ-icon">
                                        </s:a>

                                    </td>
                                </tr>
                            </s:iterator>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="panel-footer">
                        <span class="pull-right">
                            <a href="loadAddVendorPage" class="icon-action-link" rel="tooltip" title="Add Vendor">
                                <img src="includes/images/add-user.png" class="icon-action circ-icon">
                            </a>
                        </span>

                    <ul class="pagination">
                        <li class="disabled"><a href="#">&laquo;</a></li>
                        <li class="active"><a href="#">1</a></li>
                        <li class="disabled"><a href="#">&raquo;</a></li>
                    </ul>

                </div>

            </div>
        </div>
    </div>

</div>
--%>

<div class="row">
    <div class="col-lg-12">
        <h1>Vendor Module </h1>
        <ol class="breadcrumb">
            <li class="active" ><a href="<s:url action='home' />"> <i class="fa fa-dashboard"></i> Dashboard </a></li>
            <li class="active"><i class="fa fa-male"></i> Vendor</li>
            <li class="active"><i class="fa fa-list"></i> Vendor List</li>
        </ol>
    </div>
</div>
<!-- /.row -->
<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title" style="position: relative; top: 10px;"><i class="fa fa-list"></i> Vendor List
               <span class="pull-right">
               <a href="loadAddVendorPage" class="icon-action-link" rel="tooltip" title="Add Vendor">
                   <img src="includes/images/add-user.png" class="icon-action circ-icon" style="position: relative; bottom: 10px;">
               </a>
               </span>
                </h3>
            </div>
            <div class="panel-body">
                <div class="table-responsive list-table">
                    <table class="table table-striped table-hover table-bordered text-center tablesorter">
                        <thead>
                        <tr class="header_center">
                            <%--<th class="tb-font-black"><input type="checkbox"/></th>--%>
                            <th class="tb-font-black" style="text-align: center;" >Vendor Code <i class="fa fa-sort"></i></th>
                            <th class="tb-font-black" style="text-align: center;" >Company Name <i class="fa fa-sort"></i></th>
                            <th class="tb-font-black" style="text-align: center;" >Type <i class="fa fa-sort"></i></th>
                            <th class="tb-font-black" style="text-align: center;" >Class <i class="fa fa-sort"></i></th>
                            <th class="tb-font-black" style="text-align: center;" >Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        <s:iterator value="vendors" var="vendor">
                            <tr>
                                    <%--<input type="checkbox" />--%>
                                    <%--<td class="tb-font-black"><s:checkbox name="a" theme="simple"/></td>--%>
                                <td class="tb-font-black">
                                    <s:property value="vendorCode"/>
                                </td>
                                <td class="tb-font-black">
                                    <s:property value="vendorName"/>
                                </td>
                                <td class="tb-font-black">
                                    <s:property value="vendorType"/>
                                </td>
                                <td class="tb-font-black">
                                    <s:property value="vendorClass"/>
                                </td>
                                <td class="tb-font-black">
                                    <s:url var="editVendorUrl" action="loadEditVendorPage">
                                        <s:param name="vendorCodeParam" value="vendorCode"></s:param>
                                    </s:url>
                                    <s:a class="icon-action-link" href="%{editVendorUrl}" rel="tooltip" title="Edit this vendor">
                                        <img src="includes/images/edit-user.png" class="icon-action circ-icon">
                                    </s:a>
                                    <s:url var="deleteVendorUrl" action="deleteVendor">
                                        <s:param name="vendorCodeParam" value="vendorCode"></s:param>
                                    </s:url>
                                    <s:a class="icon-action-link" href="%{deleteVendorUrl}" rel="tooltip" title="Delete this Vendor" onclick="return confirm('Do you really want to delete?');">
                                        <img src="includes/images/remove-user.png" class="icon-action circ-icon">
                                    </s:a>
                                    <s:url var="viewInfoVendorUrl" action="viewInfoVendor">
                                        <s:param name="vendorCodeParam" value="vendorCode"></s:param>
                                    </s:url>
                                    <s:a class="icon-action-link" href="%{viewInfoVendorUrl}" rel="tooltip" title="View Vendor Info">
                                        <img src="includes/images/info-b.png" class="icon-action circ-icon">
                                    </s:a>
                                </td>
                            </tr>
                        </s:iterator>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="panel-footer">
            <span class="pull-right">
            <a href="loadAddVendorPage" class="icon-action-link" rel="tooltip" title="Add Vendor">
                <img src="includes/images/add-user.png" class="icon-action circ-icon">
            </a>
            </span>
                <%--<ul class="pagination">
                   <li class="disabled"><a href="#">&laquo;</a></li>
                   <li class="active"><a href="#">1</a></li>
                   <li class="disabled"><a href="#">&raquo;</a></li>
                   </ul>--%>
            </div>
        </div>
    </div>
</div>