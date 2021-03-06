<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="true" %>

<style>
    .fa-arrow-circle-down {
        cursor: pointer;
        color: #428bca;
    }
</style>

<div class="row">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
                <h1><i class="fa fa-anchor"></i> Freight Plan </h1>
            </span>
        </legend>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Operations</li>
            <li class="active"><a href="<s:url action='viewSeaFreightList' />"> Freight Plan : Orders </a></li>
            <li class="active">
                <s:url var="viewSeaFreightItemListUrl" action="viewSeaFreightItemList">
                    <s:param name="orderIdParam"
                             value="#attr.order.orderId"></s:param>
                    <s:param name="orderNoParam"
                             value="#attr.order.orderNo"></s:param>
                </s:url>
                <s:a class="icon-action-link" href="%{viewSeaFreightItemListUrl}" rel="tooltip"
                     title="Update Status">
                    <s:if test="order.serviceRequirement=='FULL CONTAINER LOAD'">
                        Freight Plan : Containers
                    </s:if>
                    <s:else>
                        Freight Plan : Items
                    </s:else>
                </s:a>
            </li>
            <li class="active"> Freight Plan </li>
        </ol>

    </div>
</div>

<div class="row">
    <div class="col-lg-12">

        <div class="panel panel-primary">
            <div class="panel-heading">
                <i class="fa fa-book"></i>
                <span class="panel-title">Booking Information</span>
            </div>
            <div class="panel-body form-horizontal">

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Booking Number</label>

                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.orderNumber}"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Freight Type</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.freightType}"
                                     disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Service
                        Req't</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.serviceRequirement}"
                                     name="book-num"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Service
                        Mode</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.modeOfService}"
                                     disabled="true"></s:textfield>
                    </div>

                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Customer
                        </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.customerName}"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Consignee
                        </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.consigneeName}"
                                     disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Origin Port</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.originationPort}"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Destination Port</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.destinationPort}"
                                     disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Pickup Date</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control pickupDate" value="%{order.strPickupDate}"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Delivery Date</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control deliveryDate" value="%{order.strDeliveryDate}"
                                     disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Pickup Address</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.shipperInfoAddress.address}" name="book-num"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Destination Address</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.consigneeInfoAddress.address}" name="book-num"
                                     disabled="true"></s:textfield>
                    </div>

            </div>
        </div>
    </div>

    <div class="panel panel-primary" id="focusHere" tabindex="-1">

        <div class="panel-heading">
            <i class="fa fa-anchor"></i>
            <span class="panel-title"> Freight Plan </span>
        </div>

        <div class="panel-body">
            <s:form cssClass="form-horizontal" action="findVesselScheduleBulk" theme="bootstrap" style="margin-bottom: 1.6em;">
                <s:hidden name="operationsBean.orderItemId" value="%{orderItem.orderItemId}" />
                <s:hidden name="operationsBean.clientId" value="%{orderItem.clientId}" />
                <s:hidden name="operationsBean.nameSize" value="%{orderItem.nameSize}" />
                <s:hidden name="operationsBean.orderId" value="%{order.orderId}" />
                <s:hidden name="operationsBean.quantity" value="%{orderItem.quantity}" />
                <s:hidden name="operationsBean.classification" value="%{orderItem.classification}" />
                <s:hidden name="operationsBean.commodity" value="%{orderItem.commodity}" />
                <s:hidden name="operationsBean.declaredValue" value="%{orderItem.declaredValue}" />
                <s:hidden name="operationsBean.comments" value="%{orderItem.comments}" />
                <s:hidden name="operationsBean.rate" value="%{orderItem.rate}" />
                <s:hidden name="operationsBean.createdTimestamp" value="%{orderItem.createdTimestamp}" />
                <s:hidden name="operationsBean.createdBy" value="%{orderItem.createdBy}" />
                <s:hidden name="operationsBean.modifiedTimestamp" value="%{orderItem.modifiedTimestamp}" />
                <s:hidden name="operationsBean.modifiedBy" value="%{orderItem.modifiedBy}" />
                <s:hidden name="operationsBean.status" value="%{orderItem.status}" />
                <s:hidden name="operationsBean.weight" value="%{orderItem.weight}" />
                <s:hidden name="operationsBean.modeOfService" value="%{order.modeOfService}" />
                <s:hidden name="operationsBean.freightType" value="%{order.freightType}" />

                <div class="form-group">

                    <div class="table-responsive list-table">

                        <table class="table table-striped table-hover table-bordered text-center tablesorter" id="orderItems">
                            <thead>
                            <tr class="header_center" style="background-color: #fff;">
                                <th class="tb-font-black">Quantity</th>
                                <s:if test="order.serviceRequirement=='FULL CONTAINER LOAD'">
                                <span>
                                    <th class="tb-font-black">Size</th>
                                </span>
                                </s:if>
                                <s:else>
                                <span>
                                    <th class="tb-font-black">Name</th>
                                </span>
                                </s:else>
                                <th class="tb-font-black">Commodity</th>
                                <th class="tb-font-black">Declared Value</th>
                            </tr>
                            </thead>
                            <tbody>

                            <s:iterator value="orderItemFreightPlan" var="orderItems">
                                <tr>
                                    <%--<td><display:column property="quantity" title="Quantity" class="tb-font-black" style="text-align: center;"> </display:column></td>--%>
                                    <td class="tb-font-black"><s:property value="quantity"/></td>
                                    <s:if test="#attr.order.serviceRequirement=='FULL CONTAINER LOAD'">
                                        <%--<td><display:column property="nameSize" title="Container" class="tb-font-black" style="text-align: center;"> </display:column></td>--%>
                                        <td class="tb-font-black"><s:property value="nameSize"/></td>
                                    </s:if>
                                    <s:else>
                                        <%--<td><display:column property="nameSize" title="Item" class="tb-font-black" style="text-align: center;"> </display:column></td>--%>
                                        <td class="tb-font-black"><s:property value="nameSize"/></td>
                                    </s:else>
                                    <%--<td><display:column property="commodity" title="Commodity" class="tb-font-black" style="text-align: center;"> </display:column></td>--%>
                                    <td class="tb-font-black"><s:property value="description"/></td>
                                    <%--<td><display:column property="declaredValue" title="Declared Value" class="tb-font-black" style="text-align: center;"> </display:column></td>--%>
                                    <td class="tb-font-black"><s:property value="getText('format.money',{declaredValue})"/></td>
                                </tr>
                            </s:iterator>

                            </tbody>
                        </table>

                    </div>

                </div>
                <div class="form-group">
                    <label for="operationsBean.vendorList" class="col-lg-2 control-label" style="padding-top:0px;">Vendor</label>
                    <div class="col-lg-4">
                        <div>
                            <s:select list="vendorShippingList" name="operationsBean.vendorList"
                                      id="operationsBean_vendorList" required="true" autofocus="true"
                                      listKey="vendorId" listValue="vendorName" cssClass="form-control"
                                      emptyOption="true"></s:select>
                        </div>
                    </div>
                    <div class="col-lg-2" style="text-align: center;">
                        <div>
                            <a href="#" style="width: 135px;">
                                <s:submit cssClass="btn btn-primary findVesselScheduleBulk_submit" name="submit" value="Filter by Vendor"/>
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-2" style="text-align: center;">
                        <div>
                            <a data-toggle="modal" data-target="#createVendor" id="createVendorButton" class="btn btn-info" style="width: 135px;">
                                Add Vendor
                            </a>
                        </div>
                    </div>
                    <div class="col-lg-2" style="text-align: center;">
                        <div>
                            <a data-toggle="modal" data-target="#addSchedule" id="createSchedule" class="btn btn-info" style="width: 135px;">
                                Add Schedule
                            </a>
                        </div>
                    </div>
                </div>
            </s:form>

            <%---------------------------------------------------------------------------------------------%>

            <%--<s:if test="scheduleExists == 'TRUE' ">--%>

            <div class="well">
                <h4 style="text-align:center;"><i class="fa fa-clock-o"></i> Current Schedules</h4>
                <display:table id="vesselSchedule" name="orderItemVesselSchedule"
                               requestURI="/viewSeaFreightPlanning.action" pagesize="10"
                               class="table table-striped table-hover table-bordered text-center tablesorter currentSchedulesTable">
                    <td><display:column property="vendorName" title="Vendor" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="voyageNumber" title="Voyage #" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="vesselName" title="Vessel" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="originPort" title="ORI" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="destinationPort" title="DES" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="departureDate" title="Departure" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="arrivalDate" title="Arrival" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                </display:table>
            </div>

            <%--</s:if>--%>

            <%---------------------------------------------------------------------------------------------%>

            <div class="form-group">
                <h4 style="text-align:center;"><i class="fa fa-clock-o"></i> List of Schedules</h4>
                <hr>
            </div>

            <s:if test="hasActionMessages()">
                <div class="col-lg-12" id="successDiv">
                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">x</button>
                        <strong><s:actionmessage cssStyle="margin-bottom: 0px;"/></strong>
                    </div>
                </div>
            </s:if>

            <div class="loadingDiv" style="text-align: center;">
                Pulling up Schedules. Please Wait.<br/>
                <i style="padding: 10px; font-size: 2em; color: #95A5A6;" class="fa fa-repeat fa-spin"></i>
            </div>
            <div class="tableDiv" style="display: none;">
                <display:table id="vesselSchedule" name="vesselSchedules"
                               requestURI="/viewSeaFreightPlanning.action"
                               class="table table-striped table-hover table-bordered text-center tablesorter listOfSchedules"
                               style="margin-top: 15px;">
                    <td><display:column property="vendorName" title="Vendor" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="voyageNumber" title="Voyage #" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="vesselName" title="Vessel" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="originPort" title="ORI" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="destinationPort" title="DES" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="departureDate" title="Departure" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="arrivalDate" title="Arrival" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column property="vendorClass" title="Class" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                    <td><display:column title="Action">
                        <a class="icon-action-link" rel="tooltip" title="Set Schedule" data-toggle="modal" data-target="#saveFreightPlanning" onclick="confirmFreightPlan(${vesselSchedule.vesselScheduleId},${vesselSchedule.vendorId})">
                            <i class="fa fa-arrow-circle-down"></i>
                        </a>
                    </display:column></td>
                </display:table>
            </div>
        </div>

        <div class="panel-footer">
            <div class="pull-right">
                <s:url var="viewSeaFreightItemListUrl" action="viewSeaFreightItemList">
                    <s:param name="orderIdParam"
                             value="#attr.order.orderId"></s:param>
                    <s:param name="orderNoParam"
                             value="#attr.order.orderNo"></s:param>
                </s:url>
                <s:a class="icon-action-link" href="%{viewSeaFreightItemListUrl}" rel="tooltip">

                    <s:if test="order.serviceRequirement=='FULL CONTAINER LOAD'">
                        <button type="button" class="btn btn-danger">
                            <i class="fa fa-chevron-left"></i>
                            Back to Freight Plan : Containers
                        </button>
                    </s:if>
                    <s:else>
                        <button type="button" class="btn btn-danger">
                            <i class="fa fa-chevron-left"></i>
                            Back to Freight Plan : Items
                        </button>
                    </s:else>

                </s:a>
            </div>
        </div>

    </div>

