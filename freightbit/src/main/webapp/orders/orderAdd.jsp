<%--<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags" %>
<%--<%@ taglib prefix="sx" uri="/struts-dojo-tags" %>
<sj:head compressed='true' jquerytheme="ui-darkness"/>
<sx:head debug="true" extraLocales="en-us,nl-nl,de-de"/>--%>


<%--
<div class="row">
    <div class="col-lg-12">
        <h1>Booking Module </h1>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='home' />"> <i class="fa fa-dashboard"></i> Dashboard </a></li>
            <li class="active"><a href="<s:url action='viewOrders' />"> <i class="fa fa-list"></i> Booking List </a>
            </li>
            <li class="active"><i class="fa fa-book"></i> New Booking</li>
        </ol>

    </div>
</div>
<div class="row">
<div class="col-lg-12">
<div class="panel panel-primary">
<div class="panel-heading">
    <img src="includes/images/add-user.png" class="box-icon">
    <span class="panel-title">Booking Information</span>
</div>
<div class="panel-body">
<div class="table-responsive">
<div class="form-group">
    <label class="col-sm-2 control-label"
           for="orderBean.orderNumber">Booking Number:</label>

    <div class="col-sm-9" style="margin-left:4%">
        <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                     name="orderBean.orderNumber" disabled="true"/>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label" for="orderBean.modeOfService">Service Mode:</label>

    <div class="col-sm-9" style="margin-left:4%">
        <s:select id="mode" cssClass="form-control" style="margin-bottom: 15px !important;"
                  onchange="typeValidate()"
                  name="orderBean.modeOfService" list="modeOfServiceList" listKey="key"
                  listValue="value" value="orderBean.modeOfService" emptyOption="true"/>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label" for="orderBean.serviceRequirement">Service Requirement:</label>

    <div class="col-sm-9" style="margin-left:4%">
        <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                  name="orderBean.serviceRequirement" list="serviceRequirementList" id="serviceReq"
                  onchange="serviceValidate()"
                  listKey="key"
                  listValue="value" emptyOption="true"/>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label" for="orderBean.freightType">Freight Type:</label>

    <div class="col-sm-9" style="margin-left:4%">
        <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                  name="orderBean.freightType" list="freightTypeList" listKey="key"
                  listValue="value" emptyOption="true"/>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label" for="orderBean.modeOfPayment">Payment Mode:</label>

    <div class="col-sm-9" style="margin-left:4%">
        <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                  name="orderBean.modeOfPayment" list="modeOfPaymentList" listKey="key"
                  listValue="value" emptyOption="true"/>
    </div>
</div>


<ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="#details" role="tab" data-toggle="tab" onclick="hideForm()">Details</a></li>
    <li><a href="#shipper" role="tab" data-toggle="tab" onclick="hideForm()">Shipper</a></li>
    <li><a href="#consignee" role="tab" data-toggle="tab" onclick="hideForm()">Consignee</a></li>
    <li><a href="#item" role="tab" data-toggle="tab" id="item-menu" onclick="lcl()">Items</a></li>
	<li><a href="#cargo" role="tab" data-toggle="tab" id="cargo-menu" onclick="fcl()">Cargo</a></li>
</ul>

