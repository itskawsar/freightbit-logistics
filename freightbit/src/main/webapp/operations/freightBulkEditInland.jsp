<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page session="true" %>

<div class="row">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
                <h1><i class="fa fa-truck"></i> Dispatch Plan </h1>
            </span>
        </legend>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Operations</li>
            <li class="active"><a href="<s:url action='viewInlandFreightList' />"> Dispatch Plan : Orders </a></li>
            <li class="active">
                <s:url var="viewInlandFreightItemListUrl" action="viewInlandFreightItemList">
                    <s:param name="orderIdParam"
                             value="#attr.order.orderId"></s:param>
                    <s:param name="orderNoParam"
                             value="#attr.order.orderNo"></s:param>
                </s:url>
                <s:a class="icon-action-link" href="%{viewInlandFreightItemListUrl}" rel="tooltip"
                     title="Update Status">
                    <s:if test="order.serviceRequirement=='FULL CONTAINER LOAD'">
                        Dispatch Plan : Containers
                    </s:if>
                    <s:else>
                        Dispatch Plan : Items
                    </s:else>
                </s:a>
            </li>
            <li class="active"> Dispatch Plan </li>
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
                        <s:textfield cssClass="form-control serviceType" value="%{order.freightType}"
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
                        <s:textfield cssClass="form-control" value="%{order.strPickupDate}"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Delivery Date</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.strDeliveryDate}"
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

        <div class="panel panel-primary">

            <div class="panel-heading">
                <i class="fa fa-anchor"></i>
                <span class="panel-title">Freight Plan</span>
            </div>

            <div class="panel-body form-horizontal">

                <display:table id="orderItem" name="orderItems"
                               requestURI="/viewSeaFreightItemList.action"
                               class="table table-striped table-hover table-bordered text-center tablesorter table-condensed simple freightTableBulk"
                               style="margin-top: 15px;">
                    <tr>
                            <%--Change Header based on Service Requirement--%>
                        <td><display:column property="quantity" title="QTY <i class='fa fa-sort' />"
                                            class="tb-font-black"
                                            style="text-align: center;"></display:column>
                        </td>
                        <td>
                            <s:if test="order.serviceRequirement=='FULL CONTAINER LOAD'">
                                <display:column property="nameSize" title="Size <i class='fa fa-sort' />"
                                                class="tb-font-black"
                                                style="text-align: center;">
                                </display:column>
                            </s:if>
                            <s:else>
                                <display:column property="nameSize" title="Name <i class='fa fa-sort' />"
                                                class="tb-font-black"
                                                style="text-align: center;">
                                </display:column>
                            </s:else>
                        </td>

                        <td><display:column property="vendorName" title="Vendor <i class='fa fa-sort' />"
                                            class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>

                        <td><display:column property="vesselScheduleId" title="Voyage # <i class='fa fa-sort' />"
                                            class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>

                        <td><display:column property="vesselName" title="Vessel Name <i class='fa fa-sort' />"
                                            class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>

                        <td><display:column property="departureDate" title="Departure Date <i class='fa fa-sort' />"
                                            class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>

                        <td><display:column property="arrivalDate" title="Arrival Date <i class='fa fa-sort' />"
                                            class="tb-font-black"
                                            style="text-align: center;"> </display:column></td>

                    </tr>
                </display:table>

            </div>

        </div>

        <div class="well">
            <h4 style="text-align:center;">Current Inland Vendor(s)</h4>
            <display:table id="currentOriginVendor" name="orderItemOriginVendor"
                           requestURI="/checkItemStatusInland.action" pagesize="10"
                           class="table table-striped table-hover table-bordered text-center tablesorter"
                           style="margin-top: 15px;">

                <td><display:column property="quantity" title="QTY <i class='fa fa-sort' />"
                                    class="tb-font-black"
                                    style="text-align: center;"></display:column></td>

                <s:if test="#attr.order.serviceRequirement=='FULL CONTAINER LOAD'">
                    <td><display:column property="nameSize" title="Container" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                </s:if>
                <s:else>
                    <td><display:column property="nameSize" title="Item" class="tb-font-black"
                                        style="text-align: center;"> </display:column></td>
                </s:else>

                <td><display:column property="description" title="Commodity" class="tb-font-black"
                                    style="text-align: center;"> </display:column></td>

                <td><display:column property="vendorOriginName" title="Origin Vendor" class="tb-font-black"
                                    style="text-align: center;"> </display:column></td>

                <td><display:column property="finalPickupDate" title="Pickup Date" class="tb-font-black"
                                    style="text-align: center;"> </display:column></td>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_SEA_FREIGHT')">
                <td><display:column property="vendorDestinationName" title="Destination Vendor <i class='fa fa-sort' />"
                                    class="tb-font-black"
                                    style="text-align: center;"> </display:column></td>

                <td><display:column property="finalDeliveryDate" title="Delivery Date <i class='fa fa-sort' />"
                                    class="tb-font-black"
                                    style="text-align: center;"> </display:column></td>
                </sec:authorize>
                <td><display:column property="status" title="Status <i class='fa fa-sort' />"
                                    class="tb-font-black"
                                    style="text-align: center;"> </display:column></td>

            </display:table>
        </div>

        <s:if test="order.modeOfService=='DOOR TO DOOR' || order.modeOfService=='DOOR TO PIER' || order.modeOfService=='PICKUP' || order.modeOfService=='INTER-WAREHOUSE'">

            <div class="panel panel-primary">

                <div class="panel-heading">
                    <i class="fa fa-truck"></i>
                    <span class="panel-title">Dispatch Plan : Origin</span>
                </div>

                <div class="panel-body">
                    <s:form cssClass="form-horizontal dispatchOriginForm" theme="bootstrap" action="editBulkItemsInlandOrigin">
                        <%--<s:hidden name="operationsBean.orderItemId" value="%{orderItem.orderItemId}" />
                        <s:hidden name="operationsBean.clientId" value="%{orderItem.clientId}" />
                        <s:hidden name="operationsBean.nameSize" value="%{orderItem.nameSize}" />
                        <s:hidden name="operationsBean.orderId" value="%{orderItem.orderId}" />
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
                        <s:hidden name="operationsBean.status" value="%{orderItems.status}" />
                        <s:hidden name="operationsBean.weight" value="%{orderItem.weight}" />
                        <s:hidden name="operationsBean.vendorOrigin" value="%{orderItem.vendorOrigin}" />
                        <s:hidden name="operationsBean.vendorSea" value="%{orderItem.vendorSea}" />
                        <s:hidden name="operationsBean.vesselScheduleId" value="%{orderItem.vesselScheduleId}" />
                        <s:hidden name="order.orderId" value="%{orderItem.orderId}" />
                        <s:hidden name="operationsBean.modeOfService" value="%{order.modeOfService}" />
                        <s:hidden name="operationsBean.freightType" value="%{order.freightType}" />--%>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Vendor</label>
                            <div class="col-lg-8">
                                <div>
                                    <s:select list="vendorTruckingOriginList" name="operationsBean.vendorListOrigin"
                                              id="vendorListOrigin" listKey="vendorId" listValue="vendorName" cssClass="form-control dispatchInput"
                                              emptyOption="true" value="%{orderItem.vendorOrigin}" ></s:select>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div>
                                    <a data-toggle="modal" data-target="#createVendor" id="createVendorButton" class="btn btn-info">
                                        Add Vendor
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Driver</label>
                            <div class="col-lg-8">
                                <div>
                                    <s:select list="listDrivers" name="operationsBean.driverOrigin"
                                              id="driverList" listKey="driverId" listValue="firstName + lastName" cssClass="form-control dispatchInput"
                                              emptyOption="true" value="%{orderItem.driverOrigin}"></s:select>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div>
                                    <a data-toggle="modal" data-target="#createDriver" id="createDriverOriginBtn" class="btn btn-info" style="width:100px !important;">
                                        Add Driver
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Plate Number</label>

                            <div class="col-lg-8">
                                <div>
                                    <s:select list="listDrivers" name="operationsBean.truckOrigin"
                                              id="trucksList" listKey="truckId" listValue="truckCode" cssClass="form-control dispatchInput"
                                              emptyOption="true" value="%{orderItem.truckOrigin}" ></s:select>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div>
                                    <a data-toggle="modal" data-target="#createTruck" id="createTruckOriginBtn" class="btn btn-info" style="width:100px !important;">
                                        Add Truck
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Truck Type</label>

                            <div class="col-lg-8">
                                <div>
                                    <s:select cssClass="form-control"
                                              id="bodyType"
                                              list="#{bodyType}"
                                              value="%{bodyType}"
                                              style="display:none" />

                                    <s:textfield cssClass="form-control dispatchInput"
                                                 id="bodyType_textfield"
                                                 disabled="true" />
                                </div>
                            </div>

                        </div>

                        <div class="form-group" style="display: none;">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Plate Number</label>

                            <div class="col-lg-8">
                                <div>
                                    <s:select cssClass="form-control"
                                              id="plateNumber"
                                              list="#{plateNumber}"
                                              value="%{plateNumber}"
                                              style="display:none" />

                                    <s:textfield cssClass="form-control dispatchInput"
                                                 id="plateNumber_textfield"
                                                 disabled="true" />
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Gross Weight</label>

                            <div class="col-lg-8">
                                <div>
                                    <s:select cssClass="form-control"
                                              id="grossWeight"
                                              list="#{grossWeight}"
                                              value="%{grossWeight}"
                                              style="display:none" />

                                    <s:textfield cssClass="form-control dispatchInput"
                                                 id="grossWeight_textfield"
                                                 disabled="true" />
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Pickup Date</label>
                            <div class="col-lg-8">
                                <s:textfield cssClass="from_date form-control dispatchInput dispatchFinalPickup" value="%{orderItem.finalPickupDate}" id="pickup" name="operationsBean.pickupDate" placeholder="Select start date" contenteditable="false" style="margin-bottom: 15px !important;" />
                            </div>
                        </div>
                        <div style="float: right;">
                            <s:url var="viewInlandFreightItemListUrl" action="viewInlandFreightItemList">
                                <s:param name="orderIdParam"
                                         value="#attr.order.orderId"></s:param>
                                <s:param name="orderNoParam"
                                         value="#attr.order.orderNo"></s:param>
                            </s:url>
                            <s:a href="%{viewInlandFreightItemListUrl}" rel="tooltip" title="Cancel">
                                <button type="button" id="Cancel" class="btn btn-danger">
                                    Cancel
                                </button>
                            </s:a>

                            <button class="btn btn-primary dispatchSaveBtn" type="button">Save</button>
                        </div>
                    </s:form>
                </div>

                <s:if test="order.modeOfService!='DOOR TO DOOR'">

                    <div class="panel-footer">
                        <div class="pull-right">
                            <s:url var="viewInlandFreightItemListUrl" action="viewInlandFreightItemList">
                                <s:param name="orderIdParam"
                                         value="#attr.order.orderId"></s:param>
                                <s:param name="orderNoParam"
                                         value="#attr.order.orderNo"></s:param>
                            </s:url>
                            <s:a class="icon-action-link" href="%{viewInlandFreightItemListUrl}" rel="tooltip"
                                 title="Update Vendor">

                                <s:if test="order.serviceRequirement=='FULL CONTAINER LOAD' || order.serviceRequirement=='FULL TRUCK LOAD'">
                                    <button type="button" class="btn btn-danger">
                                        <i class="fa fa-chevron-left"></i> Dispatch Plan : Containers
                                    </button>
                                </s:if>
                                <s:else>
                                    <button type="button" class="btn btn-danger">
                                        <i class="fa fa-chevron-left"></i>  Dispatch Plan : Items
                                    </button>
                                </s:else>

                            </s:a>
                        </div>
                    </div>

                </s:if>

            </div>

        </s:if>

        <s:if test="order.modeOfService=='DOOR TO DOOR' || order.modeOfService=='PIER TO DOOR' || order.modeOfService=='DELIVERY'">

            <div class="panel panel-primary">

                <div class="panel-heading">
                    <i class="fa fa-truck"></i>
                    <span class="panel-title">Dispatch Plan : Destination</span>
                </div>
                <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_SEA_FREIGHT')">
                <div class="panel-body">
                    <s:form cssClass="form-horizontal dispatchDestinationForm" theme="bootstrap" action="editBulkItemsInlandDestination">
                        <%--<s:hidden name="operationsBean.orderItemId" value="%{orderItem.orderItemId}" />
                        <s:hidden name="operationsBean.clientId" value="%{orderItem.clientId}" />
                        <s:hidden name="operationsBean.nameSize" value="%{orderItem.nameSize}" />
                        <s:hidden name="operationsBean.orderId" value="%{orderItem.orderId}" />
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
                        <s:hidden name="operationsBean.pickupDate" value="2014-10-02" />
                        <s:hidden name="operationsBean.vendorOrigin" value="%{orderItem.vendorOrigin}" />
                        <s:hidden name="operationsBean.vendorSea" value="%{orderItem.vendorSea}" />
                        <s:hidden name="order.orderId" value="%{orderItem.orderId}" />
                        <s:hidden name="operationsBean.vesselScheduleId" value="0" />
                        <s:hidden name="operationsBean.driverOrigin" value="%{orderItem.driverOrigin}" />
                        <s:hidden name="operationsBean.truckOrigin" value="%{orderItem.truckOrigin}" />
                        <s:hidden name="operationsBean.modeOfService" value="%{order.modeOfService}" />
                        <s:hidden name="operationsBean.freightType" value="%{order.freightType}" />--%>

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Vendor</label>

                            <div class="col-lg-8">
                                <div>
                                    <s:if test="order.modeOfService!='DELIVERY'">
                                        <s:select list="vendorTruckingDestinationList" name="operationsBean.vendorListDestination"
                                                  id="vendorListDestination" listKey="vendorId" listValue="vendorName" cssClass="form-control dispatchInputDes"
                                                  emptyOption="true" value="%{orderItem.vendorDestination}"></s:select>
                                    </s:if>
                                    <s:else>
                                        <s:select list="vendorTruckingOriginList" name="operationsBean.vendorListDestination"
                                                  id="vendorListDestination" listKey="vendorId" listValue="vendorName" cssClass="dispatchInputDes form-control"
                                                  emptyOption="true" value="%{orderItem.vendorDestination}" ></s:select>
                                    </s:else>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div>
                                    <a data-toggle="modal" data-target="#createVendor" id="createVendorButton" class="btn btn-info">
                                        Add Vendor
                                    </a>
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Driver</label>
                            <div class="col-lg-8">
                                <div>
                                    <s:select list="listDrivers" name="operationsBean.driverDestination"
                                              id="driverListDestination" listKey="driverId" listValue="firstName + lastName" cssClass="form-control dispatchInputDes"
                                              emptyOption="true" value="%{orderItem.driverDestination}" ></s:select>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div>
                                    <a data-toggle="modal" data-target="#createDriver" class="btn btn-info" id="createDriverDestinationBtn" style="width:100px !important;">
                                        Add Driver
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label">Plate Number</label>
                            <div class="col-lg-8">
                                <div>
                                    <s:select list="listDrivers" name="operationsBean.truckDestination"
                                              id="trucksListDestination" listKey="truckId" listValue="truckCode" cssClass="form-control dispatchInputDes"
                                              emptyOption="true" value="%{orderItem.truckDestination}" ></s:select>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <div>
                                    <a data-toggle="modal" data-target="#createTruck" id="createTruckDestinationBtn" class="btn btn-info" style="width:100px !important;">
                                        Add Truck
                                    </a>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Truck Type</label>

                            <div class="col-lg-8">
                                <div>
                                    <s:select cssClass="form-control"
                                              id="bodyTypeDestination"
                                              list="#{bodyType}"
                                              value="%{bodyType}"
                                              style="display:none" />

                                    <s:textfield cssClass="form-control dispatchInputDes"
                                                 id="bodyType_Destination_textfield"
                                                 disabled="true" />
                                </div>
                            </div>

                        </div>

                        <div class="form-group" style="display: none;">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Plate Number</label>

                            <div class="col-lg-8">
                                <div>
                                    <s:select cssClass="form-control"
                                              id="plateNumberDestination"
                                              list="#{plateNumber}"
                                              value="%{plateNumber}"
                                              style="display:none" />

                                    <s:textfield cssClass="form-control dispatchInputDes"
                                                 id="plateNumber_Destination_textfield"
                                                 disabled="true" />
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Gross Weight</label>

                            <div class="col-lg-8">
                                <div>
                                    <s:select cssClass="form-control"
                                              id="grossWeightDestination"
                                              list="#{grossWeight}"
                                              value="%{grossWeight}"
                                              style="display:none" />

                                    <s:textfield cssClass="form-control dispatchInputDes"
                                                 id="grossWeight_Destination_textfield"
                                                 disabled="true" />
                                </div>
                            </div>

                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Drop off Date</label>
                            <div class="col-lg-8">
                                <s:textfield cssClass="from_date form-control dispatchInputDes dispatchFinalDelivery" value="%{orderItem.finalDeliveryDate}" id="dropoff" name="operationsBean.deliveryDate" placeholder="Select start date" contenteditable="false" style="margin-bottom: 15px !important;" />
                            </div>
                        </div>
                        <div style="float: right;">
                            <s:url var="viewInlandFreightItemListUrl" action="viewInlandFreightItemList">
                                <s:param name="orderIdParam"
                                         value="#attr.order.orderId"></s:param>
                                <s:param name="orderNoParam"
                                         value="#attr.order.orderNo"></s:param>
                            </s:url>
                            <s:a href="%{viewInlandFreightItemListUrl}" rel="tooltip" title="Cancel">
                                <button type="button" id="Cancel" class="btn btn-danger">
                                    Cancel
                                </button>
                            </s:a>

                            <button class="btn btn-primary dispatchSaveBtnDes" type="button">Save</button>
                        </div>
                    </s:form>
                </div>
                </sec:authorize>
                <div class="panel-footer">
                    <div class="pull-right">
                        <s:url var="viewInlandFreightItemListUrl" action="viewInlandFreightItemList">
                            <s:param name="orderIdParam"
                                     value="#attr.order.orderId"></s:param>
                            <s:param name="orderNoParam"
                                     value="#attr.order.orderNo"></s:param>
                        </s:url>
                        <s:a class="icon-action-link" href="%{viewInlandFreightItemListUrl}" rel="tooltip"
                             title="Update Vendor">

                            <s:if test="order.serviceRequirement=='FULL CONTAINER LOAD' || order.serviceRequirement=='FULL TRUCK LOAD'">
                                <button type="button" class="btn btn-danger">
                                    <i class="fa fa-chevron-left"></i> Dispatch Plan : Containers
                                </button>
                            </s:if>
                            <s:else>
                                <button type="button" class="btn btn-danger">
                                    <i class="fa fa-chevron-left"></i>  Dispatch Plan : Items
                                </button>
                            </s:else>

                        </s:a>
                    </div>
                </div>

            </div>

        </s:if>

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
                        <s:hidden name = "driver.vendorId" id="vendorIdDriver" ></s:hidden>

                    <div class="form-group">

                        <label for="driver.licenseNumber" class="col-lg-3 control-label" style="padding-top:0px;">License<span class="asterisk_red"></span></label>

                        <div class="col-lg-9">
                            <s:textfield cssClass="form-control" placeholder="AXX-XX-XXXXXX"
                                         name="driver.licenseNumber" id="driver_licenseNumber" required="true"
                                         maxLength="13" pattern=".{13,}" title="Example:L03-12-002XXX"/>
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
                                     id="truck_plateNumber" required="true" pattern=".{7,8}" title="Example: ABC-123,XYZ-7890" />
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
                                     title="Owner's Name should not contain special characters and/or numbers." maxLength="50"/>
                    </div>
                </div>
                    <%--Owner's Address = ownerAddress--%>
                <div class="form-group">
                    <label class="col-lg-4 control-label" style="padding-top:0;">Owner's Address<span class="asterisk_red"></span></label>
                    <div class="col-lg-8">
                        <s:textfield cssClass="form-control" placeholder="Owner's Address" name="truck.ownerAddress"
                                     id="truck_ownerAddress" required="true" pattern="^(\s*[a-zA-Z0-9]+(([\'\-\+\s]\s*[a-zA-Z0-9])?[a-zA-Z0-9]*)\s*)+$"
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
                                     id="truck_engineNumber" required="true"/>
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
                                     id="truck_netCapacity" required="true" maxLength="9" onkeypress="return isNumberKey(event)"
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

                    <s:form cssClass="form-horizontal" action="addVendor" method="POST" theme="bootstrap">
                    <div class="form-group">
                        <label class="col-lg-3 control-label" style="padding-top:0px;">Type<span class="asterisk_red"></span></label>

                        <div class="col-lg-9"></span>
                            <s:select list="vendorTypeList" name="vendor.vendorType" id="vendor.vendorType"
                                      listKey="key" listValue="value" cssClass="form-control" />
                            <%--<s:hidden type="hidden" cssClass="form-control" value="SHIPPING" name="vendor.vendorType"
                                      id="vendor.vendorType"/>
                            <s:textfield cssClass="form-control" value="Shipping" name="vendor_vendorType"
                                         id="vendor_vendorType" disabled="true"/>--%>
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
                            <s:select list="portsList" listKey="key" listValue="value" cssClass="form-control"
                                      id="vendor.serviceArea" name="vendor.serviceArea"/>
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

                    <label>Voyage Number<span class="asterisk_red"></span></label>

                    <s:textfield cssClass="form-control" name="vesselSchedule.voyageNumber" required="true"
                                 maxlength="10" title="Voyage Number will only accept alphanumeric input only e.g. a-z, A-Z, 0-9"
                                 pattern="[a-zA-Z0-9\-]+"/>

                    <s:hidden id="vendorIdHolder" name="vesselSchedule.vendorId" />

                    <label>Vessel<span class="asterisk_red"></span></label>

                    <s:select emptyOption="true" id="listVessel"
                              value="vesselSchedule.vesselName"
                              name="vesselSchedule.vesselName"
                              list="listVessel" listValue="value" listKey="key"
                              cssClass="form-control" required="true"/>

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