</div>

<%--Start Add Vendor Modal--%>
<div class="modal fade" id="createDriver" role="form" aria-labelledby="myModalLabel1">
    <div class="modal-dialog modal-form">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="myModalLabel1">Add Driver</h4>
            </div>

            <div class="modal-body">
                <div class="panel-body">

                    <s:form cssClass="form-horizontal" action="addDriver" theme="bootstrap">
                    <s:hidden name = "driver.vendorId" id="vendorId" ></s:hidden>

                    <div class="form-group">

                        <label for="driver.licenseNumber" class="col-lg-3 control-label" style="padding-top:0px;">License<span class="asterisk_red"></span></label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" placeholder="AXX-XX-XXXXXX"
                                         name="driver.licenseNumber" id="driver_licenseNumber" required="true" maxLength="13" pattern=".{13,}"
                                         title="Example:L03-12-002XXX"/>
                        </div>

                    </div>

                    <div class="form-group">

                        <label for="driver.lastName" class="col-lg-3 control-label" style="padding-top:0px;">Last Name<span class="asterisk_red"></span></label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" placeholder="Last Name" name="driver.lastName"
                                         id="driver_lastName" required="true" pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$"
                                         title="Last Name should not contain special characters and/or numbers." maxlength="30"/>
                        </div>

                    </div>

                    <div class="form-group">

                        <label for="driver.firstName" class="col-lg-3 control-label" style="padding-top:0px;">First Name<span class="asterisk_red"></span></label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" placeholder="First Name" name="driver.firstName"
                                         id="driver_firstName" required="true" pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$"
                                         title="First Name should not contain special characters and/or numbers." maxlength="30"/>
                        </div>

                    </div>

                    <div class="form-group">

                        <label for="driver.middleName" class="col-lg-3 control-label" style="padding-top:0px;">Middle Name</label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" placeholder="Middle Name" name="driver.middleName"
                                         id="driver_middleName" pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$"
                                         title="Middle Name should not contain special characters and/or numbers." maxlength="30"/>
                        </div>

                    </div>

                    <div class="form-group">

                        <label for="driver.title" class="col-lg-3 control-label" style="padding-top:0px;">Title<span class="asterisk_red"></span></label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" placeholder="Title" name="driver.title"
                                         id="driver_title" required="true" maxlength="50"
                                         pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$"
                                         title="Title should not contain special characters and/or numbers."/>
                        </div>

                    </div>

                    <div class="form-group">

                        <label class="col-lg-3 control-label" for="driver.status" style="padding-top:0px;">Status</label>

                        <div class="col-lg-9">
                            <s:select list="statusList" listKey="key" listValue="value" name="driver.status"
                                      cssClass="form-control"/>
                        </div>

                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <div>
                    <s:submit cssClass="btn btn-primary" name="submit" value="Save"/>
                </div>
            </div>
            </s:form>
        </div>
    </div>
