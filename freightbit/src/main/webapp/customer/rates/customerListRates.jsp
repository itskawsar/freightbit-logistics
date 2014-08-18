<%@ taglib prefix="s" uri="/struts-tags" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
 <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="row" style="margin-top: -15px;">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
               <h1><i class="fa fa-male"></i> Customer Module </h1>
            </span>
        </legend>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Customer</li>
            <li class="active"><a href="<s:url action='customerList' />"> Customer List</a>
            </li>
            <li class="active"><a href="<s:url action='customerInfo' />"> Customer
                Profile</a></li>
            <li class="active"> Rates</li>
        </ol>

    </div>
</div>
<!-- /.row -->


<s:if test="hasActionMessages()">
    <div class="col-lg-12">
        <div class="alert alert-success">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
            <strong><s:actionmessage cssStyle="margin-bottom: 0px;"/></strong>
        </div>
    </div>
</s:if>



<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title" style="float:left;top: 10px;"><i class="fa fa-list"></i> Rates List</h3>
                <span class="pull-right">
                    <s:url var="loadAddRatesUrl" action="loadAddRates">
                        <s:param name="customerIdParam" value="customerIdParam"> </s:param>
                    </s:url>
                    <s:a class="icon-action-link" href="%{loadAddRatesUrl}" rel="tooltip" title="Add Contact">
                        <button type="button" class="btn btn-primary">
                            <i class="fa fa-money"> </i> New Rate
                        </button>
                    </s:a>
                </span>
            </div>

            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-10">

                    <div class="table-responsive list-table">
                        <%--<table class="table table-striped table-bordered text-center table-hover" id="customer-list">
                            <thead>
                            <tr class="header_center">
                                <th class="tb-font-black" style="text-align: center;">Origin <i class="fa fa-sort"></i></th>
                                <th class="tb-font-black" style="text-align: center;">Destination <i class="fa fa-sort"></i></th>
                                <th class="tb-font-black" style="text-align: center;">Rate <i class="fa fa-sort"></i></th>
                                <th class="tb-font-black" style="text-align: center;">Rate Type <i class="fa fa-sort"></i></th>
                                <th class="tb-font-black" style="text-align: center;">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <s:iterator value="rates" var="rate">
                                <tr>
                                    <td class="tb-font-black"><s:property value="origin"/></td>
                                    <td class="tb-font-black"><s:property value="destination"/></td>
                                    <td class="tb-font-black"><s:property value="rate"/></td>
                                    <td class="tb-font-black"><s:property value="rateType"/></td>
                                    <td>

                                        <s:url var="loadEditRatesUrl" action="loadEditRates">
                                            <s:param name="ratesIdParam" value="%{customerRateId}"></s:param>
                                        </s:url>
                                        <s:a href="%{loadEditRatesUrl}" class="icon-action-link" rel="tooltip"
                                             title="Edit this Vendor Address"><img src="../includes/images/edit-user.png"
                                                                                   class="icon-action circ-icon"> </s:a>

                                        <s:url var="deleteRatesUrl" action="deleteRates">
                                            <s:param name="ratesIdParam" value="%{customerRateId}"></s:param>
                                        </s:url>
                                        <s:a class="icon-action-link" href="%{deleteRatesUrl}" rel="tooltip"
                                             title="Delete this Vendor Address"
                                             onclick="return confirm('Do you really want to delete?');"><img
                                                src="../includes/images/remove-user.png" class="icon-action circ-icon"> </s:a>
                                    </td>
                                </tr>
                            </s:iterator>
                            </tbody>
                        </table>--%>

                        <tbody>
                        <table>
                            <tr>
                                <display:table id="rate" name="rates" requestURI="viewRates.action" pagesize="10"
                                               class="table table-striped table-hover table-bordered text-center tablesorter"
                                               style="margin-top: 15px;">
                                    <td><display:column property="origin" title="Origin" class="tb-font-black"
                                                        style="text-align: center;"> </display:column></td>
                                    <td><display:column property="destination" title="Destination" class="tb-font-black"
                                                        style="text-align: center;"> </display:column></td>
                                    <td><display:column property="rate" title="Rate" class="tb-font-black"
                                                        style="text-align: center;"> </display:column></td>
                                    <td><display:column property="rateType" title="Rate Type" class="tb-font-black"
                                                        style="text-align: center;"> </display:column></td>
                                    <td class="tb-font-black" style="text-align: center;">
                                        <display:column title="Actions">
                                            <s:url var="loadEditRatesUrl" action="loadEditRates">
                                                <s:param name="ratesIdParam" value="%{#attr.rate.customerRateId}"></s:param>
                                            </s:url>
                                            <s:a href="%{loadEditRatesUrl}" class="icon-action-link" rel="tooltip"
                                                 title="Edit this Vendor Address">
                                                <%--<img src="../includes/images/edit-user.png" class="icon-action circ-icon">--%>
                                                <i class="fa fa-pencil"></i>
                                            </s:a>


                                            <s:url var="deleteRatesUrl" action="deleteRates">
                                                <s:param name="ratesIdParam" value="%{#attr.rate.customerRateId}"></s:param>
                                            </s:url>
                                            <s:a class="icon-action-link" href="%{deleteRatesUrl}" rel="tooltip"
                                                 title="Delete this Vendor Address"
                                                 onclick="return confirm('Do you really want to delete?');">
                                                <%--<img src="../includes/images/remove-user.png" class="icon-action circ-icon">--%>
                                                <i class="fa fa-trash-o"></i>
                                            </s:a>
                                        </display:column>
                                    </td>
                                </display:table>
                            </tr>
                        </table>
                        </tbody>

                    </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="panel panel-info" >
                            <div class="panel-heading">
                                <h3 class="panel-title"><i class="fa fa-navicon"></i> Shortcuts</h3>
                            </div>
                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12" style="text-align: center;">

                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER')">
                                            <a href="customerInfo" class="btn btn-primary" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-info-circle fa-fw"></i> <br/>Profile</a>
                                            <a href="viewAddress" class="btn btn-warning" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-home fa-fw"></i> <br/>Address</a>
                                            <a href="viewCustomerContacts" class="btn btn-violet" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-group fa-fw"></i> <br/>Contacts</a>


                                            <a href="viewItem" class="btn btn-success" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-list-ol fa-fw"></i> <br/>Items</a>
                                        </sec:authorize>

                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER',  'ROLE_DOC_SPECIALIST', 'ROLE_FINANCE')">
                                            <a href="#" class="btn btn-info" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-money fa-fw"></i> <br/>Rates</a>
                                        </sec:authorize>

                                        <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER')">
                                            <a href="viewConsignees" class="btn btn-danger" role="button" style="width:120px; margin-bottom: 10px;"><i class="fa fa-list fa-fw"></i> <br/>Consignee</a>
                                        </sec:authorize>

                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="panel-footer">

                <span class="pull-right">
                    <s:url var="loadAddRatesUrl" action="loadAddRates">
                        <s:param name="customerIdParam" value="customerIdParam"> </s:param>
                    </s:url>
                    <s:a class="icon-action-link" href="%{loadAddRatesUrl}" rel="tooltip" title="Add Contact">
                        <button type="button" class="btn btn-primary">
                            <i class="fa fa-money"> </i> New Rate
                        </button>
                    </s:a>
                </span>

            </div>
        </div>
    </div>

    <%--<div class="col-lg-2">
        <div class="panel panel-primary">

            &lt;%&ndash;<div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-list-ol"></i> Vendor Details</h3>
            </div>&ndash;%&gt;

            <ul class="nav nav-pills nav-stacked">
           	   <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER')">
                <li><a href="#"><i class="fa fa-info-circle fa-fw"></i> Profile</a></li>
                <li><a href="viewAddress"><i class="fa fa-home fa-fw"></i> Address</a></li>
                <li><a href="viewCustomerContacts"><i class="fa fa-group fa-fw"></i> Contacts</a></li>
                <li><a href="viewItem"><i class="fa fa-list-ol fa-fw"></i> Items</a></li>
                </sec:authorize>
                
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER',  'ROLE_DOC_SPECIALIST', 'ROLE_FINANCE')">
                <li class="active"><a href="viewRates"><i class="fa fa-money fa-fw"></i> Rates</a></li>
                </sec:authorize>
                
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_CUSTOMER_RELATIONS', 'ROLE_SALES', 'ROLE_CUSTOMER')">
                <li><a href="viewConsignees"><i class="fa fa-list fa-fw"></i> Consignee List</a></li>
                </sec:authorize>
            </ul>
        </div>
    </div>--%>

</div>
<!-- /.row -->