<div class="tab-content">
<div class="tab-pane fade in active" id="details">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.origin">Origin Port:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderBean.origin"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label"
               for="orderBean.destination">Destination Port:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderBean.destination"/>
        </div>
    </div>
    <div class="form-group">

            &lt;%&ndash;<label class="col-lg-2 control-label"
                   for="orderBean.pickupDate" style="margin-top: 5px;">Pickup Date:</label>
            <div class="col-lg-3" >
                <input type="text" class="from_date form-control" id="datepicker1" name="orderBean.pickupDate" placeholder="Select start date" contenteditable="false" style="margin-bottom: 15px !important;">

            </div>

            <label class="col-lg-2 control-label"
                   for="orderBean.deliveryDate" style="margin-top: 5px;">Delivery Date:</label>
            <div class="col-lg-4" >
                <input type="text" class="to_date form-control" id="datepicker2" name="orderBean.deliveryDate" placeholder="Select end date" contenteditable="false" style="margin-bottom: 15px !important;">
            </div>&ndash;%&gt;

    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label"
               for="orderBean.rates">Notification Type:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.notifyBy" list="notifyByList" listKey="key"
                      listValue="value"
                      value="orderBean.notifyBy" emptyOption="true"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label"
               for="orderBean.comments">Comments :</label>

        <div class="col-sm-9" style="margin-left:4%;">
            <s:textarea cssClass="form-control"
                         name="orderBean.comments" cssStyle="resize: none;"></s:textarea>
        </div>
    </div>
</div>
<div class="tab-pane fade" id="shipper">

    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.companyName">Company Name:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.companyName" list="customerList" listKey="customerId"
                      listValue="customerName" emptyOption="true"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.contactPerson">Contact Person:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.contactPerson" list="customerList" listKey="customerId"
                      listValue="customerName" emptyOption="true"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.pickupAddress">Pickup Address:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:select id="pickupaddress" cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.pickupAddress" list="customerList" listKey="customerId"
                      listValue="customerName" emptyOption="true"/>
        </div>
    </div>
</div>


<div class="tab-pane fade" id="consignee">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.consigneeName">Consignee Name:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.consigneeName" list="customerList" listKey="customerId"
                      listValue="customerName" emptyOption="true"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.consigneeContactPerson">Contact Person:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.consigneeContactPerson" list="customerList" listKey="customerId"
                      listValue="customerName" emptyOption="true"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.deliveryAddress">Delivery Address:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:select id="deliveryaddress" cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.deliveryAddress" list="customerList" listKey="customerId"
                      listValue="customerName" emptyOption="true"/>
        </div>
    </div>

</div>

<!-- Container -->