</div>

<div class="modal fade" id="createTruck" role="form" aria-labelledby="myModalLabel1">
    <div class="modal-dialog modal-form">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="myModalLabel1">Add Trucks</h4>
            </div>

            <div class="modal-body">

                <s:form cssClass="form-horizontal" action="addTruck" method="post" theme="bootstrap">
                    <%--Plate Number = plateNumber--%>
                    <s:hidden name="truck.vendorId" id="vendorIdTruck" ></s:hidden>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">Plate Number<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="e.g. ABC-123, XYZ-7890, etc." name="truck.plateNumber"
                                     id="truck_plateNumber" required="true" pattern=".{7,8}" title="Example: ABC-123,XYZ-7890"/>
                    </div>
                </div>
                    <%--LTO Certificate Number = code--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">LTO Certificate Number<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="LTO Certificate Number" name="truck.truckCode"
                                     id="truck_truckCode" required="true" maxlength="10" title="Input your LTO Certificate Number"/>
                    </div>
                </div>
                    <%--MV File Number--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">MV File Number<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="MV File Number" name="truck.motorVehicleNumber" onkeypress="return isNumberKey(event)"
                                     id="truck_motorVehicleNumber" required="true" title="Input your MV File Number" />
                    </div>
                </div>
                    <%--Model = modelNumber--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">Model<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="e.g. 4Runner, Yukon, Silverado, etc." name="truck.modelNumber"
                                     id="truck_modelNumber" required="true" title="Example: 4Runner, Yukon, Silverado"/>
                    </div>
                </div>
                    <%--Owner's Name = ownerName--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">Owner's Name<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="Owner's Name" name="truck.ownerName"
                                     id="truck_ownerName" required="true" pattern="^(\s*[a-zA-Z\xD1-\xF1]+(([\'\-\+\s]\s*[a-zA-Z\xD1-\xF1])?[a-zA-Z\xD1-\xF1]*)\s*)+$"
                                     title="Owner's Name should not contain special characters and/or numbers." maxLength="50" />
                    </div>
                </div>
                    <%--Owner's Address = ownerAddress--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0;">Owner's Address<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="Owner's Address" name="truck.ownerAddress"
                                     id="truck_ownerAddress" required="true" maxLength="50"
                                     pattern="^(\s*[a-zA-Z0-9]+(([\'\-\+\s]\s*[a-zA-Z0-9])?[a-zA-Z0-9]*)\s*)+$"
                                     title="Owner's Address should not contain special characters."/>
                    </div>
                </div>
                    <%--O.R. Number = officialReceipt--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">O.R. Number<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="O.R. Number" name="truck.officialReceipt" onkeypress="return isNumberKey(event)"
                                     id="truck_officialReceipt" required="true" title="Please Input Valid O.R. Number" maxlength="15" pattern="[0-9]+"/>
                    </div>
                </div>
                    <%--CR Date of Issue--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0;">CR Date of Issue<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="CR Date of Issue" name="truck.issueDate" id="issueDate" required="true"/>
                    </div>
                </div>
                    <%--Make = engineNumber--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">Make<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="e.g. Toyota, GMC, Chevrolet, etc."
                                     name="truck.engineNumber" title="Example: Toyota, GMC, Chevrolet."
                                     id="truck_engineNumber" required="true"  pattern="^(\s*[\#a-zA-Z0-9\-]+(([\'\-\+\s]\s*[a-zA-Z0-9\-])?[a-zA-Z0-9\-]*)\s*)+$"/>
                    </div>
                </div>
                    <%--Type of Body = truckType--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">Type of Body<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:select list="truckTypeList" name="truck.truckType" listKey="key" listValue="value"
                                  cssClass="form-control"/>
                    </div>
                </div>
                    <%--Year Model = modelYear--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">Year Model<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder=" e.g. 1999, 2012, etc." name="truck.modelYear" onkeypress="return isNumberKey(event)"
                                     id="truck_modelYear" required="true" maxLength="4" title="Example: 1999, 2012"/>
                    </div>
                </div>
                    <%--Gross Weight = grossWeight--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">Gross Weight (kg.)<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="Gross Weight" name="truck.grossWeight"
                                     id="truck_grossWeight" required="true" pattern="^[0-9]*$" maxLength="9" onkeypress="return isNumberKey(event)"
                                     title="Gross Weight will not accept letters or special characters."/>
                    </div>
                </div>
                    <%--Net Weight = netWeight--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">Net Weight (kg.)<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="Net Weight" name="truck.netWeight"
                                     id="truck_netWeight" required="true" pattern="^[0-9]*$" maxLength="9" onkeypress="return isNumberKey(event)"
                                     title="Gross Weight will not accept letters or special characters."/>
                    </div>
                </div>
                    <%--Net Capacity = netCapacity--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0px;">Net Capacity<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="Net Capacity" name="truck.netCapacity"
                                     id="truck_netCapacity" required="true" pattern="^[0-9]*$" maxLength="9" onkeypress="return isNumberKey(event)"
                                     title="Net Capacity will not accept letters or special characters."/>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <s:submit cssClass="btn btn-primary" name="submit" value="Save"/>
                </s:form>
            </div>

        </div>
    </div>
