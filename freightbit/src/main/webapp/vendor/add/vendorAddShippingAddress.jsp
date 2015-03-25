<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sb" uri="/struts-bootstrap-tags" %>

<div class="row">
    <div class="col-lg-12">
        <legend style="text-align: left;">
            <span >
               <h1><i class="fa fa-building"></i> Vendor Module </h1>
            </span>
        </legend>
        <ol class="breadcrumb">
            <li class="active"><a href="<s:url action='../home' />"> Dashboard </a></li>
            <li class="active"> Vendor</li>
            <li class="active"><a href="<s:url action='viewVendors' />"> Vendor List</a></li>
            <li class="active"><a href="<s:url action='viewInfoVendor' />"> Vendor
                Profile</a></li>
            <li class="active"> Address</li>
            <li class="active"> Add Address</li>
        </ol>

    </div>
</div>

<div class="row">
    <div class="col-lg-12">
        <div class="panel panel-primary">

            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-plus"></i> Add Address</h3>
            </div>

            <div class="panel-body">
                <div class="table-responsive list-table">
                    <s:form action="addShippingAddress" cssClass="form-horizontal" theme="bootstrap">
                        <div class="form-group">

                            <label class="col-lg-2 control-label" style="padding-top:0px;">Address
                                Type<span class="asterisk_red"></span></label>

                            <div class="col-lg-10">
                                <s:select name="address.addressType" list="addressTypeList" listValue="value"
                                          listKey="key" cssClass="form-control" id="address.addressType"
                                          emptyOption="true"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Address Line 1<span class="asterisk_red"></span></label>

                            <div class="col-lg-10">
                                <s:textfield name="address.addressLine1" id="address.addressLine1"
                                             cssClass="form-control" required="true" maxlength="100"
                                             pattern="^(\s*[\#a-zA-Z0-9\.\,]+(([\'\-\+\s]\s*[a-zA-Z0-9])?[a-zA-Z0-9\.\,\#]*)\s*)+$"
                                             title="Address Line 1 will only accept alphanumeric and will only allow # , and . as special characters."/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Address Line 2</label>

                            <div class="col-lg-10">
                                <s:textfield name="address.addressLine2" id="address.addressLine2"
                                             cssClass="form-control" maxlength="100"
                                             pattern="^(\s*[\#a-zA-Z0-9\.\,]+(([\'\-\+\s]\s*[a-zA-Z0-9])?[a-zA-Z0-9\.\,\#]*)\s*)+$"
                                             title="Address Line 2 will only accept alphanumeric and will only allow # , and . as special characters."/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">City<span class="asterisk_red"></span></label>

                            <div class="col-lg-10">
                                <s:textfield name="address.city" id="address.city" cssClass="form-control" required="true" maxlength="50"
                                             pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$" title="City should not contain special characters."/>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Region</label>

                            <div class="col-lg-10">
                                <s:textfield name="address.state" id="address.state" cssClass="form-control" maxlength="30"
                                             pattern="^(\s*[a-zA-Z]+(([\'\-\+\s]\s*[a-zA-Z])?[a-zA-Z]*)\s*)+$" title="Region should not contain special characters."/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label" style="padding-top:0px;">Zip Code<span class="asterisk_red"></span></label>

                            <div class="col-lg-10">
                                <s:textfield name="address.zip" id="address.zip" cssClass="form-control" pattern="^[0-9]{4,}$" maxlength="4" required="true" title="Zip Code is required. Must be 4 digits only"/>
                            </div>
                        </div>
                        <s:property value="%{vendorIdParam}"/>
                        <s:hidden name="vendorIdParam" id="vendorIdParam" value="%{vendorIdParam}"/>
                        <%--<div class=" pull-right">
                            <s:submit cssClass="btn btn-info" name="submit" value="Save"/>
                        </div>
                    </s:form>--%>
                </div>

            </div>

            <div class="panel-footer">
                <div class="pull-right">
                    <a href="viewShippingAddress" class="btn btn-default" id ="groups-btn">Cancel</a>

                    <s:submit cssClass="btn btn-primary" name="submit" value="Save"/>
                </div>
            </div>
            </s:form>

        </div>
    </div>

    <%--<div class="col-lg-2 col-lg-offset-2">
        <div class="panel panel-primary">
            <ul class="nav nav-pills nav-stacked">
                <li><a href="viewInfoVendor"><i class="fa fa-info-circle fa-fw"></i> Profile</a></li>
                <li class="active"><a href="viewShippingAddress"><i class="fa fa-home fa-fw"></i> Address</a></li>
                <li><a href="viewVendorShippingContacts"><i class="fa fa-group fa-fw"></i> Contact Persons</a></li>
                <li><a href="viewVessels"><i class="fa fa-anchor fa-fw"></i> Vessels</a></li>
            </ul>
        </div>
    </div>--%>

</div>