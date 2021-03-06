<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@taglib uri="http://displaytag.sf.net" prefix="display" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<div class="row">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
                <h1><i class="fa fa-info-circle"></i> View Information : <s:property value="%{order.orderNumber}" /> </h1>
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
            <li class="active"> View Planning Information</li>
        </ol>

    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">

            <div class="panel-heading bookingDivHead" onclick="$('.bookingDivBody').slideToggle('fast')">
                <i class="fa fa-book"></i>
                <span class="panel-title">Booking Information</span>
            </div>
            <div class="panel-body form-horizontal bookingDivBody" style="display: none;">
                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Booking
                        Number</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.orderNumber}" name="book-num"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Freight Type</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.freightType}" name="book-num"
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
                        <s:textfield cssClass="form-control" value="%{order.modeOfService}" name="book-num"
                                     disabled="true"></s:textfield>
                    </div>

                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Customer
                        </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.customerName}" name="book-num"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Consignee
                        </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.consigneeName}" name="book-num"
                                     disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Origin Port</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.originationPort}" name="book-num"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Destination Port</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.destinationPort}" name="book-num"
                                     disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Pickup Date</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.pickupDate}"
                                     disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Delivery Date</label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{order.deliveryDate}"
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
                <span class="pull-right">

                <%--<s:textfield cssClass="form-control" value="%{orderItem.vendorSea}" />--%>

                <s:if test="#attr.orderItem.vendorSea != 'NONE'">
                    <sec:authorize access="hasAnyRole('ROLE_ADMIN', 'ROLE_SEA_FREIGHT')">
                    <s:url var="viewFreightPlanningUrl" action="viewEditSeaFreight">
                        <s:param name="orderItemIdParam"
                                 value="#attr.orderItem.orderItemId">
                        </s:param>
                        <s:param name="nameSizeParam"
                                 value="#attr.orderItem.nameSizeParam">
                        </s:param>
                    </s:url>
                    <s:a cssClass="btn btn-success new-booking" href="%{viewFreightPlanningUrl}" rel="tooltip"
                         title="Update Status">
                        <i class="fa fa-edit"></i> Edit
                    </s:a>
                    </sec:authorize>
                </s:if>

                </span>
            </div>
            <div class="panel-body form-horizontal">
                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Vendor</label>
                    <div class="col-lg-10">
                        <s:textfield cssClass="form-control" value="%{orderItem.vendorName}" name="book-num" disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Voyage Number </label>
                    <div class="col-lg-10">
                        <s:textfield cssClass="form-control" value="%{orderItem.vesselScheduleId}" name="book-num" disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Vessel Name </label>
                    <div class="col-lg-10">
                        <s:textfield cssClass="form-control" value="%{vesselSchedule.vesselName}" name="book-num" disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Departure Date </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{vesselSchedule.departureDate}" name="book-num" disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Arrival Date <Port></Port> </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{vesselSchedule.arrivalDate}" name="book-num" disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Departure Time </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{vesselSchedule.departureTime}" name="book-num" disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Arrival Time <Port></Port> </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{vesselSchedule.arrivalTime}" name="book-num" disabled="true"></s:textfield>
                    </div>
                </div>

                <div class="form-group">
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Origin Port </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{vesselSchedule.originPort}" name="book-num" disabled="true"></s:textfield>
                    </div>
                    <label for="book-num" class="col-lg-2 control-label" style="padding-top:0px;">Destination <Port></Port> </label>
                    <div class="col-lg-4">
                        <s:textfield cssClass="form-control" value="%{vesselSchedule.destinationPort}" name="book-num" disabled="true"></s:textfield>
                    </div>
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

</div>