</div>

<div class="modal fade" id="createVendor" role="form" aria-labelledby="myModalLabel1">
    <div class="modal-dialog modal-form">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="myModalLabel1">Add Vendor</h4>
            </div>

            <div class="modal-body">
                <div class="panel-body">

                    <s:form cssClass="form-horizontal" action="addVendorSeaBulk" method="POST" theme="bootstrap">

                    <div class="form-group">
                        <label class="col-lg-3 control-label" style="padding-top:0px;">Type<span class="asterisk_red"></span></label>

                        <div class="col-lg-9"></span>
                            <%--<s:select list="vendorTypeList" name="vendor.vendorType" id="vendorTypeId"
                                      listKey="key" listValue="value" cssClass="vendorInput form-control" />--%>
                            <s:hidden type="hidden" cssClass="form-control" value="SHIPPING" name="vendor.vendorType"
                                      id="vendor.vendorType"/>
                            <s:textfield cssClass="form-control" value="Shipping" name="vendor_vendorType"
                                         id="vendor_vendorType" disabled="true"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" style="padding-top:0px;">Company<span class="asterisk_red"></span></label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" placeholder="Company Name" name="vendor.vendorName"
                                         id="vendor_vendorName" required="true"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" style="padding-top:0px;">Code<span class="asterisk_red"></span></label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" name="vendor.vendorCode" id="vendor_vendorCode" required="true"
                                         placeholder="Code" maxLength="3" pattern="[A-Z]+" title="Must be letters only" onkeypress="return alphaKeyOnly(event)"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" style="padding-top:0px;">Class<span class="asterisk_red"></span></label>

                        <div class="col-lg-9">
                            <s:select list="vendorClassList" listKey="key" listValue="value" cssClass="form-control"
                                      id="vendor.vendorClass" name="vendor.vendorClass"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label" style="padding-top:0px;">Service Area<span class="asterisk_red"></span></label>

                        <div class="col-lg-9">
                            <s:select list="portsList" listKey="key" listValue="value" cssClass="vendorInput form-control"
                                      id="serviceAreaId" name="vendor.serviceArea" emptyOption="true"/>
                        </div>
                    </div>

                </div>
            </div>
            <div class="modal-footer">
                <div>
                    <s:submit cssClass="btn btn-primary" value="Save" type="submit"/>
                </div>
            </div>
            </s:form>
        </div>
    </div>