<%--MODAL FOR DATE VALIDATION START--%>
<div class="modal fade" id="dateWarningModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel" style="color: red"><i class="fa fa-warning"></i> WARNING</h4>
            </div>
            <div class="modal-body" id="dateWarningModalBody">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-primary forceSubmit" data-dismiss="modal">Yes</button>
            </div>
        </div>
    </div>
</div>
<%--MODAL FOR DATE VALIDATION END--%>

<%--MODAL FOR DATE VALIDATION DESTINATION START--%>
<div class="modal fade" id="dateWarningModalDes" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel" style="color: red"><i class="fa fa-warning"></i> WARNING</h4>
            </div>
            <div class="modal-body" id="dateWarningModalBodyDes">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">No</button>
                <button type="button" class="btn btn-primary forceSubmitDes" data-dismiss="modal">Yes</button>
            </div>
        </div>
    </div>
</div>
<%--MODAL FOR DATE VALIDATION DESTINATION END--%>

<!-- Confirm Vendor Modal -->
<div class="modal fade" id="saveDispatchPlanning" role="dialog" aria-labelledby="myModalLabel1" >
    <div class="modal-dialog modal-lg">
        <div class="modal-content">

            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel"><i class="fa fa-check"></i> Confirm Dispatch Plan Details</h4>
            </div>

            <div class="modal-body">
                <div id="inputDiv"/>
            </div>

        </div>
    </div>