<div class="tab-pane fade" id="item">
    <s:form cssClass="form-horizontal" action="addItemsInTable" theme="bootstrap">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.quantity">Item Quantity:</label>

        <div class="col-sm-9" style="margin-left:4%">
            &lt;%&ndash;<s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.quantity" list="customerList" listKey="customerId"
                      listValue="customerName" emptyOption="true"/>&ndash;%&gt;
                <s:select list="itemQuantity" name="orderItem.quantity" cssClass="form-control" style="margin-bottom: 15px !important;"/>

        </div>


    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.size">Item Name:</label>

        <div class="col-sm-9" style="margin-left:4%">
            &lt;%&ndash;<s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderBean.size"/>&ndash;%&gt;
                <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                          name="orderItem.nameSize" id="orderItem.nameSize" list="customerItemsList" listKey="customerItemsId"
                          listValue="itemName" emptyOption="true"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.estimatedWeight">Estimated Weight:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderItem.weight" id="orderItem.weight" />
                &lt;%&ndash;<div class="form-group input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-addon">kg.</span>
                </div>&ndash;%&gt;
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.declaredValue">Declared Value:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderItem.declaredValue" id="orderItem.declaredValue" />
                &lt;%&ndash;<div class="form-group input-group">
                    <span class="input-group-addon">&#8369</span>
                    <input type="text" class="form-control" >
                </div>&ndash;%&gt;
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.classification">Classification:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderItem.classification" id="orderItem.classification" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.rate">Rate:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderItem.rate" id="orderItem.rate"/>
                &lt;%&ndash;<div class="form-group input-group">
                    <span class="input-group-addon">&#8369</span>
                    <input type="text" class="form-control">
                </div>&ndash;%&gt;
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.deliveryAddress">Commodity Description:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderItem.description" id="orderItem.description"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.deliveryAddress">Remarks:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textarea cssClass="form-control" style="margin-bottom: 15px !important; resize:none;"
                         name="orderItem.remarks" id="orderItem.remarks"/>
        </div>
    </div>
    <div class="col-lg-2 col-lg-offset-10" style="margin-bottom: 20px;">
        <s:submit cssClass="btn btn-info pull-right" name="submit" value="Add"/>
    </div>
    </s:form>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">

                <div class="panel-heading">
                    <h3 class="panel-title">Item List</h3>
                </div>

                <div class="panel-body">
                    <div class="table-responsive list-table">
                        <table class="table table-striped table-hover table-bordered text-center tablesorter">

                            <thead>
                                <tr class="header_center">

                                    <th class="tb-font-black" style="text-align: center;">Item Quantity <i
                                            class="fa fa-sort"></i>
                                    </th>
                                    <th class="tb-font-black" style="text-align: center;">Item Name <i class="fa fa-sort"></i>
                                    </th>
                                    <th class="tb-font-black" style="text-align: center;">Class <i class="fa fa-sort"></i>
                                    </th>
                                    <th class="tb-font-black" style="text-align: center;">Weight <i class="fa fa-sort"></i>
                                    </th>
                                    <th class="tb-font-black" style="text-align: center;">Value <i class="fa fa-sort"></i>
                                    </th>
                                    <th class="tb-font-black" style="text-align: center;">Description <i
                                            class="fa fa-sort"></i>
                                    </th>
                                    <th class="tb-font-black" style="text-align: center;">Remarks <i class="fa fa-sort"></i>
                                    </th>
                                    <th class="tb-font-black" style="text-align: center;">Rate <i class="fa fa-sort"></i>
                                    </th>
                                    <th class="tb-font-black" style="text-align: center;">Action</th>
                                </tr>
                            </thead>

                            <tbody>

                            <s:iterator value="orderItems" var="orderItem">

                                <tr>
                                    <td class="tb-font-black"><s:property value="quantity"/></td>
                                    <td class="tb-font-black"><s:property value="nameSize"/></td>
                                    <td class="tb-font-black"><s:property value="classification"/></td>
                                    <td class="tb-font-black"><s:property value="weight"/></td>
                                    <td class="tb-font-black"><s:property value="declaredValue"/></td>
                                    <td class="tb-font-black"><s:property value="description"/></td>
                                    <td class="tb-font-black"><s:property value="remarks"/></td>
                                    <td class="tb-font-black"><s:property value="rate"/></td>

                                    <td class="tb-font-black">

                                        <a href="#"><i class="fa fa-times-circle"></i></a>

                                    </td>
                                </tr>

                            </s:iterator>

                            </tbody>



                        </table>
                    </div>
                </div>

                <div class="panel-footer">

                                <span class="col-lg-offset-9">
										<b>Total Rate :</b>
                                </span>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- Cargo -->