</div>
<%--End Add Vendor Modal--%>

<%--Start Add Schedule--%>
<div class="modal fade" id="addSchedule" role="form" aria-labelledby="myModalLabel2">
    <div class="modal-dialog modal-form">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title" id="myModalLabel2">Add Schedule</h4>
            </div>

            <div class="modal-body">
                <div class="panel-body">

                    <s:form cssClass="form-horizontal" theme="bootstrap" action="addVesselScheduleEdit">

                    <label>Vendor<span class="asterisk_red"></span></label>

                    <s:select list="vendorShippingListClass" id="vesselSchedule_vendorName" name="vesselSchedule.vendorId"
                              listKey="vendorId" listValue="vendorName" cssClass="form-control addScheduleInput vendorIdPass"
                              emptyOption="true" required="true"></s:select>

                    <label>Voyage Number<span class="asterisk_red"></span></label>

                    <s:textfield cssClass="form-control" id="voyageNumber" name="vesselSchedule.voyageNumber" required="true"
                                 maxlength="10" title="Voyage Number will only accept alphanumeric input only e.g. a-z, A-Z, 0-9"
                                 pattern="[a-zA-Z0-9\-]+"/>

                    <label>Vessel<span class="asterisk_red"></span></label>

                    <s:select emptyOption="true" id="listVessel"
                              value="vesselSchedule.vesselName"
                              name="vesselSchedule.vesselName"
                              list="listVessel" listValue="value" listKey="key"
                              cssClass="form-control vendorIdPass" required="true"/>

                    <label> Departure Date<span class="asterisk_red"></span></label>

                    <s:textfield cssClass="form-control" id="departureDate"
                                 name="vesselSchedule.departureDate"/>

                    <label> Departure Time<span class="asterisk_red"></span></label>

                    <s:textfield cssClass="form-control" id="departureTime"
                                 name="vesselSchedule.departureTime" readonly="true"/>

                    <label>Arrival Date<span class="asterisk_red"></span></label>

                    <s:textfield cssClass="form-control" id="arrivalDate" name="vesselSchedule.arrivalDate" readonly="true"/>

                    <label> Arrival Time<span class="asterisk_red"></span></label>

                    <s:textfield cssClass="form-control" id="arrivalTime"
                                 name="vesselSchedule.arrivalTime"/>

                    <label>Origin Pier<span class="asterisk_red"></span></label>

                    <s:select emptyOption="true" id="vesselSchedule_originPort"
                              value="vesselSchedule.originPort"
                              name="vesselSchedule.originPort"
                              list="portsList" listValue="value" listKey="key"
                              cssClass="form-control"/>

                    <label>Destination Pier<span class="asterisk_red"></span></label>

                    <s:select emptyOption="true" id="vesselSchedule_destinationPort"
                              value="vesselSchedule.destinationPort"
                              name="vesselSchedule.destinationPort"
                              list="portsList" listValue="value" listKey="key"
                              cssClass="form-control"/>

                </div>
            </div>

            <div class="modal-footer">
                <div>
                    <s:submit cssClass="btn btn-primary" name="submit" value="Save"/>
                    </s:form>
                </div>
            </div>
        </div>
    </div>