</div>

<script type="text/javascript">

    $(document).ready(function(){
        /*dispatchFilterScheduleOrigin();
        dispatchFilterScheduleDestination();*/

        $('.forceSubmit').click(function(){
            /*$('.dispatchOriginForm').submit();*/
            var dispatchFinalPickup = new Date($('.dispatchFinalPickup').val()),
                originVendor = $('#vendorListOrigin').val(),
                originDriver = $('#driverList').val(),
                originTruck = $('#trucksList').val();

            finalPickupDateBulkModal(originVendor,originDriver,originTruck,dispatchFinalPickup);
            $('#saveDispatchPlanning').modal('show');
        });

        $('.forceSubmitDes').click(function(){
            /*$('.dispatchDestinationForm').submit();*/
            var dispatchFinalDelivery = new Date($('.dispatchFinalDelivery').val()),
                destinationVendor = $('#vendorListDestination').val(),
                destinationDriver = $('#driverListDestination').val(),
                destinationTruck = $('#trucksListDestination').val();

            finalDeliveryDateBulkModal(destinationVendor, destinationDriver, destinationTruck, dispatchFinalDelivery);
            $('#saveDispatchPlanning').modal('show');
        });

    });

    function isNumberKey(evt)
    {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57) || (charCode == 46 && $(this).val().indexOf('.') != -1))
            return false;

        return true;
    }

    $("#date").datepicker({dateFormat: 'yy-dd-mm'});

    // Anchor on successDiv on every schedule load
    if ($('#successDiv').length !== 0){
        window.location.href = '#anchorDiv';
    }

    $(document).ready(function(){
        dispatchFilterScheduleOrigin();
        dispatchFilterScheduleDestination();
        /*validationForm('dispatchInput', 'finalSaveBtnDes');*/
        validationForm('dispatchInput', 'dispatchSaveBtn');
        validationForm('dispatchInputDes', 'dispatchSaveBtnDes');
    });

    // User must choose a vendor first before adding vessel schedule
    $(document).ready(function(){
        $("#createSchedule").click(function() {
            var vendorId = $("#operationsBean_vendorList").val();

            if (vendorId == "" || null){
                alert("Select a vendor first");
                $("#operationsBean_vendorList").focus();
                return false;
            }

            $("#vendorIdHolder").val(vendorId);
            // To get the vessel list of the vendor
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

    function vendorOriginRetrieval() {
        $('#vendorListOrigin').change(function(event) {
            var vendorId = $("#vendorListOrigin").val();
            console.log(vendorId);
            $.getJSON('listVendorDriverAndTrucks', {
                vendorId : vendorId,
                async : false
            },

            function(jsonResponse) {

                var driver = $('#driverList');

                driver.find('option').remove();

                var truck = $('#trucksList');

                truck.find('option').remove();

                $.each(jsonResponse.driverMap, function(key, value) {
                    $('<option>').val(key).text(value).appendTo(driver);
                });

                $.each(jsonResponse.trucksMap, function(key, value) {
                    $('<option>').val(key).text(value).appendTo(truck);
                });

                var truckCode = $("#trucksList").val();

                $.getJSON('truckDetails', {
                    truckCodeParam: truckCode
                },

                function (jsonResponse) {
                    var select1 = $('#bodyType');

                    select1.find('option').remove();

                    var select2 = $('#plateNumber');

                    select2.find('option').remove();

                    var select3 = $('#grossWeight');

                    select3.find('option').remove();

                    // For Truck Type Auto-populate
                    $.each(jsonResponse.bodyTypeMap, function (key,value) {

                        $('<option>').val(key).text(value).appendTo(select1);
                        var bodyType = $("#bodyType").val();
                        document.getElementById("bodyType_textfield").value = bodyType;

                    });

                    // For Plate Number Auto-populate
                    $.each(jsonResponse.plateNumberMap, function (key,value) {

                        $('<option>').val(key).text(value).appendTo(select2);
                        var plateNumber = $("#plateNumber").val();
                        document.getElementById("plateNumber_textfield").value = plateNumber;

                    });

                    // For Gross Weight Auto-populate
                    $.each(jsonResponse.grossWeightMap, function (key,value) {

                        $('<option>').val(key).text(value).appendTo(select3);
                        var grossWeight = $("#grossWeight").val();
                        document.getElementById("grossWeight_textfield").value = grossWeight;

                    });
                });

            });
        });
    }

    function vendorDestinationRetrieval() {
        $('#vendorListDestination').change(function(event) {
            var vendorId = $("#vendorListDestination").val();

            $.getJSON('listVendorDriverAndTrucks', {
                vendorId : vendorId,
                async : false
            },

            function(jsonResponse) {

                var driver = $('#driverListDestination');

                driver.find('option').remove();

                var truck = $('#trucksListDestination');

                truck.find('option').remove();

                $.each(jsonResponse.driverMap, function(key, value) {
                    $('<option>').val(key).text(value).appendTo(driver);
                });

                $.each(jsonResponse.trucksMap, function(key, value) {
                    $('<option>').val(key).text(value).appendTo(truck);
                });

                var truckCode = $("#trucksListDestination").val();
                if(truckCode != null) {
                    $.getJSON('truckDetails', {
                        truckCodeParam: truckCode
                    },

                    function (jsonResponse) {
                        var select4 = $('#bodyTypeDestination');

                        select4.find('option').remove();

                        var select5 = $('#plateNumberDestination');

                        select5.find('option').remove();

                        var select6 = $('#grossWeightDestination');

                        select6.find('option').remove();

                        // For Truck Type Auto-populate
                        $.each(jsonResponse.bodyTypeMap, function (key, value) {

                            $('<option>').val(key).text(value).appendTo(select4);
                            var bodyType = $("#bodyTypeDestination").val();
                            document.getElementById("bodyType_Destination_textfield").value = bodyType;

                        });

                        // For Plate Number Auto-populate
                        $.each(jsonResponse.plateNumberMap, function (key, value) {

                            $('<option>').val(key).text(value).appendTo(select5);
                            var plateNumber = $("#plateNumberDestination").val();
                            document.getElementById("plateNumber_Destination_textfield").value = plateNumber;

                        });

                        // For Gross Weight Auto-populate
                        $.each(jsonResponse.grossWeightMap, function (key, value) {

                            $('<option>').val(key).text(value).appendTo(select6);
                            var grossWeight = $("#grossWeightDestination").val();
                            document.getElementById("grossWeight_Destination_textfield").value = grossWeight;

                        });
                    });
                }
                else{
                    document.getElementById("bodyType_Destination_textfield").value = '';
                    document.getElementById("plateNumber_Destination_textfield").value = '';
                    document.getElementById("grossWeight_Destination_textfield").value = '';

                }
            });
        });
    }

    $(document).ready(function() {
        $('#trucksList').change(function (event) {
            var truckCode = $("#trucksList").val();
            if (truckCode != null) {
                $.getJSON('truckDetails', {
                            truckCodeParam: truckCode
                        },

                        function (jsonResponse) {
                            var select1 = $('#bodyType');

                            select1.find('option').remove();

                            var select2 = $('#plateNumber');

                            select2.find('option').remove();

                            var select3 = $('#grossWeight');

                            select3.find('option').remove();

                            // For Truck Type Auto-populate
                            $.each(jsonResponse.bodyTypeMap, function (key, value) {

                                $('<option>').val(key).text(value).appendTo(select1);
                                var bodyType = $("#bodyType").val();
                                document.getElementById("bodyType_textfield").value = bodyType;

                            });

                            // For Plate Number Auto-populate
                            $.each(jsonResponse.plateNumberMap, function (key, value) {

                                $('<option>').val(key).text(value).appendTo(select2);
                                var plateNumber = $("#plateNumber").val();
                                document.getElementById("plateNumber_textfield").value = plateNumber;

                            });

                            // For Gross Weight Auto-populate
                            $.each(jsonResponse.grossWeightMap, function (key, value) {

                                $('<option>').val(key).text(value).appendTo(select3);
                                var grossWeight = $("#grossWeight").val();
                                document.getElementById("grossWeight_textfield").value = grossWeight;

                            });
                        });
            }
            else {
                document.getElementById("bodyType_textfield").value = '';
                document.getElementById("plateNumber_textfield").value = '';
                document.getElementById("grossWeight_textfield").value = '';
            }
        });
    });

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
        $("#createDriverOriginBtn").click(function () {
            var vendorId = $("#vendorListOrigin").val();
            setThis();
            $("#driver_licenseNumber").val('');
            $("#driver_lastName").val('');
            $("#driver_firstName").val('');
            $("#driver_middleName").val('');
            $("#driver_title").val('');

            if (vendorId == "" || null) {
                alert("Select a vendor first");
                return false;
            }
            $("#vendorIdDriver").val(vendorId);
        })
    });

    $(document).ready(function () {
        $("#createDriverOrigBtn").click(function () {
            var vendorId = $("#vendorListOrigin").val();
            setThis();
            $("#driver_licenseNumber").val('');
            $("#driver_lastName").val('');
            $("#driver_firstName").val('');
            $("#driver_middleName").val('');
            $("#driver_title").val('');

            if (vendorId == "" || null) {
                alert("Select a vendor first");
                return false;
            }
            $("#vendorIdDriver").val(vendorId);
        })
    });

    $(document).ready(function () {
        $("#createTruckOriginBtn").click(function () {
            var vendorId = $("#vendorListOrigin").val();
            setThis();
            $("#truck_plateNumber").val('');
            $("#truck_truckCode").val('');
            $("#truck_motorVehicleNumber").val('');
            $("#truck_modelNumber").val('');
            $("#truck_ownerName").val('');
            $("#truck_ownerAddress").val('');
            $("#truck_officialReceipt").val('');
            $("#truck_engineNumber").val('');
            $("#truck_modelYear").val('');
            $("#truck_grossWeight").val('');
            $("#truck_netWeight").val('');
            $("#truck_netCapacity").val('');

            if (vendorId == "" || null) {
                alert("Select a vendor first");
                return false;
            }
            $("#vendorIdTruck").val(vendorId);
        })
    });

    $(document).ready(function () {
        $("#createTruckOrigBtn").click(function () {
            var vendorId = $("#vendorListOrigin").val();
            setThis();
            $("#truck_plateNumber").val('');
            $("#truck_truckCode").val('');
            $("#truck_motorVehicleNumber").val('');
            $("#truck_modelNumber").val('');
            $("#truck_ownerName").val('');
            $("#truck_ownerAddress").val('');
            $("#truck_officialReceipt").val('');
            $("#truck_engineNumber").val('');
            $("#truck_modelYear").val('');
            $("#truck_grossWeight").val('');
            $("#truck_netWeight").val('');
            $("#truck_netCapacity").val('');

            if (vendorId == "" || null) {
                alert("Select a vendor first");
                return false;
            }
            $("#vendorIdTruck").val(vendorId);
        })
    });

    $(document).ready(function () {
        $("#createVendorButton").click(function () {
            setThis();
            $("#vendor_vendorName").val('');
            $("#vendor_vendorCode").val('');
        })
    });

    $(document).ready(function () {
        $("#createDriverDestinationBtn").click(function () {
            var vendorId = $("#vendorListDestination").val();
            setThis();
            $("#driver_licenseNumber").val('');
            $("#driver_lastName").val('');
            $("#driver_firstName").val('');
            $("#driver_middleName").val('');
            $("#driver_title").val('');

            if (vendorId == "" || null) {
                alert("Select a vendor first");
                return false;
            }
            $("#vendorIdDriver").val(vendorId);
        })
    });

    $(document).ready(function () {
        $("#createTruckDestinationBtn").click(function () {
            var vendorId = $("#vendorListDestination").val();
            setThis();
            $("#truck_plateNumber").val('');
            $("#truck_truckCode").val('');
            $("#truck_motorVehicleNumber").val('');
            $("#truck_modelNumber").val('');
            $("#truck_ownerName").val('');
            $("#truck_ownerAddress").val('');
            $("#truck_officialReceipt").val('');
            $("#truck_engineNumber").val('');
            $("#truck_modelYear").val('');
            $("#truck_grossWeight").val('');
            $("#truck_netWeight").val('');
            $("#truck_netCapacity").val('');

            if (vendorId == "" || null) {
                alert("Select a vendor first");
                return false;
            }
            $("#vendorIdTruck").val(vendorId);
        })
    });

    $(document).ready(function(){

        $("#driver_licenseNumber").mask("A99-99-9999999");
        $("#truck_modelYear").mask("9999");
        $("#truck_grossWeight").mask("999999999");
        $("#truck_netWeight").mask("999999999");
        $("#truck_netCapacity").mask("999999999");
        $("#truck_plateNumber").mask("AAA-9999");

    });
    $("#truck_plateNumber").keyup(function(){
        this.value=this.value.toUpperCase();
    });

    $(document).ready(function(){

        $("#truck_motorVehicleNumber").mask("9999-99999999999");
        $("#truck_plateNumber").mask("AAA-999");
//        $("#shipping_fax").mask("(999) 999-9999");

    });

    var issueDate = $('#issueDate');

    issueDate.datepicker({

        dateFormat: 'mm/dd/yy',
        startDate: 2

    });

    //    Read the value in cache
    function getThis() {
        $("#vendorListOrigin").val(localStorage.getItem("vendorListOriginField"));
        $("#vendorListDestination").val(localStorage.getItem("vendorListDestinationField"));
        $("#driverList").val(localStorage.getItem("driverListField"));
        $("#trucksList").val(localStorage.getItem("trucksListField"));
        $("#dropoff").val(localStorage.getItem("dropoffField"));
    }

    //    Set the value in cache
    function setThis() {
        localStorage.setItem("vendorListOriginField", $("#vendorListOrigin").val());
        localStorage.setItem("vendorListDestinationField", $("#vendorListDestination").val());
        localStorage.setItem("driverListField", $("#driverList").val());
        localStorage.setItem("trucksListField", $("#trucksList").val());
        localStorage.setItem("dropoffField", $("#dropoff").val());
    }

    $(document).ready(function () {
        $(window).load(function() {
            vendorOriginRetrieval();
            vendorDestinationRetrieval();
            getThis();
            localStorage.clear();
        });
    });
</script>