<div class="tab-pane fade" id="cargo">
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.quantity">Quantity:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.quantity" list="customerList" listKey="customerId"
                      listValue="customerName" emptyOption="true"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.size">Size:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderBean.size"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.estimatedWeight">Estimated Weight:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderBean.estimatedWeight"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.declaredValue">Declared Value:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderBean.declaredValue"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.classification">Classification:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:select cssClass="form-control" style="margin-bottom: 15px !important;"
                      name="orderBean.classification" list="customerList" listKey="customerId"
                      listValue="customerName" emptyOption="true"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.rate">Rate:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderBean.rate"/>
        </div>
    </div>

    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.deliveryAddress">Commodity Description:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                         name="orderBean.orderNumber"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" for="orderBean.deliveryAddress">Remarks:</label>

        <div class="col-sm-9" style="margin-left:4%">
            <s:textarea cssClass="form-control" style="margin-bottom: 15px !important; resize:none;"
                         name="orderBean.orderNumber"/>
        </div>
    </div>
    <div class="col-lg-2 col-lg-offset-10">
        <s:submit cssClass="btn btn-info pull-right" name="submit" value="Add"/>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Cargo List</h3>
                </div>
                <div class="panel-body">
                    <div class="table-responsive list-table">
                        <table class="table table-striped table-hover table-bordered text-center tablesorter">
                            <thead>
                            <tr class="header_center">
                                &lt;%&ndash;<th class="tb-font-black"><input type="checkbox"/></th>&ndash;%&gt;
                                <th class="tb-font-black" style="text-align: center;">Quantity <i
                                        class="fa fa-sort"></i>
                                </th>
                                <th class="tb-font-black" style="text-align: center;">Size <i class="fa fa-sort"></i>
                                </th>
                                <th class="tb-font-black" style="text-align: center;">Class <i class="fa fa-sort"></i>
                                </th>
                                <th class="tb-font-black" style="text-align: center;">Weight <i class="fa fa-sort"></i>
                                </th>
                                <th class="tb-font-black" style="text-align: center;">Value <i class="fa fa-sort"></i>
                                </th>
                                <th class="tb-font-black" style="text-align: center;">Description <i
                                        class="fa fa-sort"></i>
                                </th>
                                <th class="tb-font-black" style="text-align: center;">Remarks <i class="fa fa-sort"></i>
                                </th>
                                <th class="tb-font-black" style="text-align: center;">Rate <i class="fa fa-sort"></i>
                                </th>
                                <th class="tb-font-black" style="text-align: center;">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr class="success">
                                <td class="tb-font-black">2</td>
                                <td class="tb-font-black">50</td>
                                <td class="tb-font-black">Premium</td>
                                <td class="tb-font-black">150</td>
                                <td class="tb-font-black">2,000</td>
                                <td class="tb-font-black">Door to Door</td>
                                <td class="tb-font-black">Approved</td>
                                <td class="tb-font-black">5,000</td>

                                <td class="tb-font-black">

                                    <a href="#"><i class="fa fa-times-circle"></i></a>

                                </td>

                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="panel-footer">

                                <span class="col-lg-offset-9">
										<b>Total Rate :</b>
                                </span>
                </div>
            </div>
        </div>
    </div>
</div>

</div>
</div>
</div>
<div class="panel-footer">
    <div class="btn-group pull-right">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-info">Save</button>
    </div>
</div>
</div>
</div>
</div>

--%>


<%---------------------------------------------------------------------------------------------------------------------%>


<div class="row">
<div class="col-lg-12">
<div class="panel panel-primary">
<div class="panel-heading">
    <img src="includes/images/add-user.png" class="box-icon">
    <span class="panel-title">Booking Information</span>
</div>
<div class="panel-body">