</div>

<%--End Add Schedule--%>

<!-- Confirm Vendor Modal -->
<div class="modal fade" id="saveFreightPlanning" role="dialog" aria-labelledby="myModalLabel1" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-check"></i> Confirm Freight Plan Details</h4>
            </div>

            <div class="modal-body">
                <div id="inputDiv"/>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">

    $("#date").datepicker({dateFormat: 'yy-dd-mm'});

    // Anchor on successDiv on every schedule load
    if ($('#successDiv').length !== 0){
        window.location.href = '#anchorDiv';
    }

    function isNumberKey(evt)
    {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57) || (charCode == 46 && $(this).val().indexOf('.') != -1))
            return false;

        return true;
    }

    function confirmFreightPlan(vesselScheduleId,vendorId) {
        $.ajax({
            url: 'getConfirmModalBulkAction',
            type: 'POST',
            data: {vesselScheduleIdParam: vesselScheduleId, vendorIdParam: vendorId},
            dataType: 'html',
            success: function (html) {
                $('#inputDiv').html(html);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert('An error occured! ' + thrownError);
            }
        });
    }

    // User must choose a vendor first before adding vessel schedule
    $(document).ready(function(){
        window.location.href = '#focusHere';
        hideVesselSchedule();

        $(".vendorIdPass").change(function() {
            var vendorId = $(".vendorIdPass").val();

            $.getJSON('listVessel', {
                vendorId: vendorId
            },

            function (jsonResponse) {

                var vessel = $('#listVessel');

                vessel.find('option').remove();

                $.each(jsonResponse.vesselMap, function (key, value) {
                    $('<option>').val(key).text(value).appendTo(vessel);
                });

            });

        });

        $("#createSchedule").click(function() {
            $("#vesselSchedule_vendorName").val('');
            $("#voyageNumber").val('');
            $("#listVessel").val('');
            $("#departureDate").val('');
            $("#departureTime").val('');
            $("#arrivalDate").val('');
            $("#arrivalTime").val('');
            $("#vesselSchedule_originPort").val('');
            $("#vesselSchedule_destinationPort").val('');
        });
    });

    var departureDate = $('#departureDate');
    var arrivalDate = $('#arrivalDate');
    // departure date
    departureDate.datepicker({

                dateFormat: 'mm-dd-yy',
                minDate: 0,

                onClose: function(dateText, inst) {
                    if (arrivalDate.val() != '') {
                        var testStartDate = departureDate.datepicker('getDate');
                        var testEndDate = departureDate.datepicker('getDate');

                        if (testStartDate > testEndDate)
                            arrivalDate.datepicker('setDate', testStartDate);
                    }
                    else {
                        arrivalDate.val(dateText);
                    }
                },

                onSelect: function (selectedDateTime){
                    arrivalDate.datepicker('option', 'minDate', departureDate.datepicker('getDate') );
                }
            }

    );

    // arrival date
    arrivalDate.datepicker(
            {
                dateFormat: 'mm-dd-yy',
                minDate: 0,

                onClose: function(dateText, inst) {

                    if (departureDate.val() != '') {
                        var testStartDate = departureDate.datepicker('getDate');
                        var testEndDate = arrivalDate.datepicker('getDate');

                        if (testStartDate > testEndDate)
                            departureDate.datepicker('setDate', testEndDate);

                    }

                    else {
                        departureDate.val(dateText);
                    }
                },

                onSelect: function (selectedDateTime){
                    departureDate.datepicker('option', 'maxDate', arrivalDate.datepicker('getDate') );
                }
            });

    $('#arrivalTime').timepicker( {
        timeFormat: 'h:mm TT'

    });

    $('#departureTime').timepicker( {
        timeFormat: 'h:mm TT'

    });

    // Avoid selecting duplicate ports
    function preventDuplicatePort(select, index) {

        var options = select.options,
                len = options.length;

        while ( len-- ){
            options[ len ].disabled = false;
        }

        select.options[ index ].disabled = true;

        if( index === select.selectedIndex ){
            alert('You already selected the same port "' + select.options[index].text + '". Please choose another' );
            /*this.selectedIndex = 0;*/
            select2.value = '';
        }

    }

    var select1 = select = document.getElementById('vesselSchedule_originPort');
    var select2 = select = document.getElementById('vesselSchedule_destinationPort');

    select2.value = '';

    select1.onchange = function() {
        preventDuplicatePort.call(this, select2, this.selectedIndex);
    };

    select2.onchange = function() {
        preventDuplicatePort.call(this, select1, this.selectedIndex);
    };

    var pickup = $('#pickup');
    var dropoff = $('#dropoff');

    //pick up date validation
    pickup.datepicker({

        // on 5:00pm
//            timeFormat: 'h:mm TT',
        dateFormat: 'yy-mm-dd',
        minDate: 0,
        onClose: function(dateText, inst) {

            if (dropoff.val() != '') {
                var testStartDate = pickup.datepicker('getDate');
                var testEndDate = dropoff.datepicker('getDate');

                if (testStartDate > testEndDate)
                    dropoff.datepicker('setDate', testStartDate);

            }

            else {
                dropoff.val(dateText);
            }
        },

        onSelect: function (selectedDateTime){
            dropoff.datepicker('option', 'minDate', pickup.datepicker('getDate') );
        }

    });

    // delivery date validation -jp
    dropoff.datepicker({

        // on 6:00pm
        dateFormat: 'yy-mm-dd',
        minDate: 0,
        onClose: function(dateText, inst) {

            if (pickup.val() != '') {
                var testStartDate = pickup.datepicker('getDate');
                var testEndDate = dropoff.datepicker('getDate');

                if (testStartDate > testEndDate)
                    pickup.datepicker('setDate', testEndDate);
            }

            else {
                pickup.val(dateText);
            }
        },

        onSelect: function (selectedDateTime){
            pickup.datepicker('option', 'maxDate', dropoff.datepicker('getDate') );
        }

    });

    $(document).ready(function () {
        $("#createVendorButton").click(function () {
            $("#vendor_vendorName").val('');
            $("#vendor_vendorCode").val('');
        })
    });

    $(document).ready(function(){

        $("#driver_licenseNumber").mask("A99-99-9999999");
//        $("#shipping_mobile").mask("(+63999)(999-9999)");
//        $("#shipping_fax").mask("(999) 999-9999");

    });

    $(document).ready(function(){

        $("#truck_motorVehicleNumber").mask("9999-99999999999");
        $("#truck_plateNumber").mask("AAA-9999");
//      $("#shipping_fax").mask("(999) 999-9999");
        $("#truck_modelYear").mask("9999");
        $("#truck_grossWeight").mask("999999999");
        $("#truck_netWeight").mask("999999999");
        $("#truck_netCapacity").mask("999999999");

    });

    $("#truck_plateNumber").keyup(function(){
        this.value=this.value.toUpperCase();
    });

    var issueDate = $('#issueDate');

    issueDate.datepicker({

        dateFormat: 'mm/dd/yy',
        startDate: 2

    });

    $(document).ready(function() {
        $('.findVesselScheduleBulk_submit').prop('disabled',true);
        $("#operationsBean_vendorList").change(function(){
            var vendorId = $("#operationsBean_vendorList").val();
            $('#operationsBean_vendorList option:selected').each(function(){
                if(vendorId == "" || null) {
                    $('.findVesselScheduleBulk_submit').prop('disabled',true); }
                else {
                    $('.findVesselScheduleBulk_submit').prop('disabled',false); }
            });
        });
    });

</script>