<div class="container">
    <div class="row form-group">
        <div class="col-xs-12">
            <ul class="nav nav-pills nav-justified thumbnail setup-panel">
                <li class="active"><a href="#step-1">
                    <h4 class="list-group-item-heading">Step 1</h4>
                    <p class="list-group-item-text">First step description</p>
                </a></li>
                <li class="disabled"><a href="#step-2">
                    <h4 class="list-group-item-heading">Step 2</h4>
                    <p class="list-group-item-text">Second step description</p>
                </a></li>
                <li class="disabled"><a href="#step-3">
                    <h4 class="list-group-item-heading">Step 3</h4>
                    <p class="list-group-item-text">Third step description</p>
                </a></li>
            </ul>
        </div>
    </div>
    <div class="row setup-content" id="step-1">
        <div class="col-xs-12">
            <div class="col-md-12 well text-center">
                <h1> STEP 1</h1>


                <div id="form1" class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.serviceRequirement">Service Requirement:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select cssClass="form-control step1" style="margin-bottom: 15px !important;"
                                  name="orderBean.serviceRequirement" list="serviceRequirementList" id="serviceReq"
                                  onchange="serviceValidate()"
                                  listKey="key"
                                  listValue="value" emptyOption="true" />
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.modeOfService">Service Mode:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select id="mode" cssClass="form-control step1" style="margin-bottom: 15px !important;"
                                  onchange="typeValidate()"
                                  name="orderBean.modeOfService" list="modeOfServiceList" listKey="key"
                                  listValue="value" value="orderBean.modeOfService" emptyOption="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.freightType">Freight Type:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select cssClass="form-control step1" style="margin-bottom: 15px !important;"
                                  name="orderBean.freightType" list="freightTypeList" listKey="key"
                                  listValue="value" emptyOption="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.modeOfPayment">Payment Mode:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select cssClass="form-control step1" style="margin-bottom: 15px !important;"
                                  name="orderBean.modeOfPayment" list="modeOfPaymentList" listKey="key"
                                  listValue="value" emptyOption="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.companyName">Shipper Name:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select cssClass="form-control step1" style="margin-bottom: 15px !important;"
                                  name="orderBean.companyName" list="customerList" listKey="customerId"
                                  listValue="customerName" emptyOption="true"/>
                    </div>
                </div>

                <button id="activate-step-2" class="btn btn-primary btn-lg">Activate Step 2</button>

            </div>
        </div>
    </div>

    <div class="row setup-content" id="step-2">
        <div class="col-xs-12">
            <div class="col-md-12 well">
                <h1 class="text-center"> STEP 2</h1>

                <div class="form-group">
                    <label class="col-sm-2 control-label"
                           for="orderBean.orderNumber">Booking Number:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:textfield cssClass="form-control" style="margin-bottom: 15px !important;"
                                     name="orderBean.orderNumber" disabled="true"/>
                    </div>
                </div>

                <div class="form-group">

                    <label class="col-lg-2 col-lg-offset-1 control-label"
                           for="orderBean.pickupDate" style="margin-top: 5px;">Pickup Date/Time:</label>
                    <div class="col-lg-3" >
                        <input type="text" class="from_date form-control step2" id="datepicker1" name="orderBean.pickupDate" placeholder="Select start date" contenteditable="false" style="margin-bottom: 15px !important;">

                    </div>

                    <label class="col-lg-2 control-label"
                           for="orderBean.deliveryDate" style="margin-top: 5px;">Delivery Date/Time:</label>
                    <div class="col-lg-3" >
                        <input type="text" class="to_date form-control step2" id="datepicker2" name="orderBean.deliveryDate" placeholder="Select end date" contenteditable="false" style="margin-bottom: 15px !important;">
                    </div>

                </div>

                <div class="form-group">

                    <label class="col-lg-2 col-lg-offset-1 control-label"
                           for="orderBean.pickupDate" style="margin-top: 5px;">Port of Origin:</label>
                    <div class="col-lg-3" >

                        <s:textfield cssClass="form-control step2" style="margin-bottom: 15px !important;"
                                     name="orderBean.origin" />

                    </div>

                    <label class="col-lg-2 control-label"
                           for="orderBean.deliveryDate" style="margin-top: 5px;">Port of Destination:</label>
                    <div class="col-lg-3" >

                        <s:textfield cssClass="form-control step2" style="margin-bottom: 15px !important;"
                                     name="orderBean.destination" />

                    </div>

                </div>


                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.companyName">Shipper Name:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:textfield cssClass="form-control step2" style="margin-bottom: 15px !important;"
                                  name="orderBean.companyName" list="customerList" listKey="customerId"
                                  listValue="customerName" emptyOption="true" disabled="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.contactPerson">Contact Person:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select cssClass="form-control step2" style="margin-bottom: 15px !important;"
                                  name="orderBean.contactPerson" list="customerList" listKey="customerId"
                                  listValue="customerName" emptyOption="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.pickupAddress">Pickup Address:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select id="pickupaddress" cssClass="form-control step2" style="margin-bottom: 15px !important;"
                                  name="orderBean.pickupAddress" list="customerList" listKey="customerId"
                                  listValue="customerName" emptyOption="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label"
                           for="orderBean.rates">Notification Type:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select cssClass="form-control step2" style="margin-bottom: 15px !important;"
                                  name="orderBean.notifyBy" list="notifyByList" listKey="key"
                                  listValue="value"
                                  value="orderBean.notifyBy" emptyOption="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.consigneeName">Consignee Name:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select cssClass="form-control step2" style="margin-bottom: 15px !important;"
                                  name="orderBean.consigneeName" list="customerList" listKey="customerId"
                                  listValue="customerName" emptyOption="true"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.consigneeContactPerson">Contact Person:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select cssClass="form-control step2" style="margin-bottom: 15px !important;"
                                  name="orderBean.consigneeContactPerson" list="customerList" listKey="customerId"
                                  listValue="customerName" emptyOption="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="orderBean.deliveryAddress">Delivery Address:</label>

                    <div class="col-sm-9" style="margin-left:4%">
                        <s:select id="deliveryaddress" cssClass="form-control step2" style="margin-bottom: 15px !important;"
                                  name="orderBean.deliveryAddress" list="customerList" listKey="customerId"
                                  listValue="customerName" emptyOption="true"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label"
                           for="orderBean.comments">Comments :</label>

                    <div class="col-sm-9" style="margin-left:4%;">
                        <s:textarea cssClass="form-control step2"
                                    name="orderBean.comments" cssStyle="resize: none;"></s:textarea>
                    </div>
                </div>

                <button id="activate-step-3" class="btn btn-primary btn-lg">Activate Step 3</button>

            </div>
        </div>
    </div>

    <div class="row setup-content" id="step-3">
        <div class="col-xs-12">
            <div class="col-md-12 well">
                <h1 class="text-center"> STEP 3</h1>


                            <div class="table-responsive list-table">
                            <table class="table table-striped table-hover table-bordered text-center tablesorter" id="tab_logic">
                                <thead>
                                <tr >
                                    <th class="text-center">
                                        #
                                    </th>
                                    <th class="text-center">
                                        Quantity
                                    </th>
                                    <th class="text-center">
                                        Name
                                    </th>
                                    <th class="text-center">
                                        Weight
                                    </th>
                                    <th class="text-center">
                                        Value
                                    </th>
                                    <th class="text-center">
                                        Class
                                    </th>
                                    <th class="text-center">
                                       Rate
                                    </th>
                                    <th class="text-center">
                                        Description
                                    </th>
                                    <th class="text-center">
                                        Remarks
                                    </th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr id='item0'>
                                    <td>
                                        1
                                    </td>
                                    <td>
                                        <input type="text" name='quantity0'  placeholder='Quantity' class="form-control"/>
                                    </td>
                                    <td>
                                        <input type="text" name=name0' placeholder='Name' class="form-control"/>
                                    </td>
                                    <td>
                                        <input type="text" name='weight0' placeholder='Weight' class="form-control"/>
                                    </td>
                                    <td>
                                        <input type="text" name='value0'  placeholder='Value' class="form-control"/>
                                    </td>
                                    <td>
                                        <input type="text" name='class0' placeholder='Classification' class="form-control"/>
                                    </td>
                                    <td>
                                        <input type="text" name='rate0' placeholder='Rate' class="form-control"/>
                                    </td>
                                    <td>
                                        <input type="text" name='description0'  placeholder='Description' class="form-control"/>
                                    </td>
                                    <td>
                                        <input type="text" name='remarks0' placeholder='Remarks' class="form-control"/>
                                    </td>

                                </tr>
                                <tr id='item1'></tr>
                                </tbody>
                            </table>
                            </div>

                    <a id="add_row" class="btn btn-default pull-left">Add Row</a><a id='delete_row' class="pull-right btn btn-default">Delete Row</a>


            </div>
        </div>
    </div>

</div>

</div>
</div>
</div>
</div>

<script type="text/javascript">

$(document).ready(function() {

var navListItems = $('ul.setup-panel li a'),
allWells = $('.setup-content');

allWells.hide();

navListItems.click(function(e)

{
    e.preventDefault();
    var $target = $($(this).attr('href')),
    $item = $(this).closest('li');

    if (!$item.hasClass('disabled')) {
    navListItems.closest('li').removeClass('active');
    $item.addClass('active');
    allWells.hide();
    $target.show();
}

});

$('ul.setup-panel li.active a').trigger('click');

// DEMO ONLY //
$('#activate-step-2').on('click', function(e) {
    $('ul.setup-panel li:eq(1)').removeClass('disabled');
    $('.step1').attr('disabled', 'disabled');
    $('ul.setup-panel li a[href="#step-2"]').trigger('click');
    $(this).remove();


})

$('#activate-step-3').on('click', function(e) {
    $('ul.setup-panel li:eq(2)').removeClass('disabled');
    $('.step2').attr('disabled', 'disabled');
    $('ul.setup-panel li a[href="#step-3"]').trigger('click');
    $(this).remove();
})




    var i=1;
    $("#add_row").click(function(){
        $('#item'+i).html("<td>"+ (i+1) +"</td>" +
                "<td><input name='quantity"+i+"' type='text' placeholder='Quantity' class='form-control input-md'  /> </td>" +
                "<td><input  name='name"+i+"' type='text' placeholder='Name'  class='form-control input-md'></td>" +
                "<td><input  name='weight"+i+"' type='text' placeholder='Weight'  class='form-control input-md'></td>" +
                "<td><input  name='value"+i+"' type='text' placeholder='Value'  class='form-control input-md'></td>" +
                "<td><input  name='class"+i+"' type='text' placeholder='Classification'  class='form-control input-md'></td>" +
                "<td><input  name='rate"+i+"' type='text' placeholder='Rate'  class='form-control input-md'></td>" +
                "<td><input  name='description"+i+"' type='text' placeholder='Description'  class='form-control input-md'></td>" +
                "<td><input  name='remarks"+i+"' type='text' placeholder='Remarks'  class='form-control input-md'></td>");

        $('#tab_logic').append('<tr id="item'+(i+1)+'"></tr>');
        i++;
    });
    $("#delete_row").click(function(){
        if(i>1){
            $("#item"+(i-1)).html('');
            i--;
        }
    });




});

</script>




<%----------------------------------------------------------------------------------------------------------------------%>





<script type="text/javascript">

    var fromDatePickUp = $('#datepicker1');
    var toDateDelivery = $('#datepicker2');

    //pick up date validation
    fromDatePickUp.datetimepicker({

        // on 5:00pm
        timeFormat: 'HH:mm',
        onClose: function(dateText, inst) {

            if (toDateDelivery.val() != '') {
                var testStartDate = fromDatePickUp.datetimepicker('getDate');
                var testEndDate = toDateDelivery.datetimepicker('getDate');

                if (testStartDate > testEndDate)
                    toDateDelivery.datetimepicker('setDate', testStartDate);

            }

            else {
                toDateDelivery.val(dateText);
            }
        },

        onSelect: function (selectedDateTime){
            toDateDelivery.datetimepicker('option', 'minDate', fromDatePickUp.datetimepicker('getDate') );
        }

    });

    // delivery date validation -jp
    toDateDelivery.datetimepicker({

        // on 6:00pm
        timeFormat: 'HH:mm',
        onClose: function(dateText, inst) {

            if (fromDatePickUp.val() != '') {
                var testStartDate = fromDatePickUp.datetimepicker('getDate');
                var testEndDate = toDateDelivery.datetimepicker('getDate');

                if (testStartDate > testEndDate)
                    fromDatePickUp.datetimepicker('setDate', testEndDate);

            }

            else {
                fromDatePickUp.val(dateText);
            }
        },

        onSelect: function (selectedDateTime){
            fromDatePickUp.datetimepicker('option', 'maxDate', toDateDelivery.datetimepicker('getDate') );
        }

    });


</script